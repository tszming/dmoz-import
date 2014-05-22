CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `domain` varchar(255) NOT NULL,
  `topic_id` text NOT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `title` text,
  `description` text,
  `priority` tinyint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id_priority` (`cat_id`,`priority`),
  KEY `topic_id` (`topic_id`(300)),
  KEY `url` (`url`(300)),
  KEY `domain` (`domain`)
) DEFAULT CHARSET=latin1;

CREATE TABLE `topics` (
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `altlang` text,
  `symbolic` text,
  `related` text,
  `editor` text,
  `newsGroup` text,
  `letterbar` text,
  `disp_name` varchar(255) DEFAULT NULL,
  `aol_search` varchar(255) DEFAULT NULL,
  `num` int(10) unsigned DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `topic_id` (`topic_id`(300))
) DEFAULT CHARSET=latin1;

CREATE TABLE `topics_tree` (
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `left` int(10) unsigned NOT NULL DEFAULT '0',
  `right` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent` (`parent`),
  KEY `left` (`left`),
  KEY `right` (`right`)
) DEFAULT CHARSET=latin1

