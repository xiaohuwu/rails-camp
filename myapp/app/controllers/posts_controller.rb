class PostsController < ApplicationController

    def index
        render plain: "index from PostsController"
    end

    def edit
        render plain: "edit from PostsController"
    end

end
