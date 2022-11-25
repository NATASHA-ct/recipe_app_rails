# # frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user == 'admin'
      can :manage, :all
    else
      can :read, Recipe do |recipe|
        recipe.user == user || recipe.public
      end

      can [:update, :destroy], Recipe do |recipe|
        recipe.user == user
      end

      can %i[create], :all
    end
  end
end
