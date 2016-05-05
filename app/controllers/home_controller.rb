class HomeController < ApplicationController

  respond_to :html

  # GET /home
  def index

  	result = nil

    #====== Tags Filter
  	if !asset_params[:tag_list].blank?
  		result = Asset.tagged_with( asset_params[:tag_list].split(" "), :any => true).order(:updated_at)
    else
    	result = Asset.order(:updated_at)
  	end

    result = result.joins(:asset_data).where( sql_query ) if !sql_query.empty?

    
    result = result.where.not(user_id: current_user.id) if !current_user.nil?

  	@assets = result.distinct.page params[:page]
  end

  
  private 

  def sql_query

    sqls = Array.new
    
    #====== Category Filter
    if !asset_params[:category_id].blank?
      sqls << "category_id = #{asset_params[:category_id]}"
    end

    #====== Title Filter
    if !params[:title].blank?
       sqls << "( asset_data.descriptor_id = 1 AND asset_data.descriptor_value LIKE '%#{params[:title]}%') "
    end

    #====== Author Filter
    if !params[:author].blank?
      sqls << "( asset_data.descriptor_id = 2 AND asset_data.descriptor_value LIKE '%#{params[:author]}%') "
    end

    sqls.join(" OR ")
  end

  def asset_params
  	params.key?(:asset) ? params.require(:asset) : params
  end
  
end
