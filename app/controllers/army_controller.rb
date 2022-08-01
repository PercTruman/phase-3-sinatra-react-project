

class ArmyController < ApplicationController

    set :default_content_type, 'application/json'

    

    get '/armies/:id' do
        army = Army.find(params[:id])
        army.to_json(include: :army_models)
    end


    get '/armies' do
        armies = Army.all
        armies.to_json(include: :army_models)
      end
    
    
    
      post '/add_new_army'  do
        army = Army.create(
          name:params[:name],
          alignment:params[:alignment],
          description:params[:description]
        )
        army.to_json
      end
    
      delete '/armies/:id' do
        army= Army.find(params[:id])
        army.destroy
        army.to_json
      end

      patch '/armies/:id' do
        army= Army.find(params[:id])
        army.update(
          number_in_collection: params[:number_in_collection],
          unit_points_cost: params[:unit_points_cost]
        )
        army.to_json
      end

end