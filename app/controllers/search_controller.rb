class SearchController < ApplicationController 
  
  def index 
    @nation = permitted_params[:nation]
    @members = MemberFacade.all_members_data(permitted_params[:nation])
  end

  private 

  def permitted_params
    params.permit(:nation)
  end
end