class ApplicationAPI < Grape::API
  prefix 'api'
  version 'v1', using: :path
  format :json

  # mount other api
  # TODO:cant mount. uninitialized constant MieApi::V1::Test (NameError)
  mount MieApi::V1::Test
end