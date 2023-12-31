require_relative '../genre'
require_relative '../item'

describe Genre do
  genre = Genre.new('Country')

  context '#new' do
    it 'should be an instance of Genre' do
      expect(genre).to be_instance_of Genre
      expect(genre.name).to eq 'Country'
    end
  end

  context '#add_item' do
    it 'should have one item in its @items' do
      item = Item.new('2000-2-3', nil, nil, nil, nil) # Pass the required arguments to Item.new
      genre.add_item(item)
      expect(genre.instance_eval { @items }.length).to be 1
    end
  end
end
