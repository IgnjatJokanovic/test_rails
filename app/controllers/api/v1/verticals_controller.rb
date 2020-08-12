module Api
  module V1
    class VerticalsController < ApplicationController
      before_action :set_vertical, only: [:show, :update, :destroy]
    
      # GET /verticals
      def index
        @verticals = Vertical.all
        render json: @verticals
      end
    
      #GET /verticals/1
      def show
        render json: @vertical
      end
    
      # POST /verticals
      def create
        @vertical = Vertical.new(vertical_params)
    
        if @vertical.save
          render json: @vertical, status: :created
        else
          render json: @vertical , status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /verticals/1
      def update
        # puts(params["categories"])
        flag = false
        data = "Name must be unique for category inside a vertical"
        params["categories"].each do |n|
  
          if params["name"] == n["name"]
           flag = true
          end
        end
        if flag
          render json: data,  status: :unprocessable_entity
        else
            if @vertical.update(vertical_params)
              params["categories"].each do |n|
                if n["id"] == ""
                  category = Category.create(name: n["name"], state: n["state"])
                  category.vertical = @vertical
                  if[n["courses"].any?]
                   n["courses"].each do |n|
                    if n["id"] != ""
                      course = Course.create(name: n["name"], author: n["author"], state: n["state"])
                     course.category = category
                    else
                      course = course.find_by_id(n["id"])
                      if course.present?
                        course.update(name: n["name"], author: n["author"], state: n["state"])
                      else
                        course = Course.create(name: n["name"], author: n["author"], state: n["state"])
                            course.category = category
                      end
                    end 
                     
                   end
                  end
                else
                  category = Category.find_by_id(n["id"]);
                 
                  if category.present?
                    category.update(name: n["name"], status: n["status"])

                  else
                    category = Category.create(name: n["name"], state: n["state"])
                    category.vertical = @vertical
                  end
                end
              end
            else
                  render json: @vertical.errors, status: :unprocessable_entity
            end
        end

     
      end
    
      # DELETE /verticals/1
      def destroy
        @vertical.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_vertical
          @vertical = Vertical.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def vertical_params
          params.require(:vertical).permit(:name, :categories)
        end
    end
    
  end
end