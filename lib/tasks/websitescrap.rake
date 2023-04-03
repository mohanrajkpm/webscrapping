namespace :websitescrap do
  desc "TODO"
  task scrap: :environment do
    url = "https://magicpin.in/Hyderabad/Miyapur/Restaurant/Chef-Bakers/store/55b016/delivery/"
    Scraper.new(url).process
  end
end
