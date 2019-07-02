module Plutus
  module Tenancy
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true, uniqueness: { scope: [:tenant_id, :scope_id, :scope_type] }

      if ActiveRecord::VERSION::MAJOR > 4
        belongs_to :tenant, class_name: Plutus.tenant_class, optional: true
      else
        belongs_to :tenant, class_name: Plutus.tenant_class
      end
    end
  end
end
