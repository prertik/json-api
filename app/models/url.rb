class Url < ApplicationRecord
  has_many :contents
  after_create :create_contents

  def create_contents
    @doc = Nokogiri::HTML(RestClient.get(self.url))
    @doc.css('h1, h2, h3').each do |c|
      Content.create(url_id: self.id, content_type: c.name, text: c.text)
    end
    @doc.css('a').each do |c|
      if c['href'] != nil
        Content.create(url_id: self.id, content_type: c.name, text: c['href'])
      end
    end
  end

end
