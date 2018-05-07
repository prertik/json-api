class ContentResource < JSONAPI::Resource
  attributes :content_type, :text
  belongs_to :url
end
