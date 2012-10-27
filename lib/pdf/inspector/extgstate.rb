module PDF
  class Inspector
    class ExtGState < Inspector
      attr_accessor :extgstates

      def initialize
        @extgstates = []
      end

      def resource_extgstate(*params)
        @extgstates << {
                        :opacity => params[1][:ca],
                        :stroke_opacity => params[1][:CA],
                        :soft_mask => params[1][:SMask]
                        }
      end
    end
  end
end
