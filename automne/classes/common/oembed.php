<?php
// +----------------------------------------------------------------------+
// | Automne (TM)														  |
// +----------------------------------------------------------------------+
// | Copyright (c) 2000-2010 WS Interactive								  |
// +----------------------------------------------------------------------+
// | Automne is subject to version 2.0 or above of the GPL license.		  |
// | The license text is bundled with this package in the file			  |
// | LICENSE-GPL, and is available through the world-wide-web at		  |
// | http://www.gnu.org/copyleft/gpl.html.								  |
// +----------------------------------------------------------------------+
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>      |
// +----------------------------------------------------------------------+

/**
  * Class CMS_oembed
  *
  * Represent an oembed resource object
  *
  * @package Automne
  * @subpackage common
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

class CMS_oembed extends CMS_grandFather
{
	protected $_url;
	protected $_maxwidth;
	protected $_maxheight;
	protected $_provider;
	protected $_datas = array();
	
	public $providers = array(
		array(
			'api'		=> 'http://www.youtube.com/oembed',
			'scheme'	=> array('http://www.youtube.com/watch?*')
		),
		array(
			'api'		=> 'http://www.flickr.com/services/oembed/',
			'scheme'	=> array('http://*.flickr.com/*')
		),
		array(
			'api'		=> 'http://lab.viddler.com/services/oembed/',
			'scheme'	=> array('http://*.viddler.com/*')
		),
		array(
			'api'		=> 'http://qik.com/api/oembed.json',
			'scheme'	=> array('http://qik.com/video/*', 'http://qik.com/*')
		),
		array(
			'api'		=> 'http://revision3.com/api/oembed/',
			'scheme'	=> array('http://*.revision3.com/*')
		),
		array(
			'api'		=> 'http://www.hulu.com/api/oembed.json',
			'scheme'	=> array('http://www.hulu.com/watch/*')
		),
		array(
			'api'		=> 'http://www.vimeo.com/api/oembed.json',
			'scheme'	=> array('http://www.vimeo.com/*', 'http://www.vimeo.com/groups/*/*')
		),
		array(
			'api'		=> 'http://www.polleverywhere.com/services/oembed/',
			'scheme'	=> array('http://www.polleverywhere.com/polls/*', 'http://www.polleverywhere.com/multiple_choice_polls/*', 'http://www.polleverywhere.com/free_text_polls/*')
		),
		array(
			'api'		=> 'http://www.dailymotion.com/services/oembed',
			'scheme'	=> array('http://www.dailymotion.com/video/*')
		),
		array(
			'api'		=> 'http://www.screenr.com/api/oembed.json',
			'scheme'	=> array('http://*screenr.com/*')
		),
		array(
			'api'		=> 'http://www.scribd.com/services/oembed',
			'scheme'	=> array('http://*scribd.com/*')
		),
		array(
			'api'		=> 'http://api.embed.ly/1/oembed',
			/* Regexp from http://api.embed.ly/tools/generator/
			 * Changed: 
			 *	maps\.google\.com\/ 	=> maps\.google\..*\/
			 *	www\.wikipedia\.org\/	=> .*\.wikipedia\.org\/
			 */
			'regexp'	=> '/((http:\/\/(.*yfrog\..*\/.*|www\.flickr\.com\/photos\/.*|flic\.kr\/.*|twitpic\.com\/.*|www\.twitpic\.com\/.*|twitpic\.com\/photos\/.*|www\.twitpic\.com\/photos\/.*|.*imgur\.com\/.*|.*\.posterous\.com\/.*|post\.ly\/.*|twitgoo\.com\/.*|i.*\.photobucket\.com\/albums\/.*|s.*\.photobucket\.com\/albums\/.*|phodroid\.com\/.*\/.*\/.*|www\.mobypicture\.com\/user\/.*\/view\/.*|moby\.to\/.*|xkcd\.com\/.*|www\.xkcd\.com\/.*|imgs\.xkcd\.com\/.*|www\.asofterworld\.com\/index\.php\?id=.*|www\.asofterworld\.com\/.*\.jpg|asofterworld\.com\/.*\.jpg|www\.qwantz\.com\/index\.php\?comic=.*|23hq\.com\/.*\/photo\/.*|www\.23hq\.com\/.*\/photo\/.*|.*dribbble\.com\/shots\/.*|drbl\.in\/.*|.*\.smugmug\.com\/.*|.*\.smugmug\.com\/.*#.*|emberapp\.com\/.*\/images\/.*|emberapp\.com\/.*\/images\/.*\/sizes\/.*|emberapp\.com\/.*\/collections\/.*\/.*|emberapp\.com\/.*\/categories\/.*\/.*\/.*|embr\.it\/.*|picasaweb\.google\.com.*\/.*\/.*#.*|picasaweb\.google\.com.*\/lh\/photo\/.*|picasaweb\.google\.com.*\/.*\/.*|dailybooth\.com\/.*\/.*|brizzly\.com\/pic\/.*|pics\.brizzly\.com\/.*\.jpg|img\.ly\/.*|www\.tinypic\.com\/view\.php.*|tinypic\.com\/view\.php.*|www\.tinypic\.com\/player\.php.*|tinypic\.com\/player\.php.*|www\.tinypic\.com\/r\/.*\/.*|tinypic\.com\/r\/.*\/.*|.*\.tinypic\.com\/.*\.jpg|.*\.tinypic\.com\/.*\.png|meadd\.com\/.*\/.*|meadd\.com\/.*|.*\.deviantart\.com\/art\/.*|.*\.deviantart\.com\/gallery\/.*|.*\.deviantart\.com\/#\/.*|fav\.me\/.*|.*\.deviantart\.com|.*\.deviantart\.com\/gallery|.*\.deviantart\.com\/.*\/.*\.jpg|.*\.deviantart\.com\/.*\/.*\.gif|.*\.deviantart\.net\/.*\/.*\.jpg|.*\.deviantart\.net\/.*\/.*\.gif|www\.fotopedia\.com\/.*\/.*|fotopedia\.com\/.*\/.*|photozou\.jp\/photo\/show\/.*\/.*|photozou\.jp\/photo\/photo_only\/.*\/.*|instagr\.am\/p\/.*|instagram\.com\/p\/.*|skitch\.com\/.*\/.*\/.*|img\.skitch\.com\/.*|share\.ovi\.com\/media\/.*\/.*|www\.questionablecontent\.net\/|questionablecontent\.net\/|www\.questionablecontent\.net\/view\.php.*|questionablecontent\.net\/view\.php.*|questionablecontent\.net\/comics\/.*\.png|www\.questionablecontent\.net\/comics\/.*\.png|picplz\.com\/.*|twitrpix\.com\/.*|.*\.twitrpix\.com\/.*|www\.someecards\.com\/.*\/.*|someecards\.com\/.*\/.*|some\.ly\/.*|www\.some\.ly\/.*|pikchur\.com\/.*|achewood\.com\/.*|www\.achewood\.com\/.*|achewood\.com\/index\.php.*|www\.achewood\.com\/index\.php.*|www\.whosay\.com\/content\/.*|www\.whosay\.com\/photos\/.*|www\.whosay\.com\/videos\/.*|say\.ly\/.*|ow\.ly\/i\/.*|color\.com\/s\/.*|bnter\.com\/convo\/.*|mlkshk\.com\/p\/.*|lockerz\.com\/s\/.*|soundcloud\.com\/.*|soundcloud\.com\/.*\/.*|soundcloud\.com\/.*\/sets\/.*|soundcloud\.com\/groups\/.*|snd\.sc\/.*|www\.last\.fm\/music\/.*|www\.last\.fm\/music\/+videos\/.*|www\.last\.fm\/music\/+images\/.*|www\.last\.fm\/music\/.*\/_\/.*|www\.last\.fm\/music\/.*\/.*|www\.mixcloud\.com\/.*\/.*\/|www\.radionomy\.com\/.*\/radio\/.*|radionomy\.com\/.*\/radio\/.*|www\.hark\.com\/clips\/.*|www\.rdio\.com\/#\/artist\/.*\/album\/.*|www\.rdio\.com\/artist\/.*\/album\/.*|www\.zero-inch\.com\/.*|.*\.bandcamp\.com\/|.*\.bandcamp\.com\/track\/.*|.*\.bandcamp\.com\/album\/.*|freemusicarchive\.org\/music\/.*|www\.freemusicarchive\.org\/music\/.*|freemusicarchive\.org\/curator\/.*|www\.freemusicarchive\.org\/curator\/.*|www\.npr\.org\/.*\/.*\/.*\/.*\/.*|www\.npr\.org\/.*\/.*\/.*\/.*\/.*\/.*|www\.npr\.org\/.*\/.*\/.*\/.*\/.*\/.*\/.*|www\.npr\.org\/templates\/story\/story\.php.*|huffduffer\.com\/.*\/.*|www\.audioboo\.fm\/boos\/.*|audioboo\.fm\/boos\/.*|boo\.fm\/b.*|www\.xiami\.com\/song\/.*|xiami\.com\/song\/.*|www\.saynow\.com\/playMsg\.html.*|www\.saynow\.com\/playMsg\.html.*|grooveshark\.com\/.*|radioreddit\.com\/songs.*|www\.radioreddit\.com\/songs.*|radioreddit\.com\/\?q=songs.*|www\.radioreddit\.com\/\?q=songs.*|www\.gogoyoko\.com\/song\/.*|.*amazon\..*\/gp\/product\/.*|.*amazon\..*\/.*\/dp\/.*|.*amazon\..*\/dp\/.*|.*amazon\..*\/o\/ASIN\/.*|.*amazon\..*\/gp\/offer-listing\/.*|.*amazon\..*\/.*\/ASIN\/.*|.*amazon\..*\/gp\/product\/images\/.*|.*amazon\..*\/gp\/aw\/d\/.*|www\.amzn\.com\/.*|amzn\.com\/.*|www\.shopstyle\.com\/browse.*|www\.shopstyle\.com\/action\/apiVisitRetailer.*|api\.shopstyle\.com\/action\/apiVisitRetailer.*|www\.shopstyle\.com\/action\/viewLook.*|gist\.github\.com\/.*|twitter\.com\/.*\/status\/.*|twitter\.com\/.*\/statuses\/.*|www\.twitter\.com\/.*\/status\/.*|www\.twitter\.com\/.*\/statuses\/.*|mobile\.twitter\.com\/.*\/status\/.*|mobile\.twitter\.com\/.*\/statuses\/.*|www\.crunchbase\.com\/.*\/.*|crunchbase\.com\/.*\/.*|www\.slideshare\.net\/.*\/.*|www\.slideshare\.net\/mobile\/.*\/.*|slidesha\.re\/.*|scribd\.com\/doc\/.*|www\.scribd\.com\/doc\/.*|scribd\.com\/mobile\/documents\/.*|www\.scribd\.com\/mobile\/documents\/.*|screenr\.com\/.*|polldaddy\.com\/community\/poll\/.*|polldaddy\.com\/poll\/.*|answers\.polldaddy\.com\/poll\/.*|www\.5min\.com\/Video\/.*|www\.howcast\.com\/videos\/.*|www\.screencast\.com\/.*\/media\/.*|screencast\.com\/.*\/media\/.*|www\.screencast\.com\/t\/.*|screencast\.com\/t\/.*|issuu\.com\/.*\/docs\/.*|www\.kickstarter\.com\/projects\/.*\/.*|www\.scrapblog\.com\/viewer\/viewer\.aspx.*|ping\.fm\/p\/.*|chart\.ly\/symbols\/.*|chart\.ly\/.*|maps\.google\..*\/maps\?.*|maps\.google\..*\/\?.*|maps\.google\..*\/maps\/ms\?.*|.*\.craigslist\.org\/.*\/.*|my\.opera\.com\/.*\/albums\/show\.dml\?id=.*|my\.opera\.com\/.*\/albums\/showpic\.dml\?album=.*&picture=.*|tumblr\.com\/.*|.*\.tumblr\.com\/post\/.*|www\.polleverywhere\.com\/polls\/.*|www\.polleverywhere\.com\/multiple_choice_polls\/.*|www\.polleverywhere\.com\/free_text_polls\/.*|www\.quantcast\.com\/wd:.*|www\.quantcast\.com\/.*|siteanalytics\.compete\.com\/.*|statsheet\.com\/statplot\/charts\/.*\/.*\/.*\/.*|statsheet\.com\/statplot\/charts\/e\/.*|statsheet\.com\/.*\/teams\/.*\/.*|statsheet\.com\/tools\/chartlets\?chart=.*|.*\.status\.net\/notice\/.*|identi\.ca\/notice\/.*|brainbird\.net\/notice\/.*|shitmydadsays\.com\/notice\/.*|www\.studivz\.net\/Profile\/.*|www\.studivz\.net\/l\/.*|www\.studivz\.net\/Groups\/Overview\/.*|www\.studivz\.net\/Gadgets\/Info\/.*|www\.studivz\.net\/Gadgets\/Install\/.*|www\.studivz\.net\/.*|www\.meinvz\.net\/Profile\/.*|www\.meinvz\.net\/l\/.*|www\.meinvz\.net\/Groups\/Overview\/.*|www\.meinvz\.net\/Gadgets\/Info\/.*|www\.meinvz\.net\/Gadgets\/Install\/.*|www\.meinvz\.net\/.*|www\.schuelervz\.net\/Profile\/.*|www\.schuelervz\.net\/l\/.*|www\.schuelervz\.net\/Groups\/Overview\/.*|www\.schuelervz\.net\/Gadgets\/Info\/.*|www\.schuelervz\.net\/Gadgets\/Install\/.*|www\.schuelervz\.net\/.*|myloc\.me\/.*|pastebin\.com\/.*|pastie\.org\/.*|www\.pastie\.org\/.*|redux\.com\/stream\/item\/.*\/.*|redux\.com\/f\/.*\/.*|www\.redux\.com\/stream\/item\/.*\/.*|www\.redux\.com\/f\/.*\/.*|cl\.ly\/.*|cl\.ly\/.*\/content|speakerdeck\.com\/u\/.*\/p\/.*|www\.kiva\.org\/lend\/.*|www\.timetoast\.com\/timelines\/.*|storify\.com\/.*\/.*|.*meetup\.com\/.*|meetu\.ps\/.*|www\.dailymile\.com\/people\/.*\/entries\/.*|.*\.kinomap\.com\/.*|www\.metacdn\.com\/api\/users\/.*\/content\/.*|www\.metacdn\.com\/api\/users\/.*\/media\/.*|prezi\.com\/.*\/.*|.*\.uservoice\.com\/.*\/suggestions\/.*|formspring\.me\/.*|www\.formspring\.me\/.*|formspring\.me\/.*\/q\/.*|www\.formspring\.me\/.*\/q\/.*|twitlonger\.com\/show\/.*|www\.twitlonger\.com\/show\/.*|tl\.gd\/.*|www\.qwiki\.com\/q\/.*|crocodoc\.com\/.*|.*\.crocodoc\.com\/.*|.*\.wikipedia\.org\/wiki\/.*|.*\.wikimedia\.org\/wiki\/File.*|.*youtube\.com\/watch.*|.*\.youtube\.com\/v\/.*|youtu\.be\/.*|.*\.youtube\.com\/user\/.*|.*\.youtube\.com\/.*#.*\/.*|m\.youtube\.com\/watch.*|m\.youtube\.com\/index.*|.*\.youtube\.com\/profile.*|.*\.youtube\.com\/view_play_list.*|.*\.youtube\.com\/playlist.*|.*justin\.tv\/.*|.*justin\.tv\/.*\/b\/.*|.*justin\.tv\/.*\/w\/.*|www\.ustream\.tv\/recorded\/.*|www\.ustream\.tv\/channel\/.*|www\.ustream\.tv\/.*|qik\.com\/video\/.*|qik\.com\/.*|qik\.ly\/.*|.*revision3\.com\/.*|.*\.dailymotion\.com\/video\/.*|.*\.dailymotion\.com\/.*\/video\/.*|collegehumor\.com\/video:.*|collegehumor\.com\/video\/.*|www\.collegehumor\.com\/video:.*|www\.collegehumor\.com\/video\/.*|.*twitvid\.com\/.*|www\.break\.com\/.*\/.*|vids\.myspace\.com\/index\.cfm\?fuseaction=vids\.individual&videoid.*|www\.myspace\.com\/index\.cfm\?fuseaction=.*&videoid.*|www\.metacafe\.com\/watch\/.*|www\.metacafe\.com\/w\/.*|blip\.tv\/.*\/.*|.*\.blip\.tv\/.*\/.*|video\.google\.com\/videoplay\?.*|.*revver\.com\/video\/.*|video\.yahoo\.com\/watch\/.*\/.*|video\.yahoo\.com\/network\/.*|.*viddler\.com\/explore\/.*\/videos\/.*|liveleak\.com\/view\?.*|www\.liveleak\.com\/view\?.*|animoto\.com\/play\/.*|dotsub\.com\/view\/.*|www\.overstream\.net\/view\.php\?oid=.*|www\.livestream\.com\/.*|www\.worldstarhiphop\.com\/videos\/video.*\.php\?v=.*|worldstarhiphop\.com\/videos\/video.*\.php\?v=.*|teachertube\.com\/viewVideo\.php.*|www\.teachertube\.com\/viewVideo\.php.*|www1\.teachertube\.com\/viewVideo\.php.*|www2\.teachertube\.com\/viewVideo\.php.*|bambuser\.com\/v\/.*|bambuser\.com\/channel\/.*|bambuser\.com\/channel\/.*\/broadcast\/.*|www\.schooltube\.com\/video\/.*\/.*|bigthink\.com\/ideas\/.*|bigthink\.com\/series\/.*|sendables\.jibjab\.com\/view\/.*|sendables\.jibjab\.com\/originals\/.*|www\.xtranormal\.com\/watch\/.*|socialcam\.com\/v\/.*|www\.socialcam\.com\/v\/.*|dipdive\.com\/media\/.*|dipdive\.com\/member\/.*\/media\/.*|dipdive\.com\/v\/.*|.*\.dipdive\.com\/media\/.*|.*\.dipdive\.com\/v\/.*|v\.youku\.com\/v_show\/.*\.html|v\.youku\.com\/v_playlist\/.*\.html|www\.snotr\.com\/video\/.*|snotr\.com\/video\/.*|video\.jardenberg\.se\/.*|www\.clipfish\.de\/.*\/.*\/video\/.*|www\.myvideo\.de\/watch\/.*|www\.whitehouse\.gov\/photos-and-video\/video\/.*|www\.whitehouse\.gov\/video\/.*|wh\.gov\/photos-and-video\/video\/.*|wh\.gov\/video\/.*|www\.hulu\.com\/watch.*|www\.hulu\.com\/w\/.*|hulu\.com\/watch.*|hulu\.com\/w\/.*|.*crackle\.com\/c\/.*|www\.fancast\.com\/.*\/videos|www\.funnyordie\.com\/videos\/.*|www\.funnyordie\.com\/m\/.*|funnyordie\.com\/videos\/.*|funnyordie\.com\/m\/.*|www\.vimeo\.com\/groups\/.*\/videos\/.*|www\.vimeo\.com\/.*|vimeo\.com\/groups\/.*\/videos\/.*|vimeo\.com\/.*|vimeo\.com\/m\/#\/.*|www\.ted\.com\/talks\/.*\.html.*|www\.ted\.com\/talks\/lang\/.*\/.*\.html.*|www\.ted\.com\/index\.php\/talks\/.*\.html.*|www\.ted\.com\/index\.php\/talks\/lang\/.*\/.*\.html.*|.*nfb\.ca\/film\/.*|www\.thedailyshow\.com\/watch\/.*|www\.thedailyshow\.com\/full-episodes\/.*|www\.thedailyshow\.com\/collection\/.*\/.*\/.*|movies\.yahoo\.com\/movie\/.*\/video\/.*|movies\.yahoo\.com\/movie\/.*\/trailer|movies\.yahoo\.com\/movie\/.*\/video|www\.colbertnation\.com\/the-colbert-report-collections\/.*|www\.colbertnation\.com\/full-episodes\/.*|www\.colbertnation\.com\/the-colbert-report-videos\/.*|www\.comedycentral\.com\/videos\/index\.jhtml\?.*|www\.theonion\.com\/video\/.*|theonion\.com\/video\/.*|wordpress\.tv\/.*\/.*\/.*\/.*\/|www\.traileraddict\.com\/trailer\/.*|www\.traileraddict\.com\/clip\/.*|www\.traileraddict\.com\/poster\/.*|www\.escapistmagazine\.com\/videos\/.*|www\.trailerspy\.com\/trailer\/.*\/.*|www\.trailerspy\.com\/trailer\/.*|www\.trailerspy\.com\/view_video\.php.*|www\.atom\.com\/.*\/.*\/|fora\.tv\/.*\/.*\/.*\/.*|www\.spike\.com\/video\/.*|www\.gametrailers\.com\/video\/.*|gametrailers\.com\/video\/.*|www\.koldcast\.tv\/video\/.*|www\.koldcast\.tv\/#video:.*|techcrunch\.tv\/watch.*|techcrunch\.tv\/.*\/watch.*|mixergy\.com\/.*|video\.pbs\.org\/video\/.*|www\.zapiks\.com\/.*|tv\.digg\.com\/diggnation\/.*|tv\.digg\.com\/diggreel\/.*|tv\.digg\.com\/diggdialogg\/.*|www\.trutv\.com\/video\/.*|www\.nzonscreen\.com\/title\/.*|nzonscreen\.com\/title\/.*|app\.wistia\.com\/embed\/medias\/.*|hungrynation\.tv\/.*\/episode\/.*|www\.hungrynation\.tv\/.*\/episode\/.*|hungrynation\.tv\/episode\/.*|www\.hungrynation\.tv\/episode\/.*|indymogul\.com\/.*\/episode\/.*|www\.indymogul\.com\/.*\/episode\/.*|indymogul\.com\/episode\/.*|www\.indymogul\.com\/episode\/.*|channelfrederator\.com\/.*\/episode\/.*|www\.channelfrederator\.com\/.*\/episode\/.*|channelfrederator\.com\/episode\/.*|www\.channelfrederator\.com\/episode\/.*|tmiweekly\.com\/.*\/episode\/.*|www\.tmiweekly\.com\/.*\/episode\/.*|tmiweekly\.com\/episode\/.*|www\.tmiweekly\.com\/episode\/.*|99dollarmusicvideos\.com\/.*\/episode\/.*|www\.99dollarmusicvideos\.com\/.*\/episode\/.*|99dollarmusicvideos\.com\/episode\/.*|www\.99dollarmusicvideos\.com\/episode\/.*|ultrakawaii\.com\/.*\/episode\/.*|www\.ultrakawaii\.com\/.*\/episode\/.*|ultrakawaii\.com\/episode\/.*|www\.ultrakawaii\.com\/episode\/.*|barelypolitical\.com\/.*\/episode\/.*|www\.barelypolitical\.com\/.*\/episode\/.*|barelypolitical\.com\/episode\/.*|www\.barelypolitical\.com\/episode\/.*|barelydigital\.com\/.*\/episode\/.*|www\.barelydigital\.com\/.*\/episode\/.*|barelydigital\.com\/episode\/.*|www\.barelydigital\.com\/episode\/.*|threadbanger\.com\/.*\/episode\/.*|www\.threadbanger\.com\/.*\/episode\/.*|threadbanger\.com\/episode\/.*|www\.threadbanger\.com\/episode\/.*|vodcars\.com\/.*\/episode\/.*|www\.vodcars\.com\/.*\/episode\/.*|vodcars\.com\/episode\/.*|www\.vodcars\.com\/episode\/.*|confreaks\.net\/videos\/.*|www\.confreaks\.net\/videos\/.*|video\.allthingsd\.com\/video\/.*|videos\.nymag\.com\/.*|aniboom\.com\/animation-video\/.*|www\.aniboom\.com\/animation-video\/.*|clipshack\.com\/Clip\.aspx\?.*|www\.clipshack\.com\/Clip\.aspx\?.*|grindtv\.com\/.*\/video\/.*|www\.grindtv\.com\/.*\/video\/.*|ifood\.tv\/recipe\/.*|ifood\.tv\/video\/.*|ifood\.tv\/channel\/user\/.*|www\.ifood\.tv\/recipe\/.*|www\.ifood\.tv\/video\/.*|www\.ifood\.tv\/channel\/user\/.*|logotv\.com\/video\/.*|www\.logotv\.com\/video\/.*|lonelyplanet\.com\/Clip\.aspx\?.*|www\.lonelyplanet\.com\/Clip\.aspx\?.*|streetfire\.net\/video\/.*\.htm.*|www\.streetfire\.net\/video\/.*\.htm.*|trooptube\.tv\/videos\/.*|www\.trooptube\.tv\/videos\/.*|sciencestage\.com\/v\/.*\.html|sciencestage\.com\/a\/.*\.html|www\.sciencestage\.com\/v\/.*\.html|www\.sciencestage\.com\/a\/.*\.html|www\.godtube\.com\/featured\/video\/.*|godtube\.com\/featured\/video\/.*|www\.godtube\.com\/watch\/.*|godtube\.com\/watch\/.*|www\.tangle\.com\/view_video.*|mediamatters\.org\/mmtv\/.*|www\.clikthrough\.com\/theater\/video\/.*|espn\.go\.com\/video\/clip.*|espn\.go\.com\/.*\/story.*|abcnews\.com\/.*\/video\/.*|abcnews\.com\/video\/playerIndex.*|washingtonpost\.com\/wp-dyn\/.*\/video\/.*\/.*\/.*\/.*|www\.washingtonpost\.com\/wp-dyn\/.*\/video\/.*\/.*\/.*\/.*|www\.boston\.com\/video.*|boston\.com\/video.*|www\.facebook\.com\/photo\.php.*|www\.facebook\.com\/video\/video\.php.*|www\.facebook\.com\/v\/.*|cnbc\.com\/id\/.*\?.*video.*|www\.cnbc\.com\/id\/.*\?.*video.*|cnbc\.com\/id\/.*\/play\/1\/video\/.*|www\.cnbc\.com\/id\/.*\/play\/1\/video\/.*|cbsnews\.com\/video\/watch\/.*|www\.google\.com\/buzz\/.*\/.*\/.*|www\.google\.com\/buzz\/.*|www\.google\.com\/profiles\/.*|google\.com\/buzz\/.*\/.*\/.*|google\.com\/buzz\/.*|google\.com\/profiles\/.*|www\.cnn\.com\/video\/.*|edition\.cnn\.com\/video\/.*|money\.cnn\.com\/video\/.*|today\.msnbc\.msn\.com\/id\/.*\/vp\/.*|www\.msnbc\.msn\.com\/id\/.*\/vp\/.*|www\.msnbc\.msn\.com\/id\/.*\/ns\/.*|today\.msnbc\.msn\.com\/id\/.*\/ns\/.*|multimedia\.foxsports\.com\/m\/video\/.*\/.*|msn\.foxsports\.com\/video.*|www\.globalpost\.com\/video\/.*|www\.globalpost\.com\/dispatch\/.*|guardian\.co\.uk\/.*\/video\/.*\/.*\/.*\/.*|www\.guardian\.co\.uk\/.*\/video\/.*\/.*\/.*\/.*|bravotv\.com\/.*\/.*\/videos\/.*|www\.bravotv\.com\/.*\/.*\/videos\/.*|video\.nationalgeographic\.com\/.*\/.*\/.*\.html|dsc\.discovery\.com\/videos\/.*|animal\.discovery\.com\/videos\/.*|health\.discovery\.com\/videos\/.*|investigation\.discovery\.com\/videos\/.*|military\.discovery\.com\/videos\/.*|planetgreen\.discovery\.com\/videos\/.*|science\.discovery\.com\/videos\/.*|tlc\.discovery\.com\/videos\/.*|video\.forbes\.com\/fvn\/.*))|(https:\/\/(skitch\.com\/.*\/.*\/.*|img\.skitch\.com\/.*|twitter\.com\/.*\/status\/.*|twitter\.com\/.*\/statuses\/.*|www\.twitter\.com\/.*\/status\/.*|www\.twitter\.com\/.*\/statuses\/.*|mobile\.twitter\.com\/.*\/status\/.*|mobile\.twitter\.com\/.*\/statuses\/.*|crocodoc\.com\/.*|.*\.crocodoc\.com\/.*|.*youtube\.com\/watch.*|.*\.youtube\.com\/v\/.*|app\.wistia\.com\/embed\/medias\/.*|www\.facebook\.com\/photo\.php.*|www\.facebook\.com\/video\/video\.php.*|www\.facebook\.com\/v\/.*)))/i'
		),
	);
	
	/**
	  * Constructor.
	  * initialize object.
	  *
	  * @param string $url the url of the distant oembed resource to get
	  * @param integer $maxwidth the max width to apply to distant oembed resource (optional)
	  * @param integer $maxheight the max height to apply to distant oembed resource (optional)
	  * @return void
	  * @access public
	  */
	function __construct($url, $maxwidth='', $maxheight='') {
		if (!@parse_url($url)) {
			$this->raiseError('Malformed url: '.$url);
			return;
		}
		$this->_url = $url;
		$this->_maxwidth = $maxwidth && io::isPositiveInteger($maxwidth) ? $maxwidth : '';
		$this->_maxheight = $maxheight && io::isPositiveInteger($maxheight) ? $maxheight : '';
	}
	
	protected function _getProvider() {
		if ($this->_provider) {
			return true;
		}
		if (!$this->_url) {
			$this->raiseError('No valid url given');
			return false;
		}
		$regreplace = array(
			'http://'	=> '',
			'https://'	=> '',
			'.'			=> '\.',
			'?'			=> '\?',
			'*'			=> '.*',
			'/'			=> '\/',
		);
		foreach ($this->providers as $provider) {
			$founded = false;
			if (isset($provider['scheme']) && $provider['scheme']) {
				foreach ($provider['scheme'] as $scheme) {
					//convert scheme to regexp
					$regexp = str_replace(array_keys($regreplace), $regreplace, $scheme);
					if (preg_match('/('.$regexp.')/i', $this->_url)) {
						$founded = true;
						break;
					}
				}
			} elseif(isset($provider['regexp']) && $provider['regexp']) {
				if (preg_match($provider['regexp'], $this->_url)) {
					$founded = true;
				}
			}
			if ($founded) {
				break;
			}
		}
		if ($founded) {
			$this->_provider = $provider['api'];
			return true;
		}
		return false;
	}
	
	function hasProvider() {
		//load provider if needed
		if (!$this->_getProvider()) {
			return false;
		}
		return $this->_provider ? true : false;
	}
	
	function getProvider() {
		//load provider if needed
		if (!$this->_getProvider()) {
			return false;
		}
		return $this->_provider;
	}
	
	protected function _retrieveDatas() {
		if ($this->_datas) {
			return true;
		}
		//load provider
		if (!$this->_getProvider()) {
			return false;
		}
		//set cache lifetime
		$lifetime = 86400; //(default : 24 hours)
		//create cache id from files, compression status and last time files access
		$cacheId = md5(serialize(array(
			'url'		=> $this->_url,
			'maxwidth'	=> io::isPositiveInteger($this->_maxwidth) ? $this->_maxwidth : '',
			'maxheight'	=> io::isPositiveInteger($this->_maxheight) ? $this->_maxheight : '',
		)));
		//create cache object
		$cache = new CMS_cache($cacheId, 'oembed', $lifetime, false);
		$datas = '';
		if (!$cache->exist() || !($datas = $cache->load())) {
			try {
				$client = new Zend_Http_Client();
				$client->setUri($this->getProvider());
				$client->setConfig(array(
				    'maxredirects'	=> 5,
				    'timeout'		=> 30,
					'useragent'		=> 'Mozilla/5.0 (compatible; Automne/'.AUTOMNE_VERSION.'; +http://www.automne-cms.org)',
				));
				 
				// Ajout de plusieurs param�tres en un appel
				$client->setParameterGet(array(
				    'url'		=> $this->_url,
					'format'	=> 'json',
				));
				if (io::isPositiveInteger($this->_maxwidth)) {
					$client->setParameterGet('maxwidth', $this->_maxwidth);
				}
				if (io::isPositiveInteger($this->_maxheight)) {
					$client->setParameterGet('maxheight', $this->_maxheight);
				}
				$client->request();
				$response = $client->getLastResponse();
			} catch (Zend_Http_Client_Exception $e) {
				$this->raiseError('Error for url: '.$this->_url.' - '.$e->getMessage());
			}
			if (isset($response) && $response->isSuccessful()) {
				$jsonString = $response->getBody();
				$datas = json_decode($jsonString, true);
			} else {
				if (isset($response)) {
					$this->raiseError('Error for oembed url: '.$this->_url.' (Provider: '.$this->getProvider().') - '.$response->getStatus().' - '.$response->getMessage());
				} else {
					$this->raiseError('Error for oembed url: '.$this->_url.' (Provider: '.$this->getProvider().') - no response object');
				}
				//create error datas
				$datas = array(
					'error'			=> $response->getStatus(),
					'cache_age'		=> 7200,
					'type'			=> 'error'
				);
			}
			if ($cache) {
				if (isset($datas['cache_age']) && io::isPositiveInteger($datas['cache_age']) && $datas['cache_age'] != 86400) {
					//create cache object with new lifetime
					$cache = new CMS_cache($cacheId, 'oembed', $datas['cache_age'], false);
				}
				$cache->save($datas, array('type' => 'oembed', 'provider' => $this->getProvider()));
			}
		}
		if (!$datas) {
			return false;
		}
		$this->_datas = $datas;
		return true;
	}
	
	function getDatas() {
		//load datas if needed
		if (!$this->_retrieveDatas()) {
			return array();
		}
		return $this->_datas;
	}
	
	function getHTML($attributes = array(), $inframe = false) {
		//load datas
		if (!($datas = $this->getDatas())) {
			return '';
		}
		if (!isset($datas['type'])) {
			$this->raiseError('Missing datas type: '.$datas['type'].' for url: '.$this->_url);
			return '';
		}
		if ($datas['type'] == 'error') {
			return '';
		}
		$style = '';
		if (!isset($attributes['style'])) {
			if (io::isPositiveInteger($this->_maxwidth) && !io::isPositiveInteger($this->_maxheight)) {
				$style = ' style="max-width:'.$this->_maxwidth.'px;overflow:auto;"';
			}
			if (!io::isPositiveInteger($this->_maxwidth) && io::isPositiveInteger($this->_maxheight)) {
				$style = ' style="max-height:'.$this->_maxheight.'px;overflow:auto;"';
			}
			if (io::isPositiveInteger($this->_maxwidth) && io::isPositiveInteger($this->_maxheight)) {
				$style = ' style="max-width:'.$this->_maxwidth.'px;max-height:'.$this->_maxheight.'px;overflow:auto;"';
			}
		}
		$attr='';
		foreach ($attributes as $attName => $attValue) {
			$attName = io::htmlspecialchars(trim(strtolower($attName)));
			if ($attValue && (!in_array($attName, array('src', 'href')) && !($datas['type'] != 'link' && $attName == 'target'))) {
				$attr .= ' '.$attName.'="'.io::htmlspecialchars($attValue).'"';
			}
		}
		switch ($datas['type']) {
			case 'photo':
				if (!isset($datas['url'])) {
					return '';
				}
				return '<img src="'.io::htmlspecialchars($datas['url']).'"'.(isset($datas['title']) && !isset($attributes['title']) ? ' title="'.io::htmlspecialchars($datas['title']).'"' : '').$style.$attr.' />';
			break;
			case 'rich':
			case 'video':
				if (!isset($datas['html'])) {
					return '';
				}
				return (!$inframe) ? $this->_getIframe($style, $attr) : $this->_addWmode($datas['html']);
			break;
			case 'link':
				if (isset($datas['html'])) {
					return (!$inframe) ? $this->_getIframe($style, $attr) : $this->_addWmode($datas['html']);
				}
				if (!isset($datas['title']) || !isset($datas['url'])) {
					return '';
				}
				return '<a href="'.io::htmlspecialchars($datas['url']).'"'.$style.$attr.(isset($datas['description']) && !isset($attributes['title']) ? ' title="'.io::htmlspecialchars($datas['description']).'"' : '').'>'.$datas['title'].'</a>';
			break;
			default :
				$this->raiseError('Unkown datas type: '.$datas['type'].' for url: '.$this->_url);
				return '';
			break;
		}
	}
	
	function getThumbnail($attributes = array()) {
		//load datas
		if (!($datas = $this->getDatas())) {
			return '';
		}
		if (!isset($datas['type'])) {
			$this->raiseError('Missing datas type: '.$datas['type'].' for url: '.$this->_url);
			return '';
		}
		if ($datas['type'] == 'error') {
			return '';
		}
		
		$style = '';
		if (!isset($attributes['style'])) {
			if (io::isPositiveInteger($this->_maxwidth) && !io::isPositiveInteger($this->_maxheight)) {
				$style = ' style="max-width:'.$this->_maxwidth.'px;overflow:auto;"';
			}
			if (!io::isPositiveInteger($this->_maxwidth) && io::isPositiveInteger($this->_maxheight)) {
				$style = ' style="max-height:'.$this->_maxheight.'px;overflow:auto;"';
			}
			if (io::isPositiveInteger($this->_maxwidth) && io::isPositiveInteger($this->_maxheight)) {
				$style = ' style="max-width:'.$this->_maxwidth.'px;max-height:'.$this->_maxheight.'px;overflow:auto;"';
			}
		}
		$attr='';
		foreach ($attributes as $attName => $attValue) {
			$attName = io::htmlspecialchars(trim(strtolower($attName)));
			if ($attValue && (!in_array($attName, array('src', 'href')) && !($datas['type'] != 'link' && $attName == 'target'))) {
				$attr .= ' '.$attName.'="'.io::htmlspecialchars($attValue).'"';
			}
		}
		if (!isset($datas['thumbnail_url'])) {
			return '';
		}
		return '<img src="'.io::htmlspecialchars($datas['thumbnail_url']).'"'.(isset($datas['title']) && !isset($attributes['title']) ? ' title="'.io::htmlspecialchars($datas['title']).'"' : '').$style.$attr.' />';
	}
	
	function getTitle() {
		//load datas
		if (!($datas = $this->getDatas())) {
			return '';
		}
		return $this->getData('title');
	}
	
	function getProviderName() {
		//load datas
		if (!($datas = $this->getDatas())) {
			return '';
		}
		if ($datas['type'] == 'error') {
			return '';
		}
		return isset($datas['provider_name']) ? $datas['provider_name'] : (isset($datas['provider']) ? $datas['provider'] : '');
	}
	
	function getData($name) {
		//load datas
		if (!($datas = $this->getDatas())) {
			return '';
		}
		if ($datas['type'] == 'error') {
			return '';
		}
		return isset($datas[$name]) ? $datas[$name] : '';
	}
	
	protected function _addWmode($html) {
		$matches = array();
		if (stripos($html, '<object ') !== false && stripos($html, ' name="wmode"') === false) {
			$html = preg_replace('#<object([^>]*)>#', '<object\1><param name="wmode" value="transparent"></param>', $html);
		}
		if (stripos($html, '<embed ') !== false && stripos($html, ' wmode="transparent"') === false) {
			$html = preg_replace('#<embed([^>]*)>#', '<embed wmode="transparent"\1>', $html);
		}
		return $html;
	}
	
	protected function _getIframe($style, $attr) {
		//load datas
		if (!($datas = $this->getDatas())) {
			return '';
		}
		//already iframe embeded, no need to redo an iframe arround
		if (strtolower(substr(trim($datas['html']), 0, 8)) == '<iframe ') {
			return '<div'.$style.$attr.'>'.$datas['html'].'</div>';
		}
		//frame param
		$frameParam = base64_encode(serialize(array(
			'url'		=> $this->_url,
			'maxwidth'	=> io::isPositiveInteger($this->_maxwidth) ? $this->_maxwidth : '',
			'maxheight'	=> io::isPositiveInteger($this->_maxheight) ? $this->_maxheight : '',
		)));
		//frame domain
		if (defined('APPLICATION_EMBED_DOMAIN') && APPLICATION_EMBED_DOMAIN) {
			$domain = strtolower(substr(APPLICATION_EMBED_DOMAIN,0,4)) == 'http' ? APPLICATION_EMBED_DOMAIN : 'http://'.APPLICATION_EMBED_DOMAIN;
		} else {
			$domain = '';
		}
		//iframe width/height
		$width = $height = '';
		if (isset($datas['width']) && io::isPositiveInteger($datas['width'])) {
			$width = io::htmlspecialchars($datas['width']);
		} else {
			//try to guess width for iframe ...
			$matches = array();
			if (preg_match('/^<[^>]* width="([0-9]+)"/i', trim($datas['html']) , $matches) && isset($matches[1])) {
				$width = $matches[1];
			} elseif (io::isPositiveInteger($this->_maxwidth)) {
				$width = $this->_maxwidth;
			}
		}
		if (isset($datas['height']) && io::isPositiveInteger($datas['height'])) {
			$height = io::htmlspecialchars($datas['height']);
		} else {
			//try to guess width for iframe ...
			$matches = array();
			if (preg_match('/^<[^>]* height="([0-9]+)"/i', trim($datas['html']) , $matches) && isset($matches[1])) {
				$height = $matches[1];
			} elseif (io::isPositiveInteger($this->_maxheight)) {
				$height = $this->_maxheight;
			}
		}
		return '<iframe frameBorder="0"'.
				($width ? ' width="'.$width.'"' : '').
				($height ? ' height="'.$height.'"' : '').
				'src="'.$domain.PATH_MAIN_WR.'/oembed/frame.php?params='.$frameParam.'"'.
				$style.$attr.'>'.
				'	<a href="'.PATH_MAIN_WR.'/oembed/frame.php" target="_blank">Click to view media</a>'.
				'</iframe>';
	}
}
?>