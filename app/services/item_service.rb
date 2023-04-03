# frozen_string_literal: true

# product class
class ItemService
  attr_reader :category, :item

  def initialize(category, data = {})
    @category = category
    @data = data
  end

  def create
    @category.items.find_or_create_by(title: @data[:name], price: @data[:price], description: @data[:description])
  end
end
