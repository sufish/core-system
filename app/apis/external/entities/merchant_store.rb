module External
  module Entities
    class MerchantStore < Grape::Entity
      expose :id,
             :name,
             :merchant_number,
             :license_name,
             :license_num,
             :license_expire_date,
             :tax_number,
             :organization_code,
             :legal_person,
             :legal_person_ic,
             :register_address,
             :real_address,
             :business_scope,
             :real_business_scope,
             :contract_num,
             :contract_active_date,
             :contractor,
             :file_num,
             :finance_contact_name,
             :finance_contact_phone,
             :public_account_name,
             :public_account_num,
             :public_account_bank,
             :clearance_account_name,
             :clearance_account_num,
             :clearance_account_bank,
             :deploy_contact_name,
             :deploy_contact_phone,
             :status,
             :standard_rate,
             :created_at
    end
  end
end