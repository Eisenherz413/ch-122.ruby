# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)
      if user.role == 'user'
        can :read, [Issue, Room, Order]
        can :create, [Order, Issue]
      end
      if user.role == 'manager'
        can :manage, [Category, Room, Service, Order]
        can :update, Issue
        can :read, Issue
      end
      if user.role == 'admin'
        can :manage, :all
      end

      if Order.order('created_at DESC').where("user_id = ? AND check_in <= ? AND check_out >= ?",
                                              user.id, Date.today, Date.today).count > 0
        can :create, Issue
      end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
