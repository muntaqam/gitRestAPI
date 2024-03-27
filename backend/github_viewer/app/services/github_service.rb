# app/services/github_service.rb
require 'octokit'

class GithubService

  def initialize(access_token = ENV['GITHUB_ACCESS_TOKEN'])
    @client = Octokit::Client.new(access_token: access_token)
  end

  def repository_details(owner, repo)
    {
      pull_requests: @client.pull_requests("#{owner}/#{repo}", state: 'open').count,
      issues: @client.issues("#{owner}/#{repo}", state: 'open').count
    }


  rescue Octokit::Error => e
    { error: e.message }
  end

  
end
