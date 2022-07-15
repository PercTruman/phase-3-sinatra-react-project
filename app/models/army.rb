class Army < ActiveRecord::Base
    has_many :army_models

    validates :name, presence: true, uniqueness: true
end