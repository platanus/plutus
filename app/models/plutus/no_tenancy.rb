module Plutus
  module NoTenancy
    extend ActiveSupport::Concern

    included do
      validates :code, presence: true, uniqueness: { scope: [:scope_id, :scope_type, :currency] }
    end
  end
end
