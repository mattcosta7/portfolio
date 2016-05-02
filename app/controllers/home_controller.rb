class HomeController < ApplicationController
  def show
    @projects = Project.last(5)
    @images = Image.last(10)
    @blogs = Blog.last(10)
  end
end
