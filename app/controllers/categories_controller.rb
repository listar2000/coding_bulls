class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]

    def index
        @categories = Category.all
        @categories = @categories.where(user_id: params[:user_id]) if params[:user_id].present?
    end

    def show
    end

    def create
        @category = Category.new(category_params)
        @category.user_id = current_user.id
    
        respond_to do |format|
            if @category.save
                format.html { 
                    flash[:success] = 'Category was successfully created.'
                    redirect_to root_path
                }
                format.json { render :show, status: :created, location: @category }
            else
                format.html { render :new }
                format.json { render json: @category.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @category.update(category_params)
                format.html { redirect_to root_path, notice: 'Category was successfully updated.' }
                format.json { render :show, status: :ok, location: @category }
            else
                format.html { render :edit }
                format.json { render json: @category.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @category.destroy
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'Category was successfully destroyed.' }
          format.json { head :no_content }
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
