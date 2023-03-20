module Jekyll

  class MMALink < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @file, @linktext = text.split(",") unless text.nil?
      @linktext = @file if @linktext.nil? #no linktext given
      @path = tag_name + 's/'  # default case
      case tag_name
      when 'do'  # links to an anchor in the guidelines.
        @path = 'content/guidelines.html#'
        @linktext.gsub!(/\s+\/\)\(/, '')
      when 'course'
        @linktext = @linktext.gsub('-', '&#8209;')  #non-breaking hyphen
      when 'practical'  # I dont think this is used anywhere??
        @path = 'assessments/'
        @linktext = 'CHECK ME (plug-in)'
      when 'imagelink'
        @path = 'assets/images/'
      when 'pagelink'  # must supply path in argument
        @path=''
      when 'image'  # assumes all images are in assets/images
        @path ='assets/images'
      when 'guidelines'  # commonly used link, so prefill everything
      	@path = 'content/'
      	@file = 'guidelines'   
      	@linktext = 'Assessment Guidelines'  
      end
    end

    def render(context)
      @file = Liquid::Template.parse(@file).render(context)
      @linktext = Liquid::Template.parse(@linktext).render(context)
      site = context.registers[:site]
      baseurl = site.config['baseurl']
      case tag_name
      when 'image'
      "![](#{baseurl}/#{@path}/#{@file.strip})"
      else
      "[#{@linktext}](#{baseurl}/#{@path}#{@file.strip})"
      end
    end
  end

end

Liquid::Template.register_tag('pagelink', Jekyll::MMALink)
Liquid::Template.register_tag('imagelink', Jekyll::MMALink)
Liquid::Template.register_tag('course', Jekyll::MMALink)
Liquid::Template.register_tag('practical', Jekyll::MMALink)
Liquid::Template.register_tag('table', Jekyll::MMALink)
Liquid::Template.register_tag('do', Jekyll::MMALink)
Liquid::Template.register_tag('task', Jekyll::MMALink)
Liquid::Template.register_tag('assessment', Jekyll::MMALink)
Liquid::Template.register_tag('image', Jekyll::MMALink)
Liquid::Template.register_tag('guidelines', Jekyll::MMALink)

