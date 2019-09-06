class SearchController < ApplicationController
  def index
    render locals: {
  facade: MembersFacade.new
  }

  end
end
