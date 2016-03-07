class DishesControllerController < ApplicationController
  def index
    @dish = Dishes.all
  end

  def show
    @dish = Dishes.new
  end

  def new
      @dish = Dish.new(dish_params)
  end

  def edit
  end

  def create
    @dish = Dish.new(dish_params)

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to performed_exercises_url, notice: 'Dish was successfully destroyed.' }
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:name, :price, :description)
    end
end
