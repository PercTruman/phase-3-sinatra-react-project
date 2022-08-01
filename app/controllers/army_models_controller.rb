class ArmyModelsController < ApplicationController
  
    # get '/all_models' do
    #     models = ArmyModel.all
    #     models.to_json
    # end

    post '/add_new_models' do
        models = ArmyModel.create(
            name: params[:name],
            image_url: params[:image_url],
            number_in_collection: params[:number_in_collection],
            cost_per_box: params[:cost_per_box],
            unit_points_cost: params[:unit_points_cost],
            army_id: params[:army_id]
        )
      models.to_json  
    end

    patch '/army_models/:id' do
        model = ArmyModel.find(params[:id])
        model.update(
            number_in_collection: params[:number_in_collection],
            unit_points_cost: params[:unit_points_cost]
         )
         model.to_json
    end


    delete '/all_models/:id' do
        model = ArmyModel.find(params[:id])
        model.destroy
        model.to_json
    end



end