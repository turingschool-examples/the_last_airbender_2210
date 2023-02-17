class SearchController < ApplicationController 
  
  def index 
    @nation = permitted_params[:nation]
    members = MemberFacade.all_members_data(permitted_params[:nation])
    @member_total_count = members.size 
    @first_25_members = members.first(25)
  end

  private 

  def permitted_params
    params.permit(:nation)
  end
end