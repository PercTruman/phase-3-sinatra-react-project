class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get '/' do
    armies = Army.all
    armies.to_json
  end

end
