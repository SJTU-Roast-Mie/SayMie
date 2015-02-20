module MieApi
  module V1
    class Test < Grape::API
      get 'ping' do
        'mie'
      end

    end
  end
end