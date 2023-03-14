require 'liquid'
module Jekyll
  class MMDLink < Liquid::Tag
    attr_accessor :file, :linktext, :folder

    def initialize(tag_name, text, tokens)
      super
      args = Liquid::Template.parse(text).render(context) # this interprets any liguid tags like page.url
      args = text.split(",")
      @file = args[0]
      @linktext = args.length == 1 ? args[0] : args[1]
    end

    def render(liquid_context)
      site = liquid_context.registers[:site]
      baseurl = site.config['baseurl']
      "[#{@linktext}](#{site.baseurl}/#{@folder}/#{@file.strip})"
    end
  end
end

=begin
Course < MMDLink
begin
  Course.folder = 'courses'
  Course.linktext = "#{@file.gsub('-', '&#8209;')}" #non-breaking hyphen
end

Table < MMDLink
Table.folder = 'tables'

Task < MMDLink.new
Task.folder

Assessment < MMDLink
Assessment.folder = 'assessments'
Assessment.linktext = assessment.file

Imagelink < MMDLInk.new
Imagelink.folder = 'assets/images'

Guideline < MMDLink
Guideline.folder = '/content/guidelines.html#'
Guideline.linktext = @file.gsub(/\s+\/\)\(/, '')
=end


#Liquid::Template.register_tag('imagelink', Imagelink)
#Liquid::Template.register_tag('course', Course)
#Liquid::Template.register_tag('practical', Jekyll::PracticalLink)
Liquid::Template.register_tag('table', Jekyll::MMDLink)
#Liquid::Template.register_tag('do', Guideline)
#Liquid::Template.register_tag('task', Task)
#Liquid::Template.register_tag('assessment', Assessment)
