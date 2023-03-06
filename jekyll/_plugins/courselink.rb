module Jekyll
  class CourseLink < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @cnum = text.strip
    end

    def render(context)
      baseurl = "/stcw23"
      "[#{@cnum}](#{baseurl}/courses/#{@cnum}.html)"
    end
  end
  
  class Null < Liquid::Tag
  
  def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      "(==#{@text}==)"
    end
  end
end

Liquid::Template.register_tag('course', Jekyll::CourseLink)
Liquid::Template.register_tag('Course', Jekyll::CourseLink)
Liquid::Template.register_tag('Practical', Jekyll::Null)
Liquid::Template.register_tag('Table', Jekyll::Null)
