class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author

  def very_long_method_very_long_method_very_long_method(param)
    puts param
  end
end
