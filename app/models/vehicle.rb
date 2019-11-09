class Vehicle < ActiveRecord::Base

    belongs_to :user
    has_many :services
    validates :make, :model, :year, presence: true

    def self.visible
        where(deleted: false)
    end

end