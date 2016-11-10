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
    respond_to do |format|
      if @client.save
        format.html { redirect_to clients_path, notice: 'Client was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client }
      else
        format.html { render action: 'new' }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
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
