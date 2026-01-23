module Jekyll
  module AuthorFormatFilter
    def format_authors(author_string)
      return "" if author_string.nil? || author_string.empty?
      
      # Split authors by " and "
      authors = author_string.split(/\s+and\s+/i)
      
      formatted_authors = authors.map do |author|
        author = author.strip
        # Check if author is in "Last, First" format
        if author.include?(',')
          parts = author.split(',', 2)
          last_name = parts[0].strip
          first_name = parts[1].strip
          # Return "First Last" format
          "#{first_name} #{last_name}"
        else
          # If already in "First Last" format, return as is
          author
        end
      end
      
      # Join with ", "
      formatted_authors.join(', ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::AuthorFormatFilter)
