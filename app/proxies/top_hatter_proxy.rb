class TopHatterProxy
  include HTTParty
  
  base_uri "https://tophatter.com"

  ACCESS_TOKEN = "14b0ef5a96348ea9c23986db6953d83d"

  def self.get_items
    url = "#{base_uri}/merchant_api/v1/products.json?access_token=#{ACCESS_TOKEN}"
    res = HTTParty.get(url)
    res = res.parsed_response unless res.message
    res
  end
end