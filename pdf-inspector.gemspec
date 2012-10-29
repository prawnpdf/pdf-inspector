Gem::Specification.new do |spec|
  spec.name = "pdf-inspector"
  spec.version = "1.0.2"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "A tool for analyzing PDF output"
  spec.homepage = "https://github.com/prawnpdf/pdf-inspector"
  spec.files =  Dir.glob("{lib}/**/**/*") +
    ["CHANGELOG", "README", "COPYING", "LICENSE", "GPLv2", "GPLv3"]
  spec.extra_rdoc_files = %w{CHANGELOG README}
  spec.rdoc_options << '--title' << 'PDF::Inspector' <<
                       '--main'  << 'README' << '-q'
  spec.authors = ["Gregory Brown","Brad Ediger", "Daniel Nelson",
                  "Jonathan Greenberg","James Healy"]
  spec.email = ["gregory.t.brown@gmail.com","brad@bradediger.com",
                "dnelson77@gmail.com", "greenberg@entryway.net",
                "jimmy@deefa.com"]
  spec.add_dependency('pdf-reader', '>=0.9.0')
  spec.description = <<END_DESC
This library provides a number of PDF::Reader[0] based tools for use in testing
PDF output.  Presently, the primary purpose of this tool is to support the
tests found in Prawn[1], a pure Ruby PDF generation library.

However, it may be useful to others, so we have made it available as a gem in
its own right.

[0] https://github.com/yob/pdf-reader
[1] https://github.com/prawnpdf/prawn
END_DESC
end
