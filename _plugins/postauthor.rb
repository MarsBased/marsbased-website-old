module Jekyll
  module PostAuthorFilter
    def post_author(input)

      img = '<img class="img-circle img-responsive" src="/images/blog/author.png"/>'
      html_line = '<div id="author-by">by '

      if input == 'alex'
        html_line << 'Àlex Rodríguez (<a href="http://twitter.com/lexrodba" target="_blank" title="Àlex Rodríguez twitter handle">@lexrodba</a>)'
        img ["author"] = "alex"
      elsif input == 'xavi'
        html_line << 'Xavier Redó (<a href="http://twitter.com/xavier_redo" target="_blank" title="Xavier Redó twitter handle">@xavier_redo</a>)'
        img ["author"] = "xavi"
      elsif input == 'jordi'
        html_line << 'A Martian (<a href="http://twitter.com/marsbased" target="_blank" title="Martian twitter handle">@marsbased</a>)'
        img ["author"] = "alien"
      end

      html_line << '</div>'

     "#{html_line} #{img}"

    end
  end
end

Liquid::Template.register_filter(Jekyll::PostAuthorFilter)