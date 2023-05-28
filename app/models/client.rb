class Client < ApplicationRecord
    ActiveAdmin.register Client do
        actions :index, :edit, :update, :create, :destroy
    
        permit_params :name, :address, :company, :phone_number
    end
end
