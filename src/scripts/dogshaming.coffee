# Description:
#   Hubot delivers a freshly shamed dog.
#
# Dependencies:
#   - nodepie: >= 0.5.x
#   - node-expat: >= 2.0.0
#
# Configuration:
#   None
#
# Commands:
#   shame a dog - Gets random pic from dogshaming.com
#
# Author:
#   creatorrr

_ENCODING = 'UTF-8'
_ENDPOINT = 'http://dogshaming.tumblr.com/rss' # or 'http://www.dogshaming.com/feed/'
_MAX_ITEMS = 50
_ERR_MSG = 'Oops! Something went wrong.'

expat = new (require 'node-expat').Parser _ENCODING # create xml parser

module.exports = (robot) ->
  robot.respond /(.)*shame a dog/i, (msg) ->
    dog = ''  # to store img url

    expat.on 'startElement', (name, attrs) ->
      if name is 'img'
        dog += attrs.src
        expat.stop() and expat.reset()  # close expat
        msg.reply dog or _ERR_MSG

    (msg.http _ENDPOINT)
       .get() (error, res, body) ->
          if error
            msg.send _ERR_MSG 
            return

          # initialize feed reader
          feed = new (require 'nodepie') body, encoding: _ENCODING
          feed.init()

          # get content
          random = Math.floor(Math.random() * feed.getItemQuantity _MAX_ITEMS)
          post = feed.getItem random
          content = post.element['content:encoded'] ? post.element['description']

          # parse content to get img
          expat.parse "<html>#{content}</html>"  # wrap content in a root element (http://www.w3.org/TR/2006/REC-xml-20060816/#sec-well-formed)
