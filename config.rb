page "/projects/*", layout: "project"
page "/writing/",  layout: "writing"
page "/writing/*",  layout: "article"

set :relative_links, true
set :css_dir, "stylesheets"
set :js_dir, "js"
set :images_dir, "img"
set :haml, :format => :html5
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :automatic_image_sizes
activate :autoprefixer
activate :directory_indexes
activate :i18n
activate :rouge_syntax

activate :blog do |writing|
  writing.layout = "home"
  writing.prefix = "writing"
  writing.sources = "/articles/:year/:title.html"
  writing.permalink = "/:year/:title.html"
end

activate :pagination do
  pageable_set :projects do
    data.projects
  end
end

configure :build do
  activate :asset_hash
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
  deploy.branch = "master"
end

helpers do
  def is_page_active(page)
    current_page.url == page ? {:class => 'is-active'} : {}
  end

  def format_date(date)
    date.strftime("%B %e, %Y")
  end
end
