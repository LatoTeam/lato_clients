module LatoClients
  class Back::ClientsController < Back::BackController

    def show
      redirect_to lato_clients.edit_client_path(params[:id])
    end

    def index
      @search_clients = Client.ransack(params[:q])
      @clients = @search_clients.result.paginate(page: params[:page], per_page: 20).order('name ASC')
    end

    def new
      @client = Client.new
    end

    def create
      client = Client.new(client_params)

      if client.save
        flash[:success] = "Client created"
      else
        flash[:danger] = "Client not created"
      end

      redirect_to lato_clients.clients_path
    end

    def edit
      @client = Client.find(params[:id])
    end

    def update
      client = Client.find(params[:id])

      if client.update(client_params)
        flash[:success] = "Client updated"
      else
        flash[:danger] = "Client not updated"
      end

      redirect_to lato_clients.clients_path
    end

    def destroy
      client = Client.find(params[:id])
      client.destroy

      flash[:success] = "Client deleted"
      redirect_to lato_clients.clients_path
    end

  end
end
