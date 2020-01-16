class User < ActiveRecord::Base
    has_many :articles
    before_save { self.email=email.downcase}
    validates username: true, presence: true, 
              uniqueness: {case_sensitive: false},
              length: {minimum: 5, maximum: 25}

              VALID_EMAIL_REGEX = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/

    validates email: true, presence: true,
              uniqueness: {case_sensitive: false},
              length: {maximum: 100},
              format: {with: VALID_EMAIL_REGEX}
end 