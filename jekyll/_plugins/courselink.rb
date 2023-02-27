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
end

Liquid::Template.register_tag('course', Jekyll::CourseLink)
