class Order < ApplicationRecord
    belongs_to :user, optional: false#, counter_cache: true
end
