class Word

@@all_words = []

  define_method(:initialize) do |term, definition|
    @term = term
    @definition = definition
  end

  define_method(:meaning) do
    @definition
  end

  define_singleton_method(:all) do
    @@all_words
  end
end
