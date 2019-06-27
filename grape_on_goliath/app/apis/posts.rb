module Twitter
  class API < Grape::API
    version 'v1', :using => :path
    format :json
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    desc 'Return a status.'
    params do
      requires :id, type: Integer, desc: 'Status id.'
    end
    route_param :id do
      get do
        Post.find(params[:id])
      end
    end

  end
end
