class OfficesController < ApplicationController
  # before_action :set_office, only: %i[show edit update destroy]
  def create
    @office = Office.new(office_params)

    if @office.save
      redirect_to offices_path
      flash[:notice] = 'Office was successfully created.'
    else
      flash[:alert] = @office.errors.full_messages.join(', ')
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_office
    @office = Office.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def office_params
    params.require(:office).permit(:name)
  end
end
