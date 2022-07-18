class ArmyModelsController < ApplicationController
  




    # if army_models.save
    #     army_models.to_json
    # else
    #     { errors: army_models.errors.full_messages }.to_json
    # end

    delete '/army_models/:id' do
        model = ArmyModel.find(params[:id])
        model.destroy
        model.to_json
    end

    patch '/army_models/:id' do
        model = ArmyModel.find(params[:id])
        model.update(
            unit_points_cost: params[:unit_points_cost]
         )
         model.to_json
    end

end