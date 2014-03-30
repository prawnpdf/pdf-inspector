module PDF
  class Inspector
    class Text < Inspector                    
      attr_accessor :font_settings, :size, :strings, :full_text
      attr_accessor :character_spacing, :word_spacing
      attr_accessor :kerned, :text_rendering_mode

      def initialize     
        @font_settings = []
        @fonts = {}
        @font_objects = {}
        @strings = []
        @full_text = ""
        @character_spacing = []
        @word_spacing = []
        @kerned = []
        @text_rendering_mode = []
      end

      def page=(page)
        @state = PDF::Reader::PageState.new(page)
        page.fonts.each do |label, stream|
          @fonts[label]        = stream[:BaseFont]
          @font_objects[label] = PDF::Reader::Font.new(page.objects, stream)
        end
      end

      def set_text_font_and_size(*params)     
        @state.set_text_font_and_size(*params)
        @font_settings << { :name => @fonts[params[0]], :size => params[1] }
      end     

      def show_text(*params)
        @kerned << false
        @strings << @state.current_font.to_utf8(params[0])
        @full_text += (" " + @state.current_font.to_utf8(params[0]))
      end

      def show_text_with_positioning(*params)      
        @kerned << true
        # ignore kerning information
        show_text params[0].reject { |e|
          Numeric === e
        }.join
      end

      def set_text_rendering_mode(*params)
        @state.set_text_rendering_mode(*params)
        @text_rendering_mode << params[0]
      end

      def set_character_spacing(*params)
        @state.set_character_spacing(*params)
        @character_spacing << params[0]
      end

      def set_word_spacing(*params)
        @state.set_word_spacing(*params)
        @word_spacing << params[0]
      end
      
    end                                       
  end
end
