class Api::UsersController < ApplicationController

    #GET /users/find_user/
    def find_user
      user = User.find_by(username: params[:username])
      #if (user && user.authenticate(params[:password]))
        render json: user.to_json(
            :only => [:id, :username],
            :include => {
                :tickets => {
                    :include => [:event]
                },
                :bookmarks => {
                    :include => [:event]
                }
            },
            :methods => [:event_tickets, :bookmarked_events]
        )
    # else 
    #     render json: {errors: "invalid username"}
    # end
  end

  # GET /users/:id
  def show
      user = User.find(params[:id])
      render json: user.to_json(
          :only => [:id, :username],
          :include => {
              :tickets => {
                  :include => [:event]
              },
              :bookmarks => {
                  :include => [:event]
              }
          },
          :methods => [:event_tickets, :bookmarked_events]
      )
  end

  # GET /users
  def index
      @users = User.all
      render json: @users
  end

  # POST /users
  def create
      @user = User.create(username: params[:username], password_digest: params[:password])
      #if @user.valid?
        #@token = encode_token(user_id: @user.id)
        render json: @user.to_json(
            :only => [:id, :username],
            :include => {
                :tickets => {
                    :include => [:event]
                },
                :bookmarks => {
                    :include => [:event]
                }
            },
            :methods => [:event_tickets, :bookmarked_events]
      )
    #   else
    #       render json: { error: 'failed to create user' }, status: :not_acceptable
    #   end
  end

  # DELETE /users/delete_bookmark
  def delete_bookmark
      user = User.find(params[:id])
      bookmark = Bookmark.find_by(user_id: params[:id], event_id: params[:event_id])
      Bookmark.destroy(bookmark.id)

      render json: bookmark.event.to_json()
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
