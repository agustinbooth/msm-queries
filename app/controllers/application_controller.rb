class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def films

    @list_of_movies = Movie.all

    render({ :template => "movies_template/index.html.erb"})
  
  end

    def film_detail

      movie_id = params.fetch("film_id")

      @the_movie = Movie.where({:id => movie_id }).at(0)

    render({ :template => "movies_template/movie_detail.html.erb"})
  
  end

end
