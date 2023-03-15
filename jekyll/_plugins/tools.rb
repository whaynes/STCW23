module Jekyll

  class MMALink < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @file, @linktext = text.split(",")
      @linktext = @file if @linktext.nil? #no linktext given
      @path = tag_name + 's/'  # default case
      case tag_name
      when 'do'
        @path = 'content/guidelines.html#'
        @linktext.gsub!(/\s+\/\)\(/, '')
      when 'course'
        @linktext = @linktext.gsub('-', '&#8209;')  #non-breaking hyphen
      when 'practical'
        @path = 'assessments/'
        @linktext = 'CHECK ME (plug-in)'
      when 'imagelink'
        @path = 'assets/images/'
      end
    end

    def render(context)
      @linktext = Liquid::Template.parse(@linktext).render(context)
      site = context.registers[:site]
      baseurl = site.config['baseurl']
      "[#{@linktext}](#{site.baseurl}/#{@path}#{@file.strip})"
    end
  end

end

Liquid::Template.register_tag('imagelink', Jekyll::MMALink)
Liquid::Template.register_tag('course', Jekyll::MMALink)
Liquid::Template.register_tag('practical', Jekyll::MMALink)
Liquid::Template.register_tag('table', Jekyll::MMALink)
Liquid::Template.register_tag('do', Jekyll::MMALink)
Liquid::Template.register_tag('task', Jekyll::MMALink)
Liquid::Template.register_tag('assessment', Jekyll::MMALink)
Liquid::Template.register_tag('test', Jekyll::MMALink)
