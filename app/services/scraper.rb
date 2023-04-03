# frozen_string_literal: true

# scrapping the website class
class Scraper < Base
  def process
    doc = call_request
    restaurant_name = doc.css('title')[0].children[0].text.strip.split(',')[0]
    location = location(doc)
    restaurant = RestaurantService.new(restaurant_name).create
    LocationService.new(restaurant, location[:city], location[:state]).create

    doc.search('.categoryListing').each do |element|
      category_name = element.search('.categoryHeading').text.strip
      category = CategoryService.new(restaurant, category_name).create
      element.search('.itemInfo').each do |item_info|
        item_price = remove_special_symbol(item_info.search('.itemPrice').text.strip)
        item = {
          name: item_info.search('.itemName').text,
          price: item_price,
          description: item_info.search('.description').text.strip
        }
        ItemService.new(category, item).create
      end
    end
  end

  def location(doc)
    {
      city: doc.css('title')[0].children[0].text.strip.split(',')[1].strip,
      state: doc.css('title')[0].children[0].text.strip.split(',')[2].split('|')[0].strip
    }
  end

end
