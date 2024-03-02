class HomeController < ApplicationController
  def index
    @candidate = Candidate.new
    @office = Office.new
    @party = Party.new

    @candidates = Candidate.includes(:party, :office).order(:votes_count).reverse_order
    @parties = Party.all
    @offices = Office.all
  end

  def signed_in_details; end
end
