class HomeController < ApplicationController
  def index
    @candidates = Candidate.includes(:party).order(:votes_count).reverse_order
  end

  def signed_in_details; end
end
