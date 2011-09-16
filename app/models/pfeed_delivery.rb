class PfeedDelivery
  include Mongoid::Document
  belongs_to :pfeed_receiver, :polymorphic => true
  belongs_to :pfeed_item
end
