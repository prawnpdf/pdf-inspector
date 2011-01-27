Gem::Specification.new do |spec|
  spec.name = "pdf-inspector"
  spec.version = "1.0.0"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "A tool for analyzing PDF output"
  spec.files =  Dir.glob("{lib}/**/**/*")
  spec.has_rdoc = true
  spec.extra_rdoc_files = %w{CHANGELOG README}
  spec.rdoc_options << '--title' << 'PDF::Inspector' <<
                       '--main'  << 'README' << '-q'
  spec.authors = ["Gregory Brown","Brad Ediger", "Daniel Nelson","Jonathen Green","James Healy"]
  spec.email = ["gregory.t.brown@gmail.com","brad@bradediger.com","dnelson77@gmail.com", "greenberg@entryway.net","jimmy@deefa.com"]
  spec.add_dependency('pdf-reader', '>=0.9.0')
  spec.description = <<END_DESC
This library provides a number of PDF::Reader[0] based tools for use in testing
PDF output.  Presently, the primary purpose of this tool is to support the 
END_DESC
end
