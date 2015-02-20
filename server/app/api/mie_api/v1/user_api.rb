module MieApi
  module V1
    class UserApi < Grape::API

      desc 'register'
      # TODO: use namespace or etc?
      post '/user/register' do
        'lets register'
      end

    end
  end
end