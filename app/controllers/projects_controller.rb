class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        current_user.profile.project.create
        flash[:success] = "project added."
        redirect_to edit_url
    end

end
