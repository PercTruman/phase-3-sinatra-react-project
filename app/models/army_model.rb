class ArmyModel < ActiveRecord::Base
    belongs_to :army

    validates :name, presence: true, uniqueness: true

end