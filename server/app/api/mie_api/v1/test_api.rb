module MieApi
  module V1
    class TestApi < Grape::API

      desc 'ping and u will get mie'
      get 'ping' do
        'mie'
      end

    end
  end
end