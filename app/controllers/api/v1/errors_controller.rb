class Api::V1::ErrorsController < ActionController::Base
    def not_found
        render json: { message: "Route not found" }, status: 404
    end
end