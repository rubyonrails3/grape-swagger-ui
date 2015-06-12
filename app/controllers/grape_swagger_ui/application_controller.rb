module GrapeSwaggerUi
  class ApplicationController < ActionController::Base

    before_action GrapeSwaggerUi.authenticate_method, if: :require_authorization?

    def require_authorization?
      GrapeSwaggerUi.authenticate_method.is_a? Symbol
    end
  end
end
