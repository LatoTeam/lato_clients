module LatoClients
  class Client < ApplicationRecord

    validates :name, presence: true

  end
end
