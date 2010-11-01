module PDF
  class Inspector
    class XObject < Inspector
      attr_accessor :page_xobjects, :xobject_streams

      def initialize
        @page_xobjects = []
        @xobject_streams = {}
      end

      def resource_xobject(*params)
        @page_xobjects.last << params.first
        store_streams(params.first, params.last)
      end

      def begin_page(*params)
        @page_xobjects << [] 
      end
      
      def store_streams(resource_name, stream)
        @xobject_streams[resource_name] = stream
      end
    end
  end
end