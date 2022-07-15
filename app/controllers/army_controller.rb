

class ArmyController < ApplicationController

    set :default_content_type, 'application/json'

    

    get '/army/:id' do
       army = Army.find(params[:id])
       army.to_json
    end


    post '/army/:id' do
        army = Army.create(
            name: params[:name],
            alignment: params[:alignment],
            description: params[:description]
        )
        army.to_json
    end

end