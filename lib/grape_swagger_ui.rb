require "grape_swagger_ui/engine"

module GrapeSwaggerUi

  mattr_accessor(:url) { '/api/swagger_doc' }
  mattr_accessor(:doc_expansion) { 'none' }
  mattr_accessor(:dom_id) { 'swagger-ui-container' }
  mattr_accessor(:supported_submit_methods) { ['get', 'post', 'put', 'delete', 'patch'] }
  mattr_accessor(:sorter) { 'alpha' }
  mattr_accessor(:authenticate_method) { -> { puts 'No Authentication Required.' } }
end
