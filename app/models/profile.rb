class Profile < ApplicationRecord
    has_many(:educations, dependent: :destroy)
    has_many(:experience, dependent: :destroy)
    has_many(:project, dependent: :destroy)
    accepts_nested_attributes_for(:educations, reject_if: :reject_education_create, allow_destroy: true)
    accepts_nested_attributes_for(:experience, reject_if: :reject_experience_create, allow_destroy: true)
    accepts_nested_attributes_for(:project, reject_if: :reject_experience_create, allow_destroy: true)
    has_one_attached :image

    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end

    def reject_experience_create(experience)
        experience[:company].blank? or experience[:position].blank? or experience[:start].blank? or experience[:end].blank?
    end

    def reject_project_create(project)
        project[:title].blank? or project[:project_url].blank? or project[:tech_stack].blank?
    end
end