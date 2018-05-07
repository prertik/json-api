class UrlResource < JSONAPI::Resource
  attributes :url
  has_many :contents
end
