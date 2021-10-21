class Tweet < ApplicationRecord
  with_options presence: true do
    validates :title, :explanatory_text
  end
end
