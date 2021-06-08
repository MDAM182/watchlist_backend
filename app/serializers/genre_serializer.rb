class GenreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :programs
end
