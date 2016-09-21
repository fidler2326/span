class ClientsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)

    @client.save
    redirect_to action: "index"
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  private
    def client_params
      params.require(:client).permit(:name, :address)
    end
end
