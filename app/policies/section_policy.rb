class SectionPolicy < ApplicationPolicy
    def new?
      user.role == "Developer"
    end
  end