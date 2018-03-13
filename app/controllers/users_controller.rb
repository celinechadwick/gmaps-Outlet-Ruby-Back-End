class UsersController < ApplicationController
  # before_action :authenticate_token, except: [:login, :create]

  def login
        user = User.find_by(email: params[:email])

        if user
            # Continue to authenticate
            if user.authenticate(params[:password])
                # Good to go! Send the JWT
                user.password = nil

                jwt = JWT.encode(user, nil, false)

                render :json => { token: jwt, userID: user.id }, status: 201
            else
                render :json => { error: "Not authorized" }, status: 401
            end
        else
            render :json => { error: "User not found by that email" }, status: 404
        end
    end

      def index
          # Step 1: Retrieve users from DB
          # Step 2: Send data as JSON

          users = User.all

          render :json => users, status: 200
      end

      def show
          render :json => User.find(params[:id]), status: 200
      end

      def create
          user = User.create(user_params)

          render :json => user, status: 201
      end

      def update
          user_updated = User.find(params[:id]).update_attributes(user_params)

          if user_updated
              head 200
          else
              render :json => { error: "There was a problem updating this record" }, status: 400
          end
      end

      def destroy
          user_destroyed = User.find(params[:id]).destroy

          if user_destroyed
              head 200
          else
              render :json => { error: "There was a problem destroying this record" }, status: 400
          end
      end

      private

        def user_params
          params
          .require(:user)
          .permit(:email, :password)
        end
end
