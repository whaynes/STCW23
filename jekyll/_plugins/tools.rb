module Jekyll

class MMDLink < Liquid::Tag

 def initialize(tag_name, text, tokens)
      super
      args=text.split(",")
      @file = args[0]
      @linktext = args[1]
      @folder=""
    end

    def render(liquid_context)
       site = liquid_context.registers[:site]
       baseurl = site.config['baseurl']       
      "[#{@linktext}](#{site.baseurl}/#{@folder}/#{@file.strip})"
    end
  end

class CourseLink < MMDLink
  def initialize(tag_name, text, tokens)
    super
    @folder='courses'
    @linktext = "#{@file.gsub('-','&#8209;')}"  #non-breaking hyphen
  end
end

class TableLink < MMDLink
  def initialize(tag_name, text, tokens)
    super
    @folder='tables'
  end
end

class TaskLink < MMDLink
	def initialize(tag_name, text, tokens)
		super
		@folder='tasks'
	end
end

class AssessmentLink < MMDLink
  def initialize(tag_name, text, tokens)
    super
    @folder='assessments'
    @linktext=@file
  end
end

class ImageLink < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @file = text.strip
    end

    def render(liquid_context)
       site = liquid_context.registers[:site]
       baseurl = site.config['baseurl']
      "[#{@file}](#{baseurl}/assets/images/#{@file})"
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
       "(== Practical #{baseurl}/tasks/#{@text}==)"
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

Liquid::Template.register_tag('imagelink', Jekyll::ImageLink)
Liquid::Template.register_tag('course', Jekyll::CourseLink)
Liquid::Template.register_tag('practical', Jekyll::PracticalLink)
Liquid::Template.register_tag('table', Jekyll::TableLink)
Liquid::Template.register_tag('do', Jekyll::GuideLink)
Liquid::Template.register_tag('task', Jekyll::TaskLink)
Liquid::Template.register_tag('assessment', Jekyll::AssessmentLink)
