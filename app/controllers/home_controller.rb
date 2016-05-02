class HomeController < ApplicationController
  def show
    @projects = Project.visible.last(5)
    @images = Image.visible.last(10)
    @blogs = Blog.visible.last(10)
  end
end
