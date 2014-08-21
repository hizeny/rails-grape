class API < Grape::API
  version 'v1', using: :path
  format :json
  resource :user do

    get do
      User.all
    end

    get ':id' do
      User.find(params[:id])
    end

    post do
      User.create({
        name: params[:name]
      })
    end

    put ':id' do
      User.find(params[:id]).update({
        name: params[:name]
      })
    end

    delete ':id' do
      User.find(params[:id]).destroy
    end
  end
end
