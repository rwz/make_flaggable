module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true
    belongs_to :flagger, :polymorphic => true
    scope :with_flag, lambda { |flag| where(:flag => flag.to_s) }
  end
end
