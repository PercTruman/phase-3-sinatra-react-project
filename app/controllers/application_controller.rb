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

end
