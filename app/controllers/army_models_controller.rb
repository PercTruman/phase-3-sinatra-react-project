class ArmyModelsController < ApplicationController
  
    get '/all_models_list/' do
        models = ArmyModel.all
        models.to_json
    end



    # if army_models.save
    #     army_models.to_json
    # else
    #     { errors: army_models.errors.full_messages }.to_json
    # end

    delete '/all_models_list/:id' do
        model = ArmyModel.find(params[:id])
        model.destroy
        model.to_json
    end

    patch '/all_models_list/:id' do
        model = ArmyModel.find(params[:id])
        model.update(
            name: params[:name],
            number_in_collection: params[:number_in_collection],
            cost_per_box: params[:cost_per_box],
            unit_points_cost: params[:unit_points_cost]
         )
         model.to_json
    end

end