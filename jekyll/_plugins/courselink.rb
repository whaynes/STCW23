module Jekyll
  class CourseLink < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @cnum = text.strip
    end

    def render(liquid_context)
       site = liquid_context.registers[:site]
       baseurl = site.config['baseurl']
      "[#{@cnum}](#{baseurl}/courses/#{@cnum}.html)"
    end
  end
  
  class PracticalLink < Liquid::Tag
  
  def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(liquid_context)
       site = liquid_context.registers[:site]
       baseurl = site.config['baseurl']
       "(== Practical #{site.baseurl}/tasks/#{@text}==)"
    end
  end
  
  class TableLink < Liquid::Tag
  
  def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(liquid_context)
       site = liquid_context.registers[:site]
       baseurl = site.config['baseurl']
       "(== Table #{site.baseurl}/tables/#{@text}==)"
    end
  end
  
  
  class GuideLink < Liquid::Tag
  
  def initialize(tag_name, text, tokens)
      super
      @text = text.split(",")
    end

    def render(liquid_context)
       site = liquid_context.registers[:site]
       baseurl = site.config['baseurl']
       linktext = @text[0].strip
       anchor = @text[1]
       if anchor == nil
       		anchor = linktext.gsub(/\s+\/\)\(/,'')
       	end
        "[#{linktext}](#{site.baseurl}/content/guidelines.html##{anchor.strip})"
    end
  end
end

Liquid::Template.register_tag('course', Jekyll::CourseLink)
Liquid::Template.register_tag('practical', Jekyll::PracticalLink)
Liquid::Template.register_tag('table', Jekyll::TableLink)
Liquid::Template.register_tag('do', Jekyll::GuideLink)