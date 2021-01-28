class HomesController < ApplicationController
    before_action :authenticate_officer!
    def index
    end
end
