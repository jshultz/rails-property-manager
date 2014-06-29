class AdminsController < ApplicationController

  # GET /admins
  # GET /admins.json
  def index
    @user = current_user
    @properties = Property.where(:user_id => current_user.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params[:admin]
    end
end
