class HomeController < ApplicationController
  def index
    @featured_projects = Project.posted.featured.order("RANDOM()").limit(3)

    # ensure at least 3 projects appear on the homepage, even if there are less than 3 featured projects
    if @featured_projects.length < 3
      @featured_projects = @featured_projects + Project.open_for_bids.posted.order("RANDOM()").limit(3 - @featured_projects.length)
    end
  end
end
