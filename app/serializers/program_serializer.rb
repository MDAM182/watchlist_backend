class ProgramSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :favorite_quote, :media_type, :image_url, :genre_id, :genre
end
