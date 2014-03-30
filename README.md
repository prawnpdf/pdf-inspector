# PDF::Inspector : A tool for analyzing PDF output

This library provides a number of PDF::Reader[0] based tools for use in testing
PDF output.  Presently, the primary purpose of this tool is to support the
tests found in Prawn[1], a pure Ruby PDF generation library.

However, it may be useful to others, so we have made it available as a gem in
its own right.

## Installation

The recommended installation method is via Rubygems.

```ruby
gem install pdf-inspector
```

Or put this in your Gemfile, if you use Bundler[2]:

```ruby
group :test do
  gem 'pdf-inspector', :require => "pdf/inspector"
end
```

## Usage

Check for text in the generated PDF:

```ruby
rendered_pdf = your_pdf_document.render
text_analysis = PDF::Inspector::Text.analyze(rendered_pdf)
text_analysis.strings.should include("foo")
```

or 

```ruby
text_analysis.full_text.index("foo").should_not be_nil
```

Note that `strings` is more like a list of words, and any string with a hyphen will be split up as two different
entries. `full_text` returns a string that approximates the full text of the document. 

Check number of pages

```
rendered_pdf = your_pdf_document.render
page_analysis = PDF::Inspector::Page.analyze(rendered_pdf)
page_analysis.pages.size.should == 2
```

## Licensing

Matz’s terms for Ruby, GPLv2, or GPLv3. See LICENSE for details. 

## Mailing List

pdf-inspector is maintaiend as a dependency of prawn, the ruby PDF generation
library.

Any questions or feedback should be sent to the Prawn google group.

[http://groups.google.com/group/prawn-ruby](http://groups.google.com/group/prawn-ruby)

## Authorship

pdf-inspector was originally developed by Gregory Brown as part of the Prawn[1]
project. In 2010, Gregory officially handed the project off to the Prawn core
team. Currently active maintainers include Brad Ediger, Daniel Nelson, James
Healy, and Jonathan Greenberg.

You can find the full list of Github users who have at least one patch accepted
to pdf-inspector at:

[https://github.com/sandal/pdf-inspector/contributors](https://github.com/sandal/pdf-inspector/contributors)

## References

[0]: http://github.com/yob/pdf-reader
[1]: http://github.com/sandal/prawn
[2]: http://gembundler.com/
