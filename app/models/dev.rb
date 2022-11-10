class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        if self.freebies.where(item_name: item_name).count > 0
            true
        else
            false
        end

    end

    def give_away(dev, freebie)
        if freebie.dev_id == self.id
            freebie.dev_id = dev.id
            freebie.save
        end
    end
end
