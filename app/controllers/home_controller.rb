class HomeController < ApplicationController

  def email
    client = SendGrid::Client.new(api_key: Rails.application.secrets.sendgrid_portfolio_api_key)
    email = SendGrid::Mail.new do |m|
      m.to      = 'matt@mattc.io'
      m.from    = params[:email]
      m.subject = 'Email Sent From Portfolio Contact Page'
      m.text    = "Name: #{params[:name]}\r\n\r\nBody: #{params[:message]}"
    end
    if client.send(email)
      respond_to do |format|
        format.json {render json: 'success'}
      end
    else
      respond_to do |format|
        format.json {render json: 'error'}
      end
    end
  end

  def show
    @projects = Project.visible.last(5)
    @albums = Album.getAlbums
    gon.albums = @albums
    @blogs = Blog.visible.last(5)
  end
end
