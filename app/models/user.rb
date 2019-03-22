class User < ApplicationRecord
  belongs_to :posts

  def so_long_method_with_error
    self.create(name: 'book')
    value = eval("Book.first.name")
    




    {key: 'value'}.merge!(new_key: value)
    {key: 'value'}.merge!(new_key: value)
    {key: 'value'}.merge!(new_key: value)
    {key: 'value'}.merge!(new_key: value)
    {key: 'value'}.merge!(new_key: value)

    {key: 'value'}.merge!(new_key: value)
  end
end
