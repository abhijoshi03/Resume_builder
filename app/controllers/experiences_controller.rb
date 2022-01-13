class ExperiencesController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        current_user.profile.experience.create
        flash[:success] = "Experience added."
        redirect_to edit_url
        experience.inspect
    end

end
