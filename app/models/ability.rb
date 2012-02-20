class Ability
	include CanCan::Ability

	def initialize(user)

		if user == nil
			can :read, :all
		else
			# Work
			can :read, Work
			can :create, Work
			can :my_works, Work
			
			can :update, Work do |work|
				work.try(:user) == user
			end

			can :destroy, Work do |work|
				work.try(:user) == user
			end

		end
	end
end