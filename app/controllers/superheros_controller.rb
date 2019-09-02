class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end

  def create
    superhero = Superhero.create superhero_params
    redirect_to superhero
  end
  def edit
    @superhero = Superhero.find params[:id]
  end

  def show
    @superhero = Superhero.find params[:id]
  end

  def update
    superhero = Superhero.find params[:id]
    superhero.update superhero_params
    redirect_to superhero
  end

  def destroy
    superhero = Superhero.find params[:id]
    superhero.destroy
    redirect_to superheros_path
  end
  private
  def superhero_params
    params.require(:superhero).permit(:name, :secret_identity, :publisher, :superpowers, :image)
  end

end
