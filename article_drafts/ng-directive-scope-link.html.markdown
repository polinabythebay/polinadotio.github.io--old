---
title: Designing better Angular directives
date: 2016-05-28
tags:
---

There is a common pitfall when designing directives.

Consider the following directive definition:


```javascript

/* @ngInject */

function profileInfo($http) {
  return {
    scope: {
      profileId: "="
    },
    template: require('./profile-info.html'),
    link: function(scope, element) {
    
      $http.get("/api/profiles/" + scope.profileId)
      .then(function(response) {
        scope.profile = response.data.response;
      });
      
    }
  };
}
```

and its accompanying template:

```text

<div class="profileInfo">
  <profile-name title="profile.name">
  </profile-name>
  <profile-description description="profile.description">
  </profile-description>
</div>
```

There are two of problems with this approach. 

### Problem #1

The most obvious issue is the use of profile.title and profile.description 
in the template. `scope.profile` is not available until the $http.get 
request in the link function finishes. 
The template may (and probably will) render before the request finishes, 
which will cause .title and .description to be called on an undefined value.

Note that the following solution does not work:

```

<div class="profileInfo">
  <profile-title
    ng-if=”profile”
    title="profile.title">
  </profile-title>
  <profile-description
    ng-if=”profile”
    description="profile.description">
  </profile-description>
</div>
```

The reason is that the profile-title and profile-description directives 
will still try to compile, which will try to evaluate the title and 
description attributes so they can be passed to each directive’s scope.

The solution is to place the ng-if=”profile” on a parent element:

```

<div ng-if=”profile” class="profileInfo">
  <profile-title title="profile.title"></profile-title>
  <profile-description description="profile.description">
  </profile-description>
</div>
```

Now, Angular will not attempt to compile the child directives until 
scope.profile is populated when the $http.get request finishes 
(if it finishes successfully). Using this pattern, the inner content 
does not become visible until profile is present on the scope.

### Problem #2

The second issue with the directive example is much less obvious, and it has 
to do with the following code snippet:

```

$http.get("/api/profiles/" + scope.profileId)
```

In the scope directive definition, profileId is passed in from a parent 
directive in the element attributes. profileId may not be available on 
the scope at the time the link function runs. Put another way, the link 
function might run before angular sets up the scope. In this example, the 
GET request might end up looking like `/api/profiles/undefined`. 

There are two ways around this. One is to store any data the link function
needs on a service which gets initialized before any directives are compiled, 
for example, in module.run. This is the recommended approach: whenever possible 
have data be held by services instead of directives. 

TODO: Talk more about the recommended approach from a technical/philosophical perspective.


