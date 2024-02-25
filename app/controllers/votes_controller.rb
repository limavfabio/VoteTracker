class VotesController < ApplicationController
  before_action :set_vote, only: %i[update destroy]

  # GET /votes/1/edit
  def edit; end

  def new
    @vote = Vote.new
  end

  # POST /votes or /votes.json
  def create
    @vote = current_user.votes.build(vote_params)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to root_path, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: @vote }
      else
        flash[:alert] = @vote.errors.full_messages.join(', ')

      end
    end
  end

  # PATCH/PUT /votes/1 or /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params, user: current_user)
        format.html { redirect_to vote_url(@vote), notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1 or /votes/1.json
  def destroy
    @vote.destroy!

    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vote
    @vote = Vote.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vote_params
    params.require(:vote).permit(:candidate_id)
  end
end
