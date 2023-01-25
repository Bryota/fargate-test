class HomeController < ApplicationController
    def index
        logger.info "============================================================"
        logger.info "home"
        render json: {status: 200, test: 'hahaha'}, status: 200
    end
end
