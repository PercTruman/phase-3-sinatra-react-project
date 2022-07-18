class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get '/' do
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

  delete '/army/:id' do
    army= Army.find(params[:id])
    army.destroy
    army.to_json
  end

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

end
