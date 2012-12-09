# Description:
#   Hubot delivers fresh items from hn.
#
# Dependencies:
#   - nodepie: 0.5.x
#
# Engines:
#   - node: >= 0.8.0
#   - npm: >= 1.1.0
#
# Configuration:
#   None
#
# Commands:
#   (hubot) hn me - Returns top 5 items on hn now.
#
# Author:
#   creatorrr

_ENCODING = 'UTF-8'
_ENDPOINT = process.env.HN_FEED or 'http://feedhint.com/handler.php?key0=amazon&key1=apple&key2=business&key3=chrome&key4=clojure&key5=cloud&key6=founder&key7=google&key8=html5&key9=javascript&key10=jquery&key11=linux&key12=lisp&key13=python&key14=ruby&key15=social&key16=startup&points=50'
_ITEMS = 5
_ERR_MSG = 'Oops! Something went wrong.'

module.exports = (robot) ->
  robot.respond /(.)*hn me/i, (msg) ->
    hn_items = ''  # to store the items

    (msg.http _ENDPOINT)
       .get() (error, res, body) ->
          if error
            msg.send _ERR_MSG 
            return

          # initialize feed reader
          feed = new (require 'nodepie') body, encoding: _ENCODING
          feed.init()

          # get content
          max = feed.getItemQuantity _MAX_ITEMS
          items = feed.getItems 0, max
          hn_items += "#{item.element.title}\n#{item.element.link}" for item in items

          # send it off!
          msg.send hn_items or _ERR_MSG
