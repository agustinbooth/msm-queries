class ActorsController < ApplicationController

  def index
  
    @list_of_actors = Actor.all

    render({ :template => "actors_template/index.html.erb"})

  end
  
    def actor_detail
  
        actor_id = params.fetch("actor_id")

      @the_actor = Actor.where({:id => actor_id }).at(0)

      @character = Character.where({:actor_id => actor_id})

    render({ :template => "actors_template/actor_template.html.erb"})

  end

  end