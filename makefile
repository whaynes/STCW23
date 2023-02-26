##################################################
#
# All data originates in the filemake database 
#     stcw2023.fmp located in $(SOURCE)
# Rendering occurs as follows:
# 1.  Export XML files from filemake
# 2.  Run `make site` to build website raw pages
# 3.  Run `bundle exec jekyll build`to build website
#
##################################################
#  SOURCES
#  File in these locations should not be deleted
#  Change/Edit as needed
#
PRJ       = /Users/whaynes/Library/CloudStorage/GoogleDrive-whaynes\@maritime.edu/My\ Drive/academics/stcw/Website\ Source/STCW23
DB        = $(SOURCE)/stcw2023.fmp12
SOURCE    = $(PRJ)/data
XSL       = $(SOURCE)/xslt
JEKYLL    = $(PRJ)/jekyll
#
##################################################
# OUTPUT Directories 
# files here are rebuild generated, can be wiped
##
XML        = $(SOURCE)/xml
SITE       = $(OUT)/_site
TABLES     = $(JEKYLL)/tables
COURSES     = $(JEKYLL)/courses
#
#################################################
# Local and remote webserver document locations
#################################################

ROOTDIR	   = ~/Sites/localhost
LOCALDIR   = $(ROOTDIR)/stcw23
LOCALURL   = http://localhost:8888/stcw23/tables
#
################################################
# TOOLS
BROWSER      = Google\ Chrome
SAXON        = /Applications/Saxon/saxon9he.jar

tables:
	java -jar $(SAXON) -s:$(XML)/tables.xml -xsl:$(XSL)/generate-tables23.xsl -o:$(TABLES)/out.html
	
courses:
	java -jar $(SAXON) -s:$(XML)/courses.xml -xsl:$(XSL)/courses23.xsl -o:$(COURSES)/out.html

	
open: 
	open $(JEKYLL)/temp
	
	
clean: 
	-rm -r $(LOCALDIR)/*
	-rm -r $(SITE)
	
publish: 
	cp -R  $(SITE)/ $(LOCALDIR)
	open -a $(BROWSER) $(LOCALURL)
