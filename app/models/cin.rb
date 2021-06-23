class Cin < ApplicationRecord
    validates :code, length: { minimum: 14, maximum: 14 }, uniqueness: { case_sensitive: false }
    validates :description, length: { minimum: 5, maximum: 50 }, uniqueness: { case_sensitive: false }
    
    attribute :status, :string, default: 'ATIVO'
end
