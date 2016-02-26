# encoding: UTF-8

module Jekyll
  module PostAuthorFilter
    def post_author(input)

      img = '<div class="avatar"><img class="img-circle" src="/images/blog/author.png"/></div>'
      html_line = '<div class="author-by">Written by '

      if input == 'alex'
        html_line << 'Àlex Rodríguez (<a href="http://twitter.com/lexrodba" target="_blank"
          title="Àlex Rodríguez twitter handle">@lexrodba</a>)'
        img ["author"] = "alex"
      elsif input == 'xavi'
        html_line << 'Xavier Redó (<a href="http://twitter.com/xavier_redo" target="_blank"
          title="Xavier Redó twitter handle">@xavier_redo</a>)'
        img ["author"] = "xavi"
      elsif input == 'jordi'
        html_line << 'Jordi Vendrell (<a href="http://twitter.com/jordi_vendrell"
          target="_blank" title="Jordi Vendrell twitter handle">@jordi_vendrell</a>)'
        img ["author"] = "jordi"
      elsif input == 'javi'
        html_line << 'Javier Pérez (<a href="http://twitter.com/_iamjavi_" target="_blank"
          title="Javier Pérez twitter handle">@_iamjavi_</a>)'
        img ["author"] = "javi"
      elsif input == 'emilio'
        html_line << 'Emilio Rios (<a href="http://twitter.com/emiIio_rios" target="_blank"
          title="Emilio Rios twitter handle">@emiIio_rios</a>)'
        img ["author"] = "emilio"
      elsif input == 'xavier'
        html_line << 'Xavier Simó (<a href="http://twitter.com/xsimov" target="_blank"
          title="Xavier Simó twitter handle">@xsimov</a>)'
        img ["author"] = "xavier"
      elsif input == 'pedro'
        html_line << 'Pedro Pimenta (<a href="http://twitter.com/pedrogpimenta" target="_blank"
          title="Pedro Pimenta twitter handle">@pedrogpimenta</a>)'
        img ["author"] = "pedro"
      elsif input == 'david'
        html_line << 'David Gómez (<a href="http://twitter.com/dvdgs88" target="_blank"
          title="David Gómez twitter handle">@dvdgs88</a>)'
        img ["author"] = "david"
      end

      html_line << '</div>'

     "#{html_line} #{img}"

    end
  end
end

Liquid::Template.register_filter(Jekyll::PostAuthorFilter)
