class CitySerializer
  include JSONAPI::Serializer
  attributes :name, :full_name, :summary, :scores, :details, :salaries
end
