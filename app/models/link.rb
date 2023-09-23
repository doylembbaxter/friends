class Link < ApplicationRecord
    belongs_to :link_group
    belongs_to :user
end
