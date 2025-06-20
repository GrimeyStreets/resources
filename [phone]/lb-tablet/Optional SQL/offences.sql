CREATE TABLE IF NOT EXISTS `lbtablet_police_offences_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO `lbtablet_police_offences_categories` (`id`, `title`) VALUES
	(8, 'Cybercrimes'),
	(1, 'Drug-Related Offences'),
	(9, 'Environmental Offences'),
	(6, 'Miscellaneous Crimes'),
	(3, 'Property Crimes'),
	(10, 'Public Order Offences'),
	(4, 'Traffic Violations'),
	(7, 'Violent Crimes'),
	(2, 'Weapon-Related Offences'),
	(5, 'White-Collar Crimes');

CREATE TABLE IF NOT EXISTS `lbtablet_police_offences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `class` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `fine` int(10) unsigned NOT NULL DEFAULT 0,
  `jail_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`,`class`,`title`),
  CONSTRAINT `lbtablet_police_offences_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `lbtablet_police_offences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO `lbtablet_police_offences` (`id`, `category_id`, `class`, `title`, `description`, `fine`, `jail_time`) VALUES
	(1, 1, 'misdemeanor', 'Possession of Controlled Substances', 'Having illegal drugs for personal use.', 500, 0),
	(2, 1, 'infraction', 'Possession of Drug Paraphernalia', 'Having items associated with drug use or preparation.', 200, 0),
	(3, 1, 'felony', 'Drug Trafficking', 'The distribution or sale of illegal drugs.', 0, 60),
	(4, 1, 'felony', 'Driving Under Drug Influence', 'Operating a vehicle while under the influence of drugs.', 1000, 12),
	(5, 1, 'felony', 'Cultivation of Illegal Drugs', 'Growing plants used to produce controlled substances.', 0, 48),
	(6, 1, 'misdemeanor', 'Public Drug Use', 'Consuming illegal drugs in public spaces.', 300, 0),
	(7, 1, 'felony', 'Drug Manufacturing', 'Producing illegal drugs for sale or distribution.', 0, 72),
	(8, 1, 'felony', 'Prescription Fraud', 'Falsifying prescriptions to obtain controlled substances.', 1000, 24),
	(9, 1, 'felony', 'Possession with Intent to Distribute', 'Possessing drugs in quantities that suggest intent to sell.', 0, 48),
	(10, 1, 'felony', 'Operating a Drug House', 'Maintaining a property for drug manufacturing or distribution.', 0, 72),
	(11, 1, 'felony', 'Public Sale of Drugs', 'Selling illegal drugs in a public area.', 2000, 36),
	(12, 2, 'felony', 'Carrying a Concealed Weapon Without Permit', 'Possessing a hidden weapon without the required authorization.', 0, 36),
	(13, 2, 'felony', 'Illegal Sale of Firearms', 'Selling guns without the necessary licenses or background checks.', 5000, 60),
	(14, 2, 'felony', 'Unlawful Discharge of a Firearm', 'Firing a weapon in prohibited areas or in a manner that endangers others.', 4000, 36),
	(15, 2, 'felony', 'Possession of a Prohibited Weapon', 'Owning or carrying weapons banned by law, such as sawed-off shotguns or explosives.', 5000, 48),
	(16, 2, 'misdemeanor', 'Brandishing a Weapon', 'Displaying a weapon in a threatening manner without just cause.', 750, 12),
	(17, 2, 'misdemeanor', 'Using a Weapon While Intoxicated', 'Operating or handling a weapon while under the influence of drugs or alcohol.', 1000, 12),
	(18, 2, 'felony', 'Possession of a Weapon in a Restricted Area', 'Bringing firearms or other weapons into places where they are strictly prohibited, such as airports or schools.', 3000, 24),
	(19, 2, 'felony', 'Trafficking Illegal Firearms', 'Transporting or selling firearms unlawfully across jurisdictions.', 7000, 72),
	(20, 2, 'misdemeanor', 'Failure to Secure a Firearm', 'Neglecting to safely store a firearm, leading to potential unauthorized access.', 500, 0),
	(21, 2, 'felony', 'Modifying a Firearm Illegally', 'Altering a weapon to make it more lethal, such as converting it to fully automatic.', 6000, 48),
	(22, 2, 'felony', 'Possession of a Firearm Without a Serial Number', 'Owning or using a weapon with the serial number removed or obscured.', 4000, 36),
	(23, 2, 'misdemeanor', 'Carrying a Loaded Firearm in Public', 'Possessing a firearm with live ammunition in a public space without legal authorization.', 2000, 24),
	(24, 2, 'misdemeanor', 'Negligent Use of a Weapon', 'Handling or operating a firearm carelessly, causing risk to others.', 1500, 12),
	(25, 2, 'felony', 'Possession of a Stolen Firearm', 'Being in possession of a weapon known to be stolen.', 5000, 36),
	(26, 3, 'misdemeanor', 'Vandalism', 'Deliberate destruction or defacement of property.', 1000, 0),
	(27, 3, 'felony', 'Burglary', 'Unlawful entry into a building with the intent to commit a crime.', 0, 24),
	(28, 3, 'felony', 'Arson', 'The willful and malicious burning of property.', 2000, 48),
	(29, 3, 'misdemeanor', 'Shoplifting', 'Stealing merchandise from a retail establishment.', 300, 0),
	(30, 3, 'infraction', 'Trespassing', 'Entering or remaining on someone else\'s property without permission.', 200, 0),
	(31, 3, 'felony', 'Grand Theft', 'Stealing property of significant value.', 0, 36),
	(32, 3, 'misdemeanor', 'Petty Theft', 'Stealing property of low value.', 500, 0),
	(33, 3, 'misdemeanor', 'Possession of Stolen Property', 'Having goods that were unlawfully taken from someone else.', 700, 0),
	(34, 3, 'misdemeanor', 'Graffiti', 'Illegally painting or defacing public or private property.', 500, 0),
	(35, 3, 'felony', 'Credit Card Fraud', 'Using stolen or fake credit card information to make purchases.', 2000, 24),
	(36, 3, 'felony', 'Breaking and Entering', 'Forcing entry into a property without permission.', 0, 36),
	(37, 3, 'misdemeanor', 'Piracy', 'Illegally copying or distributing copyrighted material.', 1000, 0),
	(38, 3, 'felony', 'Identity Theft', 'Using someone else\'s personal information for fraudulent purposes.', 2000, 48),
	(39, 3, 'misdemeanor', 'Trespassing', 'Entering or remaining on property without permission.', 250, 0),
	(40, 3, 'felony', 'Theft of Public Property', 'Stealing items belonging to the government or public institutions.', 0, 36),
	(41, 3, 'misdemeanor', 'Unauthorized Use of a Vehicle', 'Using a vehicle without the owner’s permission but not intending to steal it.', 500, 0),
	(42, 3, 'misdemeanor', 'Illegal Squatting', 'Occupying an abandoned or unoccupied property without permission.', 300, 0),
	(43, 4, 'infraction', 'Speeding', 'Exceeding the posted speed limit.', 100, 0),
	(44, 4, 'infraction', 'Running a Red Light', 'Failing to stop at a red traffic light.', 200, 0),
	(45, 4, 'felony', 'Driving Under the Influence (DUI)', 'Operating a vehicle while under the influence of alcohol or drugs.', 1000, 12),
	(46, 4, 'misdemeanor', 'Reckless Driving', 'Operating a vehicle with willful or wanton disregard for safety.', 500, 6),
	(47, 4, 'misdemeanor', 'Driving Without a License', 'Operating a vehicle without a valid driver\'s license.', 250, 0),
	(48, 4, 'felony', 'Hit and Run', 'Leaving the scene of an accident without providing information or assistance.', 0, 24),
	(49, 4, 'infraction', 'Driving Without Insurance', 'Operating a vehicle without valid insurance coverage.', 500, 0),
	(50, 4, 'infraction', 'Failure to Yield', 'Not giving the right of way when required by traffic laws.', 150, 0),
	(51, 4, 'infraction', 'Illegal U-Turn', 'Making a U-turn where prohibited by traffic signs or laws.', 100, 0),
	(52, 4, 'infraction', 'Driving Without Headlights', 'Operating a vehicle at night or in poor visibility without lights on.', 50, 0),
	(53, 4, 'felony', 'Street Racing', 'Engaging in illegal speed contests on public roads.', 1500, 24),
	(54, 4, 'infraction', 'Driving in the Wrong Direction', 'Operating a vehicle against the flow of traffic.', 200, 0),
	(55, 4, 'infraction', 'Illegal Parking in Handicap Zones', 'Parking in a space designated for disabled individuals without proper permits.', 200, 0),
	(56, 4, 'misdemeanor', 'Road Rage Incident', 'Driving aggressively and endangering others during a dispute.', 750, 6),
	(57, 4, 'infraction', 'Unregistered Vehicle', 'Driving a vehicle without proper registration.', 150, 0),
	(58, 4, 'infraction', 'Excessive Window Tinting', 'Having window tint darker than allowed by law.', 100, 0),
	(59, 5, 'felony', 'Embezzlement', 'Fraudulently taking money or property from an employer.', 0, 36),
	(60, 5, 'felony', 'Fraud', 'Intentionally deceiving others for financial gain.', 0, 48),
	(61, 5, 'felony', 'Identity Theft', 'Using someone else\'s personal information for fraudulent purposes.', 1000, 36),
	(62, 5, 'felony', 'Tax Evasion', 'Deliberately avoiding paying required taxes.', 5000, 60),
	(63, 5, 'felony', 'Money Laundering', 'Processing illegal funds to make them appear legitimate.', 0, 48),
	(64, 5, 'felony', 'Insider Trading', 'Using non-public information to trade stocks for financial advantage.', 0, 36),
	(65, 5, 'felony', 'Forgery', 'Creating or altering documents with intent to defraud.', 0, 24),
	(66, 5, 'felony', 'Cybercrime', 'Using computers to commit fraud, identity theft, or unauthorized access.', 0, 60),
	(67, 5, 'felony', 'Healthcare Fraud', 'Filing false claims or manipulating healthcare billing for profit.', 0, 48),
	(68, 5, 'felony', 'Ponzi Scheme', 'Fraudulent investment scam promising high returns with minimal risk.', 0, 120),
	(69, 5, 'felony', 'Counterfeiting', 'Producing fake currency or documents.', 2000, 48),
	(70, 5, 'felony', 'Corporate Espionage', 'Stealing trade secrets or confidential business information.', 0, 72),
	(71, 6, 'felony', 'Bigamy', 'Entering into a marriage while already married to another person.', 0, 12),
	(72, 6, 'felony', 'Perjury', 'Lying under oath in a legal proceeding.', 0, 24),
	(73, 6, 'misdemeanor', 'Filing a False Police Report', 'Intentionally providing false information to law enforcement.', 500, 0),
	(74, 6, 'misdemeanor', 'Resisting Arrest', 'Physically or verbally opposing law enforcement during an arrest.', 0, 6),
	(75, 6, 'misdemeanor', 'Failure to Appear in Court', 'Not showing up for a scheduled court date without valid reason.', 500, 0),
	(76, 6, 'infraction', 'Unlawful Assembly', 'Gathering in a manner that poses a threat to public safety or order.', 200, 0),
	(77, 6, 'misdemeanor', 'Failure to Report a Crime', 'Not notifying authorities about a witnessed crime.', 250, 0),
	(78, 6, 'misdemeanor', 'Providing False Identification', 'Presenting fake or misleading identification to authorities.', 300, 12),
	(79, 7, 'misdemeanor', 'Assault', 'Intentionally causing physical harm to another person.', 0, 12),
	(80, 7, 'felony', 'Robbery', 'Taking property from a person through force or intimidation.', 0, 36),
	(81, 7, 'felony', 'Homicide', 'The unlawful killing of another person.', 0, 120),
	(82, 7, 'felony', 'Domestic Violence', 'Physical or emotional abuse within a household or intimate relationship.', 0, 36),
	(83, 7, 'felony', 'Kidnapping', 'Unlawfully seizing and detaining a person against their will.', 0, 120),
	(84, 7, 'felony', 'Aggravated Assault', 'An attack causing serious bodily harm or involving a weapon.', 0, 60),
	(85, 7, 'misdemeanor', 'Battery', 'Intentional physical contact or harm to another person without consent.', 0, 12),
	(86, 7, 'felony', 'Terroristic Threats', 'Threatening violence to cause fear or disruption.', 0, 48),
	(87, 7, 'felony', 'Vehicular Manslaughter', 'Causing a death through negligent or reckless driving.', 0, 60),
	(88, 7, 'felony', 'Hate Crime', 'A crime motivated by prejudice against a person’s race, religion, or other characteristics.', 0, 48),
	(89, 7, 'felony', 'Child Abuse', 'Physical, emotional, or sexual abuse of a minor.', 0, 72),
	(90, 7, 'misdemeanor', 'Reckless Endangerment', 'Engaging in actions that could cause serious harm to others.', 0, 12),
	(93, 7, 'misdemeanor', 'Stalking', 'Repeatedly following or harassing someone, causing fear.', 0, 12),
	(94, 8, 'felony', 'Hacking', 'Gaining unauthorized access to computer systems.', 0, 36),
	(95, 8, 'felony', 'Phishing', 'Using fake communication to obtain sensitive information.', 1500, 24),
	(96, 8, 'misdemeanor', 'Online Harassment', 'Bullying or threatening someone via the internet.', 500, 0),
	(97, 8, 'felony', 'Unauthorized Access to Computer Systems', 'Hacking into computer systems without permission.', 3000, 48),
	(98, 9, 'infraction', 'Overfishing', 'Exceeding legal limits on fish catches.', 500, 0),
	(99, 9, 'felony', 'Illegal Logging', 'Harvesting timber without permits.', 3000, 36),
	(100, 9, 'felony', 'Endangered Species Trafficking', 'Trading animals or plants protected by conservation laws.', 0, 48),
	(101, 9, 'felony', 'Illegal Mining', 'Extracting minerals or resources without proper permits.', 4000, 60),
	(102, 9, 'misdemeanor', 'Illegal Dumping', 'Disposing of waste in unauthorized areas.', 750, 0),
	(103, 9, 'felony', 'Poaching', 'Illegally hunting or capturing wildlife.', 4000, 36),
	(104, 10, 'misdemeanor', 'Disorderly Conduct', 'Behaving in a disruptive or unruly manner in public.', 300, 0),
	(105, 10, 'infraction', 'Public Intoxication', 'Being visibly drunk or impaired in public.', 150, 0),
	(106, 10, 'infraction', 'Loitering', 'Remaining in an area without a legitimate purpose.', 50, 0),
	(107, 10, 'infraction', 'Disturbing the Peace', 'Engaging in loud or disruptive behavior in public.', 100, 0),
	(108, 10, 'felony', 'Rioting', 'Participating in a violent public disturbance.', 0, 36),
	(109, 10, 'misdemeanor', 'Prostitution', 'Engaging in or soliciting sexual services for money.', 500, 0),
	(110, 10, 'misdemeanor', 'Hate Speech', 'Making statements intended to incite violence or hatred against a group.', 1000, 0),
	(111, 10, 'infraction', 'Unlawful Assembly', 'Gathering with others in a way that disturbs public peace.', 100, 0),
	(112, 10, 'infraction', 'Illegal Protests', 'Organizing or participating in a protest without proper permits.', 100, 0),
	(113, 10, 'misdemeanor', 'Indecent Exposure', 'Deliberately exposing private parts in public.', 500, 0),
	(114, 10, 'felony', 'Obstructing Justice', 'Interfering with law enforcement or court proceedings.', 0, 24),
	(115, 10, 'felony', 'Bribery', 'Offering or accepting something of value to influence decisions.', 5000, 36),
	(117, 10, 'felony', 'Inciting a Riot', 'Encouraging or instigating a group to engage in violent behavior.', 0, 48);
