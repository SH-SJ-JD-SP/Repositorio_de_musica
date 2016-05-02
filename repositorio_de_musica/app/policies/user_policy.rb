class UserPolicy < ApplicationPolicy

	def index?
		user.admin?
	end

	def edit?
		user.admin?
	end

	def show?
		user.admin?
	end

	def new?
		user.admin?
	end

  class Scope < Scope
    def resolve
      scope
    end
  end
  
end
