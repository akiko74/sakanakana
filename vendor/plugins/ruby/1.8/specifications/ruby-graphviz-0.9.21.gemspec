# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-graphviz}
  s.version = "0.9.21"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gregoire Lejeune"]
  s.date = %q{2011-03-26}
  s.description = %q{Ruby/Graphviz provides an interface to layout and generate images of directed graphs in a variety of formats (PostScript, PNG, etc.) using GraphViz.}
  s.email = %q{gregoire.lejeune@free.fr}
  s.executables = ["ruby2gv", "gem2gv", "dot2ruby", "git2gv", "xml2gv"]
  s.files = ["bin/ruby2gv", "bin/gem2gv", "bin/dot2ruby", "bin/git2gv", "bin/xml2gv"]
  s.homepage = %q{http://github.com/glejeune/Ruby-Graphviz}
  s.post_install_message = %q{
Since version 0.9.2, Ruby/GraphViz can use Open3.popen3 (or not)
On Windows, you can install 'win32-open3'

You need to install GraphViz (http://graphviz.org/) to use this Gem.

For more information about Ruby-Graphviz :
* Doc : http://rdoc.info/projects/glejeune/Ruby-Graphviz
* Sources : http://github.com/glejeune/Ruby-Graphviz
* NEW - Mailing List : http://groups.google.com/group/ruby-graphviz

/!\ Version 0.9.12 introduce a new solution to connect edges to node ports
For more information, see http://github.com/glejeune/Ruby-Graphviz/issues/#issue/13
So if you use node ports, maybe you need to change your code.

/!\ GraphViz::Node#name is deprecated and will be removed in version 1.0.0

/!\ :output and :file options are deprecated and will be removed in version 1.0.0

/!\ The html attribut is deprecated and will be removed in version 1.0.0
You can use the label attribut, as dot do it : :label => '<<html/>>'

/!\ Version 0.9.17 introduce GraphML (http://graphml.graphdrawing.org/) support and
graph theory !
}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby-asp}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Interface to the GraphViz graphing tool}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
