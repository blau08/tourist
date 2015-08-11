require('rspec')
require('countries')

describe(Countries) do
  before() do
    Countries.clear()
  end

  describe ('#country') do
    it('lets you name a country') do
      test_place = Countries.new('Iceland')
      expect(test_place.description()).to(eq('Iceland'))
    end

    describe('.all') do
      it('is empty at first') do
        expect(Countries.all()).to(eq([]))
      end
    end

    describe('#save') do
      it('adds a country to the array of saved countries') do
        test_place = Countries.new("Zimbabwe")
        test_place.save()
        expect(Countries.all()).to(eq([test_place]))
      end
    end

    describe('.clear') do
      it('empties out all of the saved countries') do
        Countries.new('Argentina').save()
        Countries.clear()
        expect(Countries.all()).to(eq([]))
      end
    end

  end
end
