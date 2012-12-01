# Description:
#   Adds some sexy to the chat room.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   gimme some sexy - Gets a hot sexy lady!
#
# Author:
#   creatorrr

source = [
  () ->
    # from acidcow.com/girls/24030-models-100-pics.html
    rand = Math.floor Math.random() * 100
    num = (if rand < 10 then '0' else '') + rand
    "http://us.acidcow.com/pics/20110915/models_#{num}.jpg"

  () ->
    # from thechive.com/2012/06/02/hot-girls-in-the-middle-of-nowhere-26-photos-8
    rand = Math.floor Math.random() * 26
    "http://thechive.files.wordpress.com/2012/06/middle-of-nowhere-#{rand}.jpg"

  () ->
    # from askmen.com/specials/2012_top_99/99-paz-de-la-huerta.html
    list = [ 'http://images.askmen.com/2012_top_99/galleries/40-paz-de-la-huerta-1324306800.jpg',
    'http://images.askmen.com/2012_top_99/galleries/96-pippa-middleton-1327339128.jpg',
    'http://images.askmen.com/2012_top_99/galleries/62-tina-fey-1326756112.jpg',
    'http://images.askmen.com/2012_top_99/galleries/89-megan-fox-1324306736.jpg',
    'http://images.askmen.com/2012_top_99/galleries/11-lana-del-rey-1326756202.jpg',
    'http://images.askmen.com/2012_top_99/galleries/25-elizabeth-olsen-1326494380.jpg',
    'http://images.askmen.com/2012_top_99/galleries/46-jennifer-lopez-1327339574.jpg',
    'http://images.askmen.com/2012_top_99/galleries/97-adele-1326912726.jpg',
    'http://images.askmen.com/2012_top_99/galleries/81-alessandra-ambrosio-1324306618.jpg',
    'http://images.askmen.com/2012_top_99/galleries/1-test-entry-1327082224.jpg',
    'http://images.askmen.com/2012_top_99/galleries/57-lake-bell-1324306532.jpg',
    'http://images.askmen.com/2012_top_99/galleries/72-emilia-clarke-1324306509.jpg',
    'http://images.askmen.com/2012_top_99/galleries/56-madalina-ghenea-1327335305.jpg',
    'http://images.askmen.com/2012_top_99/galleries/78-jessica-chastain-1326924882.jpg',
    'http://images.askmen.com/2012_top_99/galleries/73-eva-amurri-1326750351.jpg',
    'http://images.askmen.com/2012_top_99/galleries/91-camilla-belle-1326750550.jpg',
    'http://images.askmen.com/2012_top_99/galleries/87-zoe-saldana-1327358885.jpg',
    'http://images.askmen.com/2012_top_99/galleries/55-sunny-leone-1324306343.jpg',
    'http://images.askmen.com/2012_top_99/galleries/77-elsa-pataky-1326820338.jpg',
    'http://images.askmen.com/2012_top_99/galleries/34-demi-moore-1326822162.jpg',
    'http://images.askmen.com/2012_top_99/galleries/74-caroline-wozniacki-1327447970.jpg',
    'http://images.askmen.com/2012_top_99/galleries/51-rose-byrne-1327355594.jpg',
    'http://images.askmen.com/2012_top_99/galleries/70-zoe-kravitz-1326822735.jpg',
    'http://images.askmen.com/2012_top_99/galleries/59-kate-moss-1326829682.jpg',
    'http://images.askmen.com/2012_top_99/galleries/67-olga-fonda-1325709858.jpg',
    'http://images.askmen.com/2012_top_99/galleries/92-kreayshawn-1325707138.jpg',
    'http://images.askmen.com/2012_top_99/galleries/75-lily-aldridge-1324306100.jpg',
    'http://images.askmen.com/2012_top_99/galleries/71-chanel-iman-1324306070.jpg',
    'http://images.askmen.com/2012_top_99/galleries/80-adriana-lima-1326911518.jpg',
    'http://images.askmen.com/2012_top_99/galleries/30-priyanka-chopra-1327355846.jpg',
    'http://images.askmen.com/2012_top_99/galleries/10-cheryl-cole-1324305946.jpg',
    'http://images.askmen.com/2012_top_99/galleries/35-arianny-celeste-1327417015.jpg',
    'http://images.askmen.com/2012_top_99/galleries/23-irina-shayk-1326912262.jpg',
    'http://images.askmen.com/2012_top_99/galleries/76-aubrey-plaza-1326912493.jpg',
    'http://images.askmen.com/2012_top_99/galleries/94-olivia-munn-1324305837.jpg',
    'http://images.askmen.com/2012_top_99/galleries/86-leryn-franco-1327688869.jpg',
    'http://images.askmen.com/2012_top_99/galleries/22-michelle-williams-1324305786.jpg',
    'http://images.askmen.com/2012_top_99/galleries/99-the-daily-girls-1327448737.jpg',
    'http://images.askmen.com/2012_top_99/galleries/66-tamara-ecclestone-1324305713.jpg',
    'http://images.askmen.com/2012_top_99/galleries/60-taylor-swift-1324305693.jpg',
    'http://images.askmen.com/2012_top_99/galleries/64-anais-mali-1324305665.jpg',
    'http://images.askmen.com/2012_top_99/galleries/65-freida-pinto-1324305635.jpg',
    'http://images.askmen.com/2012_top_99/galleries/95-georgia-jagger-1324305608.jpg',
    'http://images.askmen.com/2012_top_99/galleries/47-marisa-miller-1326994013.jpg',
    'http://images.askmen.com/2012_top_99/galleries/88-christina-ricci-1326725993.jpg',
    'http://images.askmen.com/2012_top_99/galleries/45-eva-mendes-1324308848.jpg',
    'http://images.askmen.com/2012_top_99/galleries/37-gisele-bundchen-1327340495.jpg',
    'http://images.askmen.com/2012_top_99/galleries/29-jordana-brewster-1324305466.jpg',
    'http://images.askmen.com/2012_top_99/galleries/39-bar-refaeli-1326914552.jpg',
    'http://images.askmen.com/2012_top_99/galleries/53-carey-mulligan-1326914764.jpg',
    'http://images.askmen.com/2012_top_99/galleries/24-penelope-cruz-1326914889.jpg',
    'http://images.askmen.com/2012_top_99/galleries/84-candace-bailey-1326322292.jpg',
    'http://images.askmen.com/2012_top_99/galleries/8-jennifer-lawrence-1324078873.jpg',
    'http://images.askmen.com/2012_top_99/galleries/61-nicole-scherzinger-1326925624.jpg',
    'http://images.askmen.com/2012_top_99/galleries/32-stacy-keibler-1326994320.jpg',
    'http://images.askmen.com/2012_top_99/galleries/98-krysten-ritter-1327954629.jpg',
    'http://images.askmen.com/2012_top_99/galleries/69-liu-wen-1324078684.jpg',
    'http://images.askmen.com/2012_top_99/galleries/83-alyson-hannigan-1326917065.jpg',
    'http://images.askmen.com/2012_top_99/galleries/85-amanda-seyfried-1326924930.jpg',
    'http://images.askmen.com/2012_top_99/galleries/48-brittney-palmer-1326402874.jpg',
    'http://images.askmen.com/2012_top_99/galleries/31-beyonce-1324078334.jpg',
    'http://images.askmen.com/2012_top_99/galleries/58-sara-jean-underwood-1327521499.jpg',
    'http://images.askmen.com/2012_top_99/galleries/38-anne-hathaway-1327513681.jpg',
    'http://images.askmen.com/2012_top_99/galleries/26-kristen-wiig-1327446671.jpg',
    'http://images.askmen.com/2012_top_99/galleries/63-amber-heard-1327533487.jpg',
    'http://images.askmen.com/2012_top_99/galleries/52-jessica-gomes-1324078170.jpg',
    'http://images.askmen.com/2012_top_99/galleries/49-brooklyn-decker-1327445418.jpg',
    'http://images.askmen.com/2012_top_99/galleries/4-blake-lively-1324078060.jpg',
    'http://images.askmen.com/2012_top_99/galleries/82-lara-stone-1324078010.jpg',
    'http://images.askmen.com/2012_top_99/galleries/27-kat-dennings-1324077921.jpg',
    'http://images.askmen.com/2012_top_99/galleries/28-hayley-atwell-1324077950.jpg',
    'http://images.askmen.com/2012_top_99/galleries/68-dianna-agron-1327416925.jpg',
    'http://images.askmen.com/2012_top_99/galleries/36-kristen-stewart-1324076776.jpg',
    'http://images.askmen.com/2012_top_99/galleries/6-minka-kelly-1326918244.jpg',
    'http://images.askmen.com/2012_top_99/galleries/90-emmanuelle-chriqui-1324076711.jpg',
    'http://images.askmen.com/2012_top_99/galleries/43-jessica-alba-1327966429.jpg',
    'http://images.askmen.com/2012_top_99/galleries/18-olivia-wilde-1324076653.jpg',
    'http://images.askmen.com/2012_top_99/galleries/44-kate-beckinsale-1326919010.jpg',
    'http://images.askmen.com/2012_top_99/galleries/42-natalie-portman-1324076613.jpg',
    'http://images.askmen.com/2012_top_99/galleries/50-rosie-huntington-whiteley-1324076550.jpg',
    'http://images.askmen.com/2012_top_99/galleries/9-lea-michele-1327521947.jpg',
    'http://images.askmen.com/2012_top_99/galleries/93-lady-gaga-1324076578.jpg',
    'http://images.askmen.com/2012_top_99/galleries/14-emma-watson-1327099712.jpg',
    'http://images.askmen.com/2012_top_99/galleries/3-katy-perry-1324076469.jpg',
    'http://images.askmen.com/2012_top_99/galleries/79-daisy-lowe-1327705853.jpg',
    'http://images.askmen.com/2012_top_99/galleries/17-selena-gomez-1324076413.jpg',
    'http://images.askmen.com/2012_top_99/galleries/12-mila-kunis-1324076379.jpg',
    'http://images.askmen.com/2012_top_99/galleries/13-zooey-deschanel-1326919570.jpg',
    'http://images.askmen.com/2012_top_99/galleries/5-kate-middleton-1327354277.jpg',
    'http://images.askmen.com/2012_top_99/galleries/33-candice-swanepoel-1324076275.jpg',
    'http://images.askmen.com/2012_top_99/galleries/2-rihanna-1324076255.jpg',
    'http://images.askmen.com/2012_top_99/galleries/19-kim-kardashian-1324076236.jpg',
    'http://images.askmen.com/2012_top_99/galleries/16-scarlett-johansson-1325719293.jpg',
    'http://images.askmen.com/2012_top_99/galleries/15-emma-stone-1327538444.jpg',
    'http://images.askmen.com/2012_top_99/galleries/21-nicki-minaj-1324076090.jpg',
    'http://images.askmen.com/2012_top_99/galleries/7-miranda-kerr-1324076044.jpg',
    'http://images.askmen.com/2012_top_99/galleries/54-rooney-mara-1327349689.jpg',
    'http://images.askmen.com/2012_top_99/galleries/41-kate-upton-1327954594.jpg',
    'http://images.askmen.com/2012_top_99/galleries/20-sofia-vergara-1327344160.jpg' ]
    
    rand = Math.floor Math.random() * list.length
    list[rand]

]

module.exports = (robot) ->
  robot.hear /gimme some sexy$/i, (msg) ->
    msg.send (msg.random source) null

