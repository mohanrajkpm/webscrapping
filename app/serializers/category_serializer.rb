# frozen_string_literal: true

# category serialize object
class CategorySerializer
    include FastJsonapi::ObjectSerializer
    attributes :name

    attributes :number_of_items do |obj|
      obj.items.count
    end

    attributes :avg_price do |obj|
      count = obj.items.count
      total_price = obj.items.sum(:price)
      total_price / count
    end

    attributes :max_price do |obj|
      obj.items.map(&:price).max
    end

    attributes :min_price do |obj|
      obj.items.map(&:price).min
    end
  end
  