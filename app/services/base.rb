# frozen_string_literal: true

require 'httparty'
require 'nokogiri'

# base class for scrapping website
class Base
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def call_request
    response = HTTParty.get(@url, {
                              headers: {
                                'User-Agent' =>
                                'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36'
                              }
                            })
    Nokogiri::HTML(response.body)
  end

  def remove_special_symbol(str)
    str.gsub!(/[^0-9A-Za-z]/, '')
  end
end
