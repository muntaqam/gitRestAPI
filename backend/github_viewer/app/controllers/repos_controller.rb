# app/controllers/repos_controller.rb
class ReposController < ApplicationController
  def show
    git_service = GithubService.new
    render json: git_service.repository_details(params[:owner], params[:repo])
  end
end
