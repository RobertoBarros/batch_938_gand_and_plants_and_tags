Garden.create!(name: 'My super garden', banner_url: 'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae')

Garden.create!(name: 'Other Garden', banner_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89')

['flores', 'fruta', 'indoor', 'outdoor', 'ornamental', 'rasteira', 'toxica'].each do |name|
  Tag.create!(name: name)
end
