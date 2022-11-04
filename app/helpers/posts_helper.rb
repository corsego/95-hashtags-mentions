module PostsHelper
  def with_regex(text)
    regex = /#\w+/
    css_class = 'green'
    text = find_by_regex(text, regex, css_class)
    regex = /@\w+/
    css_class = 'red'
    text = find_by_regex(text, regex, css_class)
  end

  # text = "Visiting a historic pizza place in Cannes 🍕 \nTheir home wine is also smooth🍷 #cannes #cotedazur"
  def find_by_regex(text, regex, css_class)
    # text.scan(/@\w+/)
    results = text.scan(regex)
    results.each do |result|
      result_link = link_to result, posts_path(search: result), class: css_class
      text.gsub!(result, result_link)
    end
    text
  end
end
