class HomeController < ApplicationController
  def show
    @projects = Project.visible.last(5)
    @albums = Album.visible.last(5)
    @blogs = Blog.visible.last(5)
  end
end
