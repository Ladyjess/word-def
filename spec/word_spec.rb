require('rspec')
require('word')
require('success')

describe(Word) do

  describe("#meaning") do
    it("returns definition of word") do
    new_entry = Word.new("carrot", "a vegetable")
    expect(new_entry.meaning()).to(eq("a vegetable"))
    end
  end
end
