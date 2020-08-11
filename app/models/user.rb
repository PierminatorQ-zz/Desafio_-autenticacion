class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: {case_sensitive: true}


    def to_s
        name
    end
end
