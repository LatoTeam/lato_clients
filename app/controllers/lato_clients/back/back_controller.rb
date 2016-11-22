module LatoClients
  class Back::BackController < ApplicationController

    include LatoCore::Interface
    include LatoView::Interface
    include LatoClients::Interface

    # set lato view layout
    layout 'lato_layout'

    # check user is logged
    before_action :core_controlUser

    before_action do
      view_setCurrentVoice('clients')
    end

    protected def client_params
      params.require(:client).permit(:name, :email_1, :email_2, :email_3,
      :email_pec, :phone_1, :phone_2, :phone_3, :phone_4, :referent, :address,
      :city, :vat, :fiscal_code)
    end

  end
end
