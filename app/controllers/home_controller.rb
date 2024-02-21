class HomeController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def signed_in_details

  end
end
