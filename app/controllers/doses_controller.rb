class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to @dose.cocktail
    else
      redirect_to new_cocktail_dose_path
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: 'Dose was succesfully destroyed'
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :photo)
  end
end
