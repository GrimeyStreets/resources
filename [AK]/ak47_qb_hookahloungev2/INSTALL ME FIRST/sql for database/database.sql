CREATE TABLE IF NOT EXISTS `ak47_qb_hookahloungev2` (
  `id` int(11) NOT NULL,
  `water` int(11) DEFAULT 100,
  `hose` int(11) DEFAULT 100,
  `foil` int(11) DEFAULT 100,
  `coals` int(11) DEFAULT 100,
  `t_level` int(11) DEFAULT 100,
  `tobaco` longtext DEFAULT 'Social Smoke Absolute Zero',
  `price` int(11) DEFAULT 100,
  `usable` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DELETE FROM `ak47_qb_hookahloungev2`;
INSERT INTO `ak47_qb_hookahloungev2` (`id`, `water`, `hose`, `foil`, `coals`, `t_level`, `tobaco`, `price`, `usable`) VALUES
	(1, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1),
	(2, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1),
	(3, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1),
	(4, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1),
	(5, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1),
	(6, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1),
	(7, 100, 100, 100, 100, 100, 'Social Smoke Absolute Zero', 100, 1)
;
