---
title: Adding image uploading to Rails Projects
date: 2015-11-25
tags:
---

When I first looked into adding images to my Rails applications, I thought I had one problem I needed to solve. After doing a bit of research, I started to realize I actually had three problems I needed to solve:

- how to upload an image
- how to resize an image 
- how to store an image

I haven't found a gem that lets you do all of these things in one shot. After a bit of research and trail and error, here are the two main options I found:

#### Option 1: Carrierwave + MiniMagick + ImageMagick + Fog + S3

This involves a lot of moving parts. Let's break it down:

- [CarrierWave](https://github.com/carrierwaveuploader/carrierwave) is a file uploader for Rack based applications. You can install this as a gem.
- [MiniMagick](https://github.com/minimagick/minimagick) is a Ruby wrapper for a command line application called [ImageMagick](http://www.imagemagick.org/script/index.php), which lets you manipulate images. You need to first install ImageMagick locally using `brew install imagemagick` and then you can install MiniMagick as a gem.
- Amazon's [S3](https://aws.amazon.com/s3/) is a popular and robust choice for storing files such as images. In order to play nicely with Amazon cloud services there's a gem you can use called [Fog](https://github.com/fog/fog) that helps you navigate the "fog".

I tried this approach, and it was all fine and dandy until I got to S3. I couldn't quite escape the fog. I ended up with a cryptic config error and spent another 30 min staring at Amazon's admin panel trying to figure out which key(s) it didn't like. For my lightweight app that just wanted to store simple images, it was a lot of work to get going. I starting looking around for a simpler alternative.

#### Option 2: Carrierwave + Cloudinary

I'm so happy I found this pair! Cloudinary handles both image manipulation and cloud storage for you. And as a bonus, it comes as a Heroku addon! It took 5 min to setup and worked like a charm.

The only downside to this adventure with image uploaders is that I didn't find a great tutorial out there for tying everything together. Once you find the tools, it's not really clear how you integrate it with your existing models and views. Here's my attempt at that:

### Using Carrierwave and Cloudinary

We are going to add a profile picture to a user. Here is an overview of what we want to accomplish:

<img src="/img/articles/cloudinary.jpg" alt="" style="width: 100%;max-height: 100%">

**Step 1: Add Carrierwave and Cloudinary to your Gemfile**

<script src="https://gist.github.com/polinadotio/0b4be8f5e1693d626cac.js"></script>

**Step 2: Add Cloudinary to Heroku**

<script src="https://gist.github.com/polinadotio/8b6f09b9d0ade5e2019c.js"></script>

**Step 3: Add a Cloudinary config to your app**

If you go to `$ heroku config` you should now see a Cloudinary URL. Create a config file called `config/initializers/cloudinary.rb` and store the URL in `config/application.yml` if you're using [Figaro](https://github.com/laserlemon/figaro) to handle your environmental variables.

<script src="https://gist.github.com/polinadotio/31e48182f9c74ea854f7.js"></script>

Remember to update your environment variables in Heroku, `$ figaro heroku:set -e production`.

**Step 4: Create an image uploader**

Carrierwave has an generator we can use to create an uploader tool. This uploader provides config options and methods to upload and display our images. Let's call it Avatar. Each of our users will have an avator associated with them, so we will need to add an avator attribute to the users table.

<script src="https://gist.github.com/polinadotio/b12e2ed03a04a2a05d25.js"></script>

**Step 5: Modify the User model**

CarrierWave provides a method called `mount_uploader` which gives a model attribute additional functionality to assist in uploading. Add the following to `user.rb`:

<script src="https://gist.github.com/polinadotio/7dea6c166e06958cecf3.js"></script>

The second parameter `AvatarUploader` tells it which file to use for uploading.

**Step 6: Modify the User controller**

We added a new `avatar` attribute to our User model. Now we need to allow the attribute to be updated in our controller. Change your params to the following:

<script src="https://gist.github.com/polinadotio/85bacc728f727fcfcdc6.js"></script>

**Step 7: Modify the uploader**

Our uploader processes and resizes the images. We want to add/uncomment the following:

<script src="https://gist.github.com/polinadotio/98a5664920020e79e6a9.js"></script>

**Step 8: Modify the views**

You can do this many different ways. Here's one example. I'm calling methods provided by `avatar_uploader.rb` on my User object to generate a profile picture. Here is a submit form:

<script src="https://gist.github.com/polinadotio/5adad618040d0d042383.js"></script>

Notice that the above method `image_tag()` is being used to display the current profile picture.

**Step 9: Cleanup**

<script src="https://gist.github.com/polinadotio/ef0489abf75b46d57f7d.js"></script>

Putting it all together: here is a [commit](https://github.com/polinadotio/wellesley-urban-dictionary/commit/bc8a71ea5e189f7471bc505fdb7fb4b80889f7fb) from an app of mine that covers this process from start to finish.








