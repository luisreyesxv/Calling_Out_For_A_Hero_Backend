require 'yaml'
pets = {
	"Acolyte": {
		"_special": "book-PHB",
		"Trait": [
			"I idolize a particular hero of my faith, and constantly refer to that person's deeds and example.",
			"I can find common ground between the fiercest enemies, empathizing with them and always working toward peace.",
			"I see omens in every event and action. The gods try to speak to us, we just need to listen.",
			"Nothing can shake my optimistic attitude.",
			"I quote (or misquote) sacred texts and proverbs in almost every situation.",
			"I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods.",
			"I've enjoyed fine food, drink, and high society among my temple's elite. Rough living grates on me.",
			"I've spent so long in the temple that I have little practical experience dealing with people in the outside world."
		],
		"Ideal": [
			"Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld. (Lawful)",
			"Charity. I always try to help those in need, no matter what the personal cost. (Good)",
			"Change. We must help bring about the changes the gods are constantly working in the world. (Chaotic)",
			"Power. I hope to one day rise to the top of my faith's religious hierarchy. (Lawful)",
			"Faith. I trust that my deity will guide my actions, I have faith that if I work hard, things will go well. (Lawful)",
			"Aspiration. I seek to prove myself worthy of my god's favor by matching my actions against his or her teachings. (Any)"
		],
		"Bond": [
			"I would die to recover an ancient relic of my faith that was lost long ago.",
			"I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.",
			"I owe my life to the priest who took me in when my parents died.",
			"Everything I do is for the common people.",
			"I will do anything to protect the temple where I served.",
			"I seek to preserve a sacred text that my enemies consider heretical and seek to destroy."
		],
		"Flaw": [
			"I judge others harshly, and myself even more severely.",
			"I put too much trust in those who wield power within my temple's hierarchy.",
			"My piety sometimes leads me to blindly trust those that profess faith in my god.",
			"I am inflexible in my thinking.",
			"I am suspicious of strangers and expect the worst of them.",
			"Once I pick a goal, I become obsessed with it to the detriment of everything else in my life."
		],
		"Became an acolyte because": [
			"I ran away from home at an early age and found refuge in a temple.",
			"My family gave me to a temple, since they were unable or unwilling to care for me.",
			"I grew up in a household with strong religious convictions. Entering the service of one or more gods seemed natural.",
			"An impassioned sermon struck a chord deep in my soul and moved me to serve the faith.",
			"I followed a childhood friend, a respected acquaintance, or someone I loved into religious service. ",
			"After encountering a true servant of the gods, I was so inspired that I immediately entered the service of a religious group."
		]
	},
	"Anthropologist": {
		"_special": "book-Mod",
		"Trait": [
			"I prefer the company of those who aren't like me, including people of other races.",
			"I'm a stickler when it comes to observing proper etiquette and local customs.",
			"I would rather observe than meddle.",
			"By living among violent people, I have become desensitized to violence.",
			"I would risk life and limb to discover a new culture or unravel the secrets of a dead one.",
			"When l arrive at a ew settlement for the first time, l must learn all its customs. "
		],
		"Ideal": [
			"Discovery. I want to be the first person to discover a lost culture. (Any)",
			"Distance. One must not interfere with the affairs of another culture- even one in need of aid. (Lawful)",
			"Knowledge. By understanding other races and cultures, we learn to understand ourselves. (Any)",
			"Power. Common people crave strong leadership, and I do my utmost to provide it. (Lawful)",
			"Protection. I must do everything possible to save a society facing extinction. (Good)",
			"Indifferent. life is cruel. What's the point in saving people if they're going to die anyway? (Chaotic)"
		],
		"Bond": [
			"My mentor gave me a journal filled with lore and wisdom. Losing it would devastate me.",
			"Having lived among the people of a primeval tribe or clan, I long to return and see how they are faring.",
			"Years ago, tragedy struck the members of an isolated society I befriended, and I will honor them.",
			"I want to learn more about a particular humanoid culture that fascinates me.",
			"I seek to avenge a clan, tribe, kingdom, or empire that was wiped out.",
			"I have a trinket that I believe is the key to finding a long-lost society."
		],
		"Flaw": [
			"Boats make me seasick.",
			"I talk to myself, and I don't make friends easily.",
			"I believe that I'm intellectually superior to people from other cultures and have much to teach them.",
			"I've picked up some unpleasant habits living among goblins, lizardfolk, or orcs.",
			"I complain about everything.",
			"I wear a tribal mask and never take it off. "
		],
		"Adopted Culture": [
			"Aarakocra",
			"Halfling",
			"Dwarf",
			"Human",
			"Elf",
			"Lizardfolk",
			"Goblin",
			"Orc"
		]
	},
	"Archaeologist": {
		"_special": "book-Mod",
		"Trait": [
			"I love a good puzzle or mystery.",
			"I'm a pack rat who never throws anything away.",
			"Fame is more important to me than money.",
			"I have no qualms about stealing from the dead.",
			"I'm happier In a dusty old tomb than I am in the centers of civilization.",
			"Traps don't make me nervous. Idiots who trigger traps make me nervous.",
			"I might fail, but I will never give up.",
			"You might think I'm a scholar, but I love a good brawl. These fists were made for punching."
		],
		"Ideal": [
			"Preservation. That artifact belongs in a museum. (Good)",
			"Greed. I won't risk my life for nothing. I expect some kind of payment. (Any)",
			"Death Wish. Nothing is more exhilarating than a narrow escape from the jaws of death. (Chaotic)",
			"Dignity. The dead and their belongings deserve to be treated with respect. (Lawful)",
			"Immortality. All my exploring is part of a plan to find the secret of everlasting life. (Any)",
			"Danger. With every great discovery comes grave danger. The two walk hand in hand. (Any) "
		],
		"Bond": [
			"Ever since I was a child, I've heard stories about a lost city. I aim to find it, learn its secrets, and earn my place in the history books.",
			"I want to find my mentor, who disappeared on an expedition some time ago.",
			"I have a friendly rival. Only one of us can be the best, and I aim to prove it's me.",
			"I won't sell an art object or other treasure that has historical significance or is one of a kind.",
			"I'm secretly in love with the wealthy patron who sponsors my archaeological exploits.",
			"I hope to bring prestige to a library, a museum, or a university. "
		],
		"Flaw": [
			"I have a secret fear of some common wild animal- and In my work, I see them everywhere.",
			"I can't leave a room without searching it for secret doors.",
			"When I'm not exploring dungeons or ruins, I get jittery and impatient.",
			"I have no time for friends or family. I spend every waking moment thinking about and preparing for my next expedition.",
			"When given the choice of going left or right, I always go left.",
			"I can't sleep except in total darkness."
		],
		"Signature Item": [
			"10-foot pole",
			"Medallion",
			"Crowbar",
			"Shovel",
			"Hat",
			"Sledgehammer",
			"Hooded lantern",
			"Whip"
		]
	},
	"Athlete": {
		"_special": "book-MOoT",
		"Trait": [
			"I feel most at peace during physical exertion, be it exercise or battle.",
			"I don't like to sit idle.",
			"I have a daily exercise routine that I refuse to break.",
			"Obstacles exist to be overcome.",
			"When I see others struggling, I offer to help.",
			"I love to trade banter and gibes.",
			"Anything worth doing is worth doing best.",
			"I get irritated if people praise someone else and not me."
		],
		"Ideal": [
			"Competition. I strive to test myself in all things. (Chaotic)",
			"Triumph. The best part of winning is seeing my rivals brought low. (Evil)",
			"Camaraderie. The strongest bonds are forged through struggle. (Good)",
			"People. I strive to inspire my spectators. (Neutral)",
			"Tradition. Every game has rules, and the playing field must be level. (Lawful)",
			"Growth. Lessons hide in victory and defeat. (Any)"
		],
		"Bond": [
			"My teammates are my family.",
			"I will overcome a rival and prove myself their better.",
			"My mistake got someone hurt. I'll never make that mistake again.",
			"I will be the best for the honor and glory of my home.",
			"The person who trained me is the most important person in my world.",
			"I strive to live up to a specific hero's example."
		],
		"Flaw": [
			"I indulge in a habit that threatens my reputation or my health.",
			"I'll do absolutely anything to win.",
			"I ignore anyone who doesn't compete and anyone who loses to me.",
			"I have lingering pain from old injuries.",
			"Any defeat or failure on my part is because my opponent cheated.",
			"I must be the captain of any group I join."
		],
		"Favored Event": [
			"Marathon",
			"Long-distance running",
			"Wrestling",
			"Boxing",
			"Chariot or horse race",
			"Pankration (mixed unarmed combat)",
			"Hoplite race (racing in full armor with a unit)",
			"Pentathlon (running, long jump, discus, javelin, wrestling)"
		]
	},
	"Augen Trust": {
		"_special": "book-EGtW backgroundtraits-Criminal"
	},
	"Azorius Functionary": {
		"_special": "book-GGtR",
		"Trait": [
			"I try never to let my judgment become clouded by emotion.",
			"I have infinite patience with the dolts and boors I'm forced to deal with every day.",
			"When I give an order, I expect it to be obeyed.",
			"I just want things the way I like them: neat, orderly, and clean.",
			"No wrongdoing can escape my watchful gaze.",
			"I always say exactly what I mean, no matter how many words it takes to communicate the particular nuance I am attempting to convey.",
			"I'm very literal and don't appreciate metaphor or sarcasm.",
			"I never change my mind once it's made up."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Order. The law is meant to ensure that the gears of society turn smoothly and quietly. (Lawful)",
			"Peace. The ultimate object of the law is to remove violence from society. (Good)",
			"Compliance. Coercion is a fine way of ensuring that the laws are obeyed. (Lawful)",
			"Legislation. The law embodies excellence in its precision and detail. (Lawful)",
			"Punishment. A public display of consequences is an excellent deterrent for other criminals. (Evil)"
		],
		"Bond": [
			"I am beholden to an Azorius arrester who captured the criminal who killed my parents, saving me from the same fate.",
			"I hope one day to write the laws, not just enforce them.",
			"I tried and failed to prevent a murder, and I have sworn to find and arrest the perpetrator.",
			"I successfully prevented a murder, and the would-be perpetrator wants me dead.",
			"One of my parents was prominent in the guild, and I resent constantly being compared to that standard.",
			"I've modeled my career after a highly respected law-mage or arrester, but I fear that my role model might be involved in something illegal."
		],
		"Flaw": [
			"I'm unable to distinguish between the letter and the spirit of the law.",
			"I seem like a harsh judge to others, but I judge myself most harshly of all.",
			"I have a secret, illegal vice.",
			"I was traumatized by witnessing a crime as a child.",
			"I'm incapable of deception.",
			"I wish I had joined the Boros, but I fear they'd never accept me."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Azorius",
			"_guild": [
				"As a teenager, I was a page for a prominent judge.",
				"One of my childhood friends is now a precognitive mage in service of the guild.",
				"I joined the Azorius hoping to impress an arrester whom I admire.",
				"My former mentor is now a warden at Udzec, the new Azorius prison.",
				"I was second best at everything in my legal training, and now I work with the person who was always just a little bit better.",
				"A good friend was promoted into work they can't tell me about.",
				"I know a homunculus in the halls of New Prahv who can get things done behind the scenes.",
				"I was once summoned to the presence of Supreme Judge Isperia, the guildmaster of the Azorius, who complimented me on my work."
			],
			"_nonguild": [
				"_reroll",
				"The person who recruited me into the Azorius left and joined the Boros.",
				"I have a friendship with a Dimir agent who sometimes funnels me secrets about Azorius activities.",
				"A Golgari spore druid would love to see me slip up and break the law.",
				"A lesser Gruul chieftain seems to think I could be useful.",
				"The black sheep of my family is putting their maniacal genius to use in the Izzet.",
				"I'm friends with an Orzhov advokist; we compare notes on different forms of law magic.",
				"I was ridiculed once in a Rakdos performance; the performer was impressed with my good humor about it and now does me occasional favors.",
				"I have a fanatical Selesnya cousin who keeps trying to recruit me and everyone else in the family.",
				"While growing up, I was bullied by a brat who's now a hybrid in the Simic Combine."
			]
		}
	},
	"Boros Legionnaire": {
		"_special": "book-GGtR",
		"Trait": [
			"I approach every task with the same high degree of military precision.",
			"I am always the first into the fray.",
			"I bear any injury or indignity with stoic discipline.",
			"My righteous wrath is easily inflamed by the slightest iniquity.",
			"My honor is more important to me than my life.",
			"Dangerous work is best accomplished by an orderly group working with common purpose.",
			"I treat my weapons, uniform, and insignia with reverence, for they are gifts of the angels.",
			"I pace when standing and fidget incessantly when forced to sit."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Justice. Achieving justice requires establishing fair, equitable, and compassionate relationships within a community. (Good)",
			"Protection. It isn't right for innocents to suffer because of the arrogance of the powerful. (Good)",
			"Solidarity. It is most crucial to act with a single will, marching side by side in perfect accord. (Lawful)",
			"Order. Society functions only if people do their duty and respect the chain of command. (Lawful)",
			"Conviction. Anything worth doing is worth doing with your whole heart. (Lawful)"
		],
		"Bond": [
			"I would lay down my life for Aurelia and the angels.",
			"I owe my life to the Boros captain who took me in when I was living on the streets.",
			"My fellow legionnaires are my family.",
			"I wield the same Boros weapon my grandparent did, for the honor of our family.",
			"I ran with the Rakdos in my youth, and I'm striving to atone for my past misdeeds.",
			"I do what I can to help out the spouse of a comrade who died in battle."
		],
		"Flaw": [
			"I act bravely when I'm in a group. but I'm a coward when I'm alone.",
			"I see everything in clear-cut black and white.",
			"I'm just a little fascinated by the ways of the Gruul.",
			"I trust the chain of command more than anything-more even than my closest friends.",
			"I'm slow to trust members of other guilds.",
			"I've been known to turn a blind eye to injustice, with the help of a modest bribe."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Boros",
			"_guild": [
				"A former comrade in arms was promoted into the prestigious Sunhome Guard.",
				"One of my parents is a ranking Boros officer.",
				"A close friend serves aboard the Parhelion II, a flying fortress.",
				"I had a tangled affair with a Boros garrison captain.",
				"I have maintained a relationship with one of my instructors at Horizon Military Academy.",
				"I competed with a fellow student for the attention of a mentor at Horizon Military Academy.",
				"The person who recruited me into the legion changed the course of my life.",
				"A Boros angel knows my name."
			],
			"_nonguild": [
				"One of my siblings is an Azorius arrester.",
				"_reroll",
				"I showed mercy to an injured, now-grateful Dimir spy.",
				"I suspect someone I know is a Golgari assassin, but I can't prove it.",
				"An adolescent relative ran off to join the Gruul in an act of rebellion and has not yet returned.",
				"I once befriended an Izzet scientist, and we're still cordial though the relationship ended messily.",
				"I owe a monetary debt to an Orzhov syndic.",
				"A Rakdos blood witch seems to enjoy harassing me.",
				"I tried to recruit a friend who ended up joining the Selesnya.",
				"I keep running into a particular Simic biomancer, and I enjoy the arguments that inevitably result."
			]
		}
	},
	"Celebrity Adventurer's Scion": {
		"_special": "book-AI",
		"Trait": [
			"I will never get out of my famous parent's shadow, and no one else will ever understand this burden.",
			"I've seen enough of the adventuring life to have realistic expectations and empathy for my peers.",
			"Living up to my legacy will be difficult, but I'm going to do it.",
			"I'm used to the very best in life, and that's a hard habit to break.",
			"My parent taught me a sense of duty. I strive to uphold it, even when the odds are against me.",
			"No one can fake a smile, a handshake, or an interested nod like I can.",
			"I've been part of the adventuring life since I was old enough to walk. Let me explain a few things to you.",
			"No risk is too great for the rewards of defeating my enemies ... and taking their stuff."
		],
		"Ideal": [
			"Power. The only way to get ahead in this world is to attain power and hold onto it with all your might. (Evil)",
			"Peace. Those who can find or make peace in the chaotic world around them have everything. (Lawful)",
			"Fame. I've seen what fame can bring. And I'll do anything to get all that for myself. (Neutral)",
			"Training. Hard work, sacrifice, and training lead to success-and eventually to perfection. (Any)",
			"Anonymity. I want to be successful. And alone. With lots of guards and wards between me and everyone else in the world. (Any)",
			"Wisdom. Material wealth is an illusion. Wisdom is the real treasure. (Good)"
		],
		"Bond": [
			"While my parent was out adventuring, a servant raised me, and I care about that person more than anyone.",
			"I consider every member of my parent's former adventuring party to be family.",
			"Despite their absences, my famous parent was kind and generous. I love them and want to make them proud.",
			"My parent once brought a cursed magic item home. It is my obsession.",
			"My childhood home holds all my best memories, and its upkeep is my primary concern.",
			"Growing up, I had an imaginary friend I could always count on. That friend is still with me."
		],
		"Flaw": [
			"You don't know what I'm going through. You never can.",
			"You. Fetch my cloak. And maybe rub my feet for a while.",
			"My comrades are brave, but I must defeat this threat alone to prove my worth.",
			"Oh, yeah, that spell? Named after my parent's best friend. Let me tell you about them.",
			"My best days are behind me. Ahead lies only toil, pain, and death.",
			"You have to look out for yourself. No one else will."
		]
	},
	"Charlatan": {
		"_special": "book-PHB",
		"Trait": [
			"I fall in and out of love easily, and am always pursuing someone.",
			"I have a joke for every occasion, especially occasions where humor is inappropriate.",
			"Flattery is my preferred trick for getting what I want.",
			"I'm a born gambler who can't resist taking a risk for a potential payoff.",
			"I lie about almost everything, even when there's no good reason to.",
			"Sarcasm and insults are my weapons of choice.",
			"I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.",
			"I pocket anything I see that might have some value."
		],
		"Ideal": [
			"Independence. I am a free spirit- no one tells me what to do. (Chaotic)",
			"Fairness. I never target people who can't afford to lose a few coins. (Lawful)",
			"Charity. I distribute the money I acquire to the people who really need it. (Good)",
			"Creativity. I never run the same con twice. (Chaotic)",
			"Friendship. Material goods come and go. Bonds of friendship last forever. (Good)",
			"Aspiration. I'm determined to make something of myself. (Any)"
		],
		"Bond": [
			"I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.",
			"I owe everything to my mentor- a horrible person who's probably rotting in jail somewhere.",
			"Somewhere out there, I have a child who doesn't know me. I'm making the world better for him or her.",
			"I come from a noble family, and one day I'll reclaim my lands and title from those who stole them from me.",
			"A powerful person killed someone I love. Some day soon, I'll have my revenge.",
			"I swindled and ruined a person who didn't deserve it. I seek to atone for my misdeeds but might never be able to forgive myself."
		],
		"Flaw": [
			"I can't resist a pretty face.",
			"I'm always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in.",
			"I'm convinced that no one could ever fool me the way I fool others.",
			"I'm too greedy for my own good. I can't resist taking a risk if there's money involved.",
			"I can't resist swindling people who are more powerful than me.",
			"I hate to admit it and will hate myself for it, but I'll run and preserve my own hide if the going gets tough."
		],
		"Scam": [
			"I cheat at games of chance.",
			"I shave coins or forge documents.",
			"I insinuate myself into people's lives to prey on their weakness and secure their fortunes.",
			"I put on new identities like clothes.",
			"I run sleight-of-hand cons on street corners.",
			"I convince people that worthless junk is worth their hard-earned money."
		],
		"Became a charlatan because": [
			"I was left to my own devices, and my knack for manipulating others helped me survive.",
			"I learned early on that people are gullible and easy to exploit.",
			"I often got in trouble, but I managed to talk my way out of it every time.",
			"I took up with a confidence artist, from whom I learned my craft.",
			"After a charlatan fleeced my family, I decided to learn the trade so I would never be fooled by such deception again.",
			"I was poor or I feared becoming poor, so I learned the tricks I needed to keep myself out of poverty."
		]
	},
	"City Watch": {
		"_special": "book-SCAG backgroundtraits-Soldier"
	},
	"Clan Crafter": {
		"_special": "book-SCAG backgroundtraits-Guild_Artisan"
	},
	"Cloistered Scholar": {
		"_special": "book-SCAG backgroundtraits-Sage"
	},
	"Cobalt Scholar": {
		"_special": "book-EGtW backgroundtraits-Sage"
	},
	"Courtier": {
		"_special": "book-SCAG backgroundtraits-Guild_Artisan"
	},
	"Criminal": {
		"_special": "book-PHB",
		"Trait": [
			"I always have a plan for what to do when things go wrong.",
			"I am always calm, no matter what the situation. I never raise my voice or let emotions control me.",
			"The first thing I do in a new place is note the locations of everything valuable- or where such things could be hidden.",
			"I would rather make a new friend than a new enemy.",
			"I am incredibly slow to trust. Those who seem the fairest often have the most to hide.",
			"I don't pay attention to the risks in a situation. Never tell me the odds.",
			"The best way to get me to do something is to tell me I can't do it.",
			"I blow up at the slightest insult."
		],
		"Ideal": [
			"Honor. I don't steal from others in the trade. (Lawful)",
			"Freedom. Chains are meant to be broken, as are those who would forge them. (Chaotic)",
			"Charity. I steal from the wealthy so that I can help people in need. (Good)",
			"Greed. I will do whatever it takes to become wealthy. (Evil)",
			"People. I'm loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care. (Neutral)",
			"Redemption. There's a spark of good in everyone. (Good)"
		],
		"Bond": [
			"I'm trying to pay off an old debt I owe to a generous benefactor.",
			"My ill-gotten gains go to support my family.",
			"Something important was taken from me, and I aim to steal it back.",
			"I will become the greatest thief that ever lived.",
			"I'm guilty of a terrible crime. I hope I can redeem myself for it.",
			"Someone I loved died because of a mistake I made. That will never happen again."
		],
		"Flaw": [
			"When I see something valuable, I can't think about anything but how to steal it.",
			"When faced with a choice between money and my friends, I usually choose the money.",
			"If there's a plan, I'll forget it. If I don't forget it, I'll ignore it.",
			"I have a \"tell\" that reveals when I'm lying.",
			"I turn tail and run when things look bad.",
			"An innocent person is in prison for a crime that I committed. I'm okay with that."
		],
		"Became a criminal because": [
			"I resented authority in my younger days and saw a life of crime as the best way to fight against tyranny and oppression",
			"Necessity forced me to take up the life, since it was the only way I could survive.",
			"I fell in with a gang of reprobates and ne'er-do-wells, and I learned my specialty from them.",
			"A parent or relative taught me my criminal specialty to prepare me for the family business.",
			"I left home and found a place in a thieves' guild or some other criminal organization.",
			"I was always bored, so I turned to crime to pass the time and discovered I was quite good at it."
		]
	},
	"Dimir Operative": {
		"_special": "book-GGtR",
		"Trait": [
			"I'm good at hiding my true thoughts and feelings.",
			"When I'm in doubt about revealing something, I assume it's a secret, and I don't share it.",
			"I like to sound mysterious, because wisdom hidden grows deeper with time.",
			"I have no patience with people who get in my way.",
			"I love hearing about other people's nightmares.",
			"Combat is meant to be quick, clean, and one-sided.",
			"I like to stick to the shadows.",
			"I never show my anger. I just plot my revenge."
		],
		"Ideal": [
			"Guild. My true guild is all that really matters. (Any)",
			"Control. I like pulling the strings. (Lawful)",
			"Secrets. I collect secrets and never reveal them. (Any)",
			"Knowledge. I want to know as much as I can about this city and how it works. (Any)",
			"Independence. I value the freedom to pursue my own goals without interference. (Chaotic)",
			"Nihilism. I don't believe in anything, and anyone who does is a fool. (Neutral)"
		],
		"Bond": [
			"I discovered a secret I can't let anyone else uncover-including my guild superiors.",
			"I formed a close friendship or romance with someone in the guild I'm infiltrating.",
			"The Dimir agent who recruited me was unmasked and killed. My revenge on the killers will be thorough and painful.",
			"I spend as much time as I can in the Ismeri Library because I'm certain an information hub operates behind its facade. I want its secrets!",
			"I'm utterly loyal to my superior in the guild, more than to the guild or its guildmaster.",
			"Someone has discovered my true identity."
		],
		"Flaw": [
			"I like secrets so much that I'm reluctant to share details of a plan even with those who need to know.",
			"I would let my friends die rather than reveal my true identity.",
			"I have trouble trusting anyone but myself.",
			"I have a particular vice that puts all my secrets at risk if I'm not careful.",
			"I'm pretty sure I've done something horrible that I can't remember because of the guild's mind magic.",
			"I put too much trust in the people who give me orders."
		],
		"Reason for Infiltration": [
			"My parents belong to this guild, and I let them think I'm following in their footsteps.",
			"I've been assigned to track this guild's activities.",
			"I've been assigned to get close to an individual in this guild and learn their secrets.",
			"I've been assigned to recruit a new Dimir spy from the ranks of this guild.",
			"I was a member of this guild before the Dimir recruited me.",
			"I don't like what this guild stands for and want to destroy it from within.",
			"I secretly wish I could leave the Dimir and join this guild, but there is no escaping the Dimir.",
			"I chose this guild at random or on a lark."
		],
		"Contacts": {
			"_special": "dimircontacts",
			"_guilds": [
				{
					"name": "Azorius Senate",
					"background": "Azorius Functionary"
				},
				{
					"name": "Boros Legion",
					"background": "Boros Legionnaire"
				},
				{
					"name": "Golgari Swarm",
					"background": "Golgari Agent"
				},
				{
					"name": "Gruul Clans",
					"background": "Gruul Anarch"
				},
				{
					"name": "Izzet League",
					"background": "Izzet Engineer"
				},
				{
					"name": "Orzhov Syndicate",
					"background": "Orzhov Representative"
				},
				{
					"name": "Cult of Rakdos",
					"background": "Rakdos Cultist"
				},
				{
					"name": "Selesnya Conclave",
					"background": "Selesnya Initiate"
				},
				{
					"name": "Simic Combine",
					"background": "Simic Scientist"
				}
			],
			"_dimircontact": [
				"I know a Dimir courier who relays messages to me from someone higher up the chain of command.",
				"I get orders from a shapeshifter I recognize only through a series of code phrases we exchange.",
				"An ostentatiously wealthy vampire is my secret guild superior, summoning me to a luxurious estate by means of coded messages.",
				"I have never met my guild contact, but I receive telepathic messages, usually in my dreams.",
				"I've never met my guild contact, but I get coded messages from a pattern of street lights and graffiti.",
				"I didn't discover the identity of my guild contact until after we had begun a romantic relationship.",
				"My superior maintains an elaborate identity as a young street urchin ... unless it's all a lie, and I'm being sent on ridiculous missions by a twisted child.",
				"My sibling and I both get telepathic orders from a mysterious contact, and I'm starting to question the authenticity of my sibling's orders."
			]
		}
	},
	"Entertainer": {
		"_special": "book-PHB",
		"Trait": [
			"I know a story relevant to almost every situation.",
			"Whenever I come to a new place, I collect local rumors and spread gossip.",
			"I'm a hopeless romantic, always searching for that \"special someone.\"",
			"Nobody stays angry at me or around me for long, since I can defuse any amount of tension.",
			"I love a good insult, even one directed at me.",
			"I get bitter if I'm not the center of attention.",
			"I'll settle for nothing less than perfection.",
			"I change my mood or my mind as quickly as I change key in a song."
		],
		"Ideal": [
			"Beauty. When I perform, I make the world better than it was. (Good)",
			"Tradition. The stories, legends, and songs of the past must never be forgotten, for they teach us who we are. (Lawful)",
			"Creativity. The world is in need of new ideas and bold action. (Chaotic)",
			"Greed. I'm only in it for the money and fame. (Evil)",
			"People. I like seeing the smiles on people's faces when I perform. That's all that matters. (Neutral)",
			"Honesty. Art should reflect the soul; it should come from within and reveal who we really are. (Any)"
		],
		"Bond": [
			"My instrument is my most treasured possession, and it reminds me of someone I love.",
			"Someone stole my precious instrument, and someday I'll get it back.",
			"I want to be famous, whatever it takes.",
			"I idolize a hero of the old tales and measure my deeds against that person's.",
			"I will do anything to prove myself superior to my hated rival.",
			"I would do anything for the other members of my old troupe."
		],
		"Flaw": [
			"I'll do anything to win fame and renown.",
			"I'm a sucker for a pretty face.",
			"A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.",
			"I once satirized a noble who still wants my head. It was a mistake that I will likely repeat.",
			"I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.",
			"Despite my best efforts, I am unreliable to my friends."
		],
		"Routine": [
			"Actor",
			"Instrumentalist",
			"Dancer",
			"Poet",
			"Fire-eater",
			"Singer",
			"Jester",
			"Storyteller",
			"Juggler",
			"Tumbler"
		],
		"Became an entertainer because": [
			"Members of my family made ends meet by performing, so it was fitting for me to follow their example.",
			"I always had a keen insight into other people, enough so that I could make them laugh or cry with my stories or songs.",
			"I ran away from home to follow a minstrel troupe.",
			"I saw a bard perform once, and I knew from that moment on what I was born to do.",
			"I earned coin by performing on street corners and eventually made a name for myself.",
			"A traveling entertainer took me in and taught me the trade."
		]
	},
	"Faceless": {
		"_special": "book-Mod",
		"Trait": [
			"I'm earnest and uncommonly direct.",
			"I strive to have no personality-it's easier to forget what's hardly there.",
			"I treasure a memento of the person or instance that set me upon my path.",
			"I sleep just as much as I need to and on an unusual schedule.",
			"I think far ahead, a detachedness often mistaken for daydreaming.",
			"I cultivate a single obscure hobby or study and eagerly discuss it at length.",
			"I am ever learning how to be among others-when to stay quiet, when to laugh.",
			"I behave like an extreme opposite of my persona."
		],
		"Ideal": [
			"Justice. Place in society shouldn't determine one's access to what is right. (Good)",
			"Security. Doing what must be done can't bring the innocent to harm. (Lawful)",
			"Confusion. Deception is a weapon. Strike from where your foes won't expect. (Chaotic)",
			"Infamy. My name will be a malediction, a curse that fulfills my will. (Evil)",
			"Incorruptibility. Be a symbol, and leave your flawed being behind. (Any)",
			"Anonymity. It's my deeds that should be remembered, not their instrument. (Any)"
		],
		"Bond": [
			"I do everything for my family. My first thought is keeping them safe.",
			"What I do, I do for the world. The people don't realize how much they need me.",
			"I've seen too many in need. I must not fail them as everyone else has.",
			"I stand in opposition, less the wicked go unopposed.",
			"I am exceptional. I do this because no one else can, and no one can stop me.",
			"I do everything for those who were taken from me."
		],
		"Flaw": [
			"I am callous about death. It comes to us all eventually.",
			"I never make eye contact or hold it unflinchingly.",
			"I have no sense of humor. Laughing is uncomfortable and embarrassing.",
			"I overexert myself, sometimes needing to recuperate for a day or more.",
			"I think far ahead, a detachedness often mistaken for daydreaming.",
			"I see morality entirely in black and white."
		],
		"Faceless Persona": [
			"A flamboyant spy or brigand",
			"The incarnation of a nation or people",
			"A scoundrel with a masked guise",
			"A vengeful spirit",
			"The manifestation of a deity or your faith",
			"One whose beauty is greatly accented using makeup",
			"An impersonation of another hero",
			"The embodiment of a school of magic",
			"A warrior with distinctive armor",
			"A disguise with animalistic or monstrous characteristics, meant to inspire fear"
		]
	},
	"Faction Agent": {
		"_special": "book-SCAG backgroundtraits-Acolyte",
		"Faction": [
			"The Harpers",
			"The Order of the Gauntlet",
			"The Emerald Enclave",
			"The Lords' Alliance",
			"The Zhentarim"
		]
	},
	"Failed Merchant": {
		"_special": "book-AI",
		"Trait": [
			"I didn't have the cutthroat attitude necessary to succeed. I won't make that mistake again.",
			"Even my competitors said I was affable and talented. Those traits should serve me well.",
			"To prosper, you have to be in control.",
			"The customer is always right.",
			"I was cutting corners and breaking deals to maximize profit. That's why I failed.",
			"When I get an idea, I am single-minded in its execution-even if it's a terrible idea.",
			"If I can be everyone's friend, I'll always have support.",
			"My heart wasn't in being a merchant, so I failed. I'm not all that keen on adventuring either, but I need the money."
		],
		"Ideal": [
			"Survival. Where there's life, there's hope. If I remain alive and flexible, I can succeed. (Any)",
			"Generosity. People helped me when I was down. Now that I'm back on my feet, I'll pay it forward. (Good)",
			"Excitement. Caution got me nowhere in my previous business. I'm not going to let it hold me back now. (Chaotic)",
			"Wealth. With enough coin, I can buy comfort, power, knowledge, and even eternal life. Nothing will stand between me and money. (Evil)",
			"Stability. The mercantile trade was too chaotic for me. I need a nice stable profession, like adventuring. (Lawful)",
			"Redemption. Too many people consider me a failure. So I need to prove them wrong. (Any)"
		],
		"Bond": [
			"My family means everything to me. I failed them before, and I must not do so again.",
			"My church provides a connection to my god, so I must ensure that it is protected and funded.",
			"My former business partner fell ill, and then our business failed. Part of my new venture involves earning enough to take care of their family.",
			"If I take care of my possessions, they'll take care of me. People come and go, but a weapon or a wand is something you can always rely on.",
			"Although my business failed, the people of my community were kind to me. I'll do everything in my power to protect them.",
			"I owe a dangerous person a lot of money. As long as they're happy, they let my debt rest unpaid."
		],
		"Flaw": [
			"Why spend gold here when you can buy the same thing for copper in the next town?",
			"I must have the best of everything. Like, right now.",
			"You haven't heard of me? I'm sure that's because of your ignorance and low breeding.",
			"I failed, but I'm awesome. So when anyone else is successful, it must be because of nepotism, dishonesty, or dumb luck.",
			"I find that most people are trustworthy. Hey, where's my belt pouch?",
			"Nothing gets between me and danger except my fellow adventurers. So I'll be sure to put them there."
		]
	},
	"Far Traveler": {
		"_special": "book-SCAG",
		"Trait": [
			"I have different assumptions from those around me concerning personal space, blithely invading others' space in innocence, or reacting to ignorant invasion of my own.",
			"I have my own ideas about what is and is not food, and I find the eating habits of those around me fascinating, confusing, or revolting.",
			"I have a strong code of honor or sense of propriety that others don't comprehend.",
			"I express affection or contempt in ways that are unfamiliar to others.",
			"I honor my deities through practices that are foreign to this land.",
			"I begin or end my day with small traditional rituals that are unfamiliar to those around me."
		],
		"Ideal": [
			"Open. I have much to learn from the kindly folk I meet along my way. (Good)",
			"Reserved. As someone new to these strange lands, I am cautious and respectful in my dealings. (Lawful)",
			"Adventure. I'm far from home, and everything is strange and wonderful! (Chaotic)",
			"Cunning. Though I may not know their ways, neither do they know mine, which can be to my advantage. (Evil)",
			"Inquisitive. Everything is new, but I have a thirst to learn. (Neutral)",
			"Suspicious. I must be careful, for I have no way of telling friend from foe here. (Any)"
		],
		"Bond": [
			"So long as I have this token from my homeland, I can face any adversity in this strange land.",
			"The gods of my people are a comfort to me so far from home.",
			"I hold no greater cause than my service to my people.",
			"My freedom is my most precious possession. I'll never let anyone take it from me again.",
			"I'm fascinated by the beauty and wonder of this new land.",
			"Though I had no choice, I lament having to leave my loved one(s) behind. I hope to see them again one day."
		],
		"Flaw": [
			"I am secretly (or not so secretly) convinced of the superiority of my own culture over that of this foreign land.",
			"I pretend not to understand the local language in order to avoid interactions I would rather not have.",
			"I have a weakness for the new intoxicants and other pleasures of this land.",
			"I don't take kindly to some of the actions and motivations of the people of this land, because these folk are different from me.",
			"I consider the adherents of other gods to be deluded innocents at best, or ignorant fools at worst.",
			"I have a weakness for the exotic beauty of the people of these lands."
		],
		"Why Are You Here?": [
			"Emissary",
			"Pilgrim",
			"Exile",
			"Sightseer",
			"Fugitive",
			"Wanderer"
		],
		"Where are you from?": [
			"Evermeet",
			"Halruaa",
			"Kara-Tur",
			"Mulhorand",
			"Sossal",
			"Zakhara",
			"The Underdark"
		]
	},
	"Fisher": {
		"_special": "book-Mod",
		"Trait": [
			"I am unmoved by the wrath of nature.",
			"My friends are my crew; we sink or float together.",
			"I need long stretches of quiet to clear my head.",
			"Rich folk don't know the satisfaction of hard work.",
			"I laugh heartily, feel deeply, and fear nothing.",
			"I work hard; nature offers no handouts.",
			"I dislike bargaining; state your price and mean it.",
			"Luck favors me, and I take risks others might not."
		],
		"Ideal": [
			"Camaraderie. Good people make even the longest voyage bearable. (Good)",
			"Luck. Our luck depends on respecting its rules-now throw this salt over your shoulder. (Lawful)",
			"Daring. The richest bounty goes to those who risk everything. (Chaotic)",
			"Plunder. Take all that you can and leave nothing for the scavengers. (Evil)",
			"Balance. Do not fish the same spot twice in a row; suppress your greed, and nature will reward you. (Neutral)",
			"Hard Work. No wave can move a soul hard at work. (Any)"
		],
		"Bond": [
			"I lost something important in the deep sea, and I intend to find it.",
			"Someone else's greed destroyed my livelihood, and I will be compensated.",
			"I will fish the many famous waters of this land.",
			"The gods saved me during a terrible storm, and I will honor their gift.",
			"My destiny awaits me at the bottom of a particular pond in the Feywild.",
			"I must repay my village's debt."
		],
		"Flaw": [
			"I am judgmental, especially of those I deem homebodies or otherwise lazy.",
			"I become depressed and anxious if I'm away from the sea too long.",
			"I have lived a hard life and find it difficult to empathize with others.",
			"I am inclined to tell long-winded stones at inopportune times.",
			"I work hard, but I play harder.",
			"I am obsessed with catching an elusive aquatic beast, often to the detriment of other pursuits. "
		],
		"Fishing Tale": [
			"Lobster Wrestling. You fought in hand-to-hand combat with an immense lobster.",
			"It Dragged the Boat. You nearly caught a fish of monstrous size that pulled your boat for miles.",
			"Fins of Pure Gold. You caught a sea animal whose fins were made of pure gold, but another fisher stole it.",
			"Ghost Fish. You are haunted by a ghostly fish that only you can see.",
			"Nemesis Clam. A large clam containing a pearl the size of your head claimed one of your fingers before jetting away; one day, you'll find that clam.",
			"It Swallowed the Sun. You once saw a fish leap from the water and turn day into night.",
			"Dive into the Abyss. You found yourself in an underwater cave leading to the Abyss, and your luck has been sour ever since.",
			"Love Story. You fell in love with a creature of pure water, but your brief romance ended tragically."
		]
	},
	"Folk Hero": {
		"_special": "book-PHB",
		"Trait": [
			"I judge people by their actions, not their words.",
			"If someone is in trouble, I'm always ready to lend help.",
			"When I set my mind to something, I follow through no matter what gets in my way.",
			"I have a strong sense of fair play and always try to find the most equitable solution to arguments.",
			"I'm confident in my own abilities and do what I can to instill confidence in others.",
			"Thinking is for other people. I prefer action.",
			"I misuse long words in an attempt to sound smarter.",
			"I get bored easily. When am I going to get on with my destiny?"
		],
		"Ideal": [
			"Respect. People deserve to be treated with dignity and respect. (Good)",
			"Fairness. No one should get preferential treatment before the law, and no one is above the law. (Lawful)",
			"Freedom. Tyrants must not be allowed to oppress the people. (Chaotic)",
			"Might. If I become strong, I can take what I want- what I deserve. (Evil)",
			"Sincerity. There's no good in pretending to be something I'm not. (Neutral)",
			"Destiny. Nothing and no one can steer me away from my higher calling. (Any)"
		],
		"Bond": [
			"I have a family, but I have no idea where they are. One day, I hope to see them again.",
			"I worked the land, I love the land, and I will protect the land.",
			"A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter.",
			"My tools are symbols of my past life, and I carry them so that I will never forget my roots.",
			"I protect those who cannot protect themselves.",
			"I wish my childhood sweetheart had come with me to pursue my destiny."
		],
		"Flaw": [
			"The tyrant who rules my land will stop at nothing to see me killed.",
			"I'm convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure.",
			"The people who knew me when I was young know my shameful secret, so I can never go home again.",
			"I have a weakness for the vices of the city, especially hard drink.",
			"Secretly, I believe that things would be better if I were a tyrant lording over the land.",
			"I have trouble trusting in my allies."
		],
		"Defining Event": [
			"I stood up to a tyrant's agents.",
			"I saved people during a natural disaster.",
			"I stood alone against a terrible monster.",
			"I stole from a corrupt merchant to help the poor.",
			"I led a militia to fight off an invading army.",
			"I broke into a tyrant's castle and stole weapons to arm the people.",
			"I trained the peasantry to use farm implements as weapons against a tyrant's soldiers.",
			"A lord rescinded an unpopular decree after I led a symbolic act of protect against it.",
			"A celestial, fey, or similar creature gave me a blessing or revealed my secret origin.",
			"Recruited into a lord's army, I rose to leadership and was commended for my heroism."
		],
		"Became a folk hero because": [
			"I learned what was right and wrong from my family.",
			"I was always enamored by tales of heroes and wished I could be something more than ordinary.",
			"I hated my mundane life, so when it was time for someone to step up and do the right thing, I took my chance.",
			"A parent or one of my relatives was an adventurer, and I was inspired by that person's courage.",
			"A mad old hermit spoke a prophecy when I was born, saying that I would accomplish great things.",
			"I have always stood up for those who are weaker than I am."
		]
	},
	"Gambler": {
		"_special": "book-AI",
		"Trait": [
			"I plan for every contingency. Leave nothing to chance!",
			"Every copper wants to be a silver. Each bet is an opportunity.",
			"I'm one of Lady Luck's favored. Anything I try is destined to succeed.",
			"I've lost so much to gambling that I refuse to spend money on anything anymore.",
			"Nothing is certain. Planning is a coward's act.",
			"I can't be sure who I've swindled, cheated, or defeated, so I keep a low profile in public.",
			"The perfect bet is out there somewhere. I just have to keep my eyes open.",
			"I have beaten my addiction, but all it takes is one weak moment and I'll be back at the card table."
		],
		"Ideal": [
			"Knowledge. Knowledge is power, and knowing which horse to back is the key to success. (Any)",
			"Fate. Whatever happens is fated, regardless of any planning or striving. (Lawful)",
			"Bravery. If you want to succeed, you have to take risks. (Chaotic)",
			"Survival. You can't win if you're dead. Live to fight another day-when the odds might be more in your favor. (Any)",
			"Reliability. When I was in need, I was able to rely on others. Now I want to be the one others rely on. (Good)",
			"Victory. Winning is the real measure of a person. In the end, the only thing that matters is the scoreboard. (Evil)"
		],
		"Bond": [
			"One person in particular owes me a lot of money, and I need to keep them alive if I want to be repaid.",
			"I'm loyal to the friend or family member who taught me how to gamble.",
			"The person who saved me from my gambling addiction is the only reason I'm alive today.",
			"A patron once fronted me money in exchange for a percentage of my winnings. I owe them a debt of gratitude. And a lot of cash.",
			"A criminal syndicate I once played for isn't happy I left the game, and its enforcers are looking for me.",
			"Urchins once helped me find marks for my games. Now I'm driven to help them escape the streets."
		],
		"Flaw": [
			"I don't know when to quit. Especially when everyone else is telling me to.",
			"I save my sympathy for my friends, and I have no friends.",
			"You think we're in trouble now? Let me tell you how bad things are likely to get!",
			"You can loan me a little, right? I've got a sure thing. I'll double your money, guaranteed.",
			"I was once a terribly flawed person, like you. Let me tell you how you can save yourself.",
			"I'm a great gambler. I'm just bad at math and logic."
		]
	},
	"Gladiator": {
		"_special": "book-PHB backgroundtraits-Entertainer"
	},
	"Golgari Agent": {
		"_special": "book-GGtR",
		"Trait": [
			"Remember, I could kill you in your sleep. Or put centipedes in your bedroll.",
			"I like to remind people of their inevitable demise.",
			"Sometimes I give voice to the whispers of the rot, which I hear but no one else does.",
			"I do my best to discourage anyone from approaching or talking to me.",
			"I have accepted my death. Hence, I don't fear it.",
			"Like roots growing through stone, I am relentless and determined in my action.",
			"I put my knowledge of anatomy to use by narrating the injuries my enemies suffer in grisly detail.",
			"Like a wild animal, I lash out viciously when I'm provoked-and I'm easily provoked."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Stoicism. All of us are part of the cyclical march of nature, which will continue with or without us. (Neutral)",
			"Nature. The natural world is more important than the edifices of the city and civilization. (Neutral)",
			"Interdependence. We are all part of nature's web. (Lawful)",
			"Ambition. The time of Golgari ascendance is at hand, and I intend to have a prominent place in the new world order. (Evil)",
			"Live and Let Live. Meddling in the affairs of other guilds is a great way to get squashed like a bug. (Neutral)"
		],
		"Bond": [
			"I cherish the finger of a family member who was petrified by a medusa.",
			"I have an identical twin who is as different from me as any person could be.",
			"I want to lead one faction of the guild to a new position of dominance.",
			"I love spending time in the moss-covered building where I took part in my first reclamation mission.",
			"I found something in the sewer that must never come to light.",
			"I am forever grateful to the reclaimer who found me floating facedown in the sewer, moments from death."
		],
		"Flaw": [
			"Death comes for us all, so you can't expect me to take care of someone who can't fight it off.",
			"I assume that anyone outside the Golgari looks down on me.",
			"I feel a need for revenge against those who enjoy the privilege of living above ground.",
			"I don't bother to couch my opinions in flattering words.",
			"I can't help but pocket any trinket or coin I come across, no matter how worthless.",
			"I'm convinced that I'm better and stronger than members of other guilds, isolated as they are from the realities of life and death."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Golgari",
			"_guild": [
				"One of my parents is an elite assassin, a member of the Ochran.",
				"I learned combat from a kraul.",
				"I know a medusa who is stationed in the guildhall.",
				"I had a torrid romance with a spore druid responsible for a large rot farm.",
				"There's a troll in a remote area of the undercity who seems to find me interesting-and who knows more than you'd think.",
				"An elf lich is determined to see me become a lich someday, too.",
				"A medusa decided it would be more fun to recruit me into the guild than to kill me.",
				"I know a find broker who can locate just about anything, for the right price."
			],
			"_nonguild": [
				"An Azorius arrester I literally pulled out of the gutter will do anything for me.",
				"Someone joined the Gruul in a battle against the Boros once, and the sergeant of that Boros squad would love to prove that it was me.",
				"I had a romance with a Dimir agent whom I still feed secrets to.",
				"_reroll",
				"I joined the Gruul in a battle against the Boros once, and the chief of that small clan thanks me for turning the tide.",
				"An Izzet scientist resents that I sold a scrapped invention I found in the sewer.",
				"My undercity explorations led me into an Orzhov vault, and a spirit thinks I stole something valuable.",
				"I found a baby beast and sold it to a Rakdos wrangler who remains grateful to me.",
				"A Selesnya druid and I share an interest in the same garden, and we have enjoyable arguments there.",
				"I regularly pick up refuse from beneath a Simic laboratory, and sometimes I talk to the researcher who dumps it there."
			]
		}
	},
	"Grinner": {
		"_special": "book-EGtW",
		"Trait": [
			"I love the spotlight. Everyone, look at me!",
			"Give me a drink and I'm your friend.",
			"Talk to me about yourself. I'm a hell of a listener.",
			"I hate to start fights, but I love to finish them.",
			"I can't sit still.",
			"I'm always humming an old tune from my past.",
			"When I don't have a reason to smile, I'm miserable.",
			"I'm lucky like you wouldn't believe."
		],
		"Ideal": [
			"Revolution. Tyrants must fall, no matter the cost. (Chaotic)",
			"Compassion. The only way to make a better world is to perform small kindnesses. (Good)",
			"Justice. A nation built upon just foundations will uphold freedom for all. (Law)",
			"Expression. Music, joy, and laughter are the keys to freedom. (Good)",
			"Self-Determination. People should be free to do as they please. (Chaotic)",
			"Vigilance. A free people must be carefully taught, lest they be misled. (Neutral)"
		],
		"Bond": [
			"I lost someone important to an agent of the Dwendalian Empire. That regime will fall.",
			"The first people to be hurt by this war will be the common folk. I need to protect them.",
			"Music helped me through a dark time in my life. Now, I'll use music to change the world.",
			"I will be known as the greatest spy who ever lived.",
			"All life is precious to me. I know I can change the world without taking a humanoid life.",
			"The elite in their ivory towers don't understand how we suffer. I intend to show them. "
		],
		"Flaw": [
			"I've never lied once in my life. What? No, I'm not crossing my fingers!",
			"I do everything big! Subtlety? I don't know the meaning of subtlety! Oh, that's a problem?",
			"Being a spy in wartime is painful. I've seen so much suffering, I think I 'm losing my mind.",
			"I can't focus on my mission. I just want to carouse and sing and play!",
			"Yeah, that's my name. Yeah, I'm a Grinner spy. Who cares about staying undercover?",
			"I can't afford to trust anyone. Not. Anyone."
		],
		"Favorite Code-Song": [
			"Zan's Comin' Back. This hopeful Tal 'Dorei folk song declares the inevitable return of a just ruler. Use it to seek out potential allies.",
			"Blow Fire Down the Coast. A rowdy fighting song from the Clovis Concord, this ditty talks of blasting up pirate ships. Use it to encourage battle.",
			"Hush! Onward Come the Dragons. This Tal'Dorei folk song recounts the terror in the days after thei nvasion ofthe red dragon called the Cinder King. Use it to encourage caution in speech and deed.",
			"Let the Sword Grow Rust. An antiwar anthem from Marquet, this song has uncertain origins. Use it to help quell violent encounters.",
			"Drink Deep, Li'/ Hummingbird. A drinking rondo from the Menagerie Coast, this song tells the tale of a young person who drinks so heavily that they awaken to find they've stowed away on a ship. Use it to encourage alertness in social situations.",
			"Dirge for the Emerald Fire. This elven song supposedly has thousands of obscure verses. Use the first two verses to spread news of death or defeat."
		]
	},
	"Gruul Anarch": {
		"_special": "book-GGtR",
		"Trait": [
			"Unlike people, the beasts of the wild are friends who won't stab me in the back.",
			"Go ahead and insult me-I dare you.",
			"I scorn those who can't survive away from the comforts of the city.",
			"Don't tell me I'm not allowed to do something.",
			"Laws are for people who are afraid to face their inner beasts.",
			"I smear the blood of my enemies over my skin.",
			"I was, in fact, raised by maaka.",
			"HarrRRAAGGHH! [I rarely form a coherent sentence and prefer to express myself by breaking things.]"
		],
		"Ideal": [
			"Clan. My clan is all that really matters. (Any)",
			"Anarchy. No person or law or custom can tell another what to do. (Chaotic)",
			"Nature. We weren't born tame or domesticated, so we shouldn't have to live that way. (Neutral)",
			"Might. The strongest are meant to dominate the weak. (Evil)",
			"Rage. AAAAAARRRRggggh! [To live is to feel and express the rage burning in your belly.] (Chaotic)",
			"Tradition. The Old Ways must be preserved and upheld. (Any) "
		],
		"Bond": [
			"I am determined that one day I will lead my clan-or a new one.",
			"I would give my life for my clan chieftain.",
			"The chieftain of another clan has a grudge against me.",
			"I am devoted to a sacred site in the midst of the rubblebelt.",
			"My weapon is made from the first raktusk I ever hunted.",
			"GrrrRRAAAAGGHH! [I will do anything to prove myself greater than my siblings or ancestors.]"
		],
		"Flaw": [
			"If you question my courage, I will never back down.",
			"HrrrGGGAAAARRuuuh! [My anger in battle led to the death of a loved one.]",
			"I'm as stubborn as a batterboar.",
			"I'm so convinced of my superiority over soft, civilized people that I'll take great risks to prove it.",
			"I'm easily manipulated by people I find attractive.",
			"I'm not actually all that angry."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Gruul",
			"_guild": [
				"One of my parents is a renowned warrior in my clan.",
				"My sibling has the ear of the clan chief.",
				"I have cousins in a different clan.",
				"When we were younger, I was romantically involved with a prominent warrior in my clan.",
				"A druid in my clan believes I have a destiny to fulfill.",
				"The warrior who trained me remembers me for my exceptional potential.",
				"My clan chief killed one of my parents, who had challenged the chief for leadership of the clan. Some combination of resentment and remorse stirs the clan chief to help me sometimes.",
				"I made a strong impression on Borborygmos."
			],
			"_nonguild": [
				"An Azorius arrester thinks I can be reformed.",
				"A Boros soldier gives me gifts in exchange for information about other clans' movements.",
				"I once caught and released a Dimir spy.",
				"I consult with a Golgari shaman for spiritual guidance at times.",
				"_reroll",
				"An Izzet scientist blames the Gruul for the destruction of his life's work in a raid, but seems to think that I'm not like other Gruul.",
				"I foolishly borrowed money from an Orzhov syndic to indulge a shameful vice.",
				"A close friend left our clan and joined the Cult of Rakdos.",
				"A distant relative is trying to recruit me into the Selesnya Conclave.",
				"I stopped a Simic biomancer from trapping wild beasts to perform vile experiments on them."
			]
		}
	},
	"Guild Artisan": {
		"_special": "book-PHB",
		"Trait": [
			"I believe that anything worth doing is worth doing right. I can't help it- I'm a perfectionist.",
			"I'm a snob who looks down on those who can't appreciate fine art.",
			"I always want to know how things work and what makes people tick.",
			"I'm full of witty aphorisms and have a proverb for every occasion.",
			"I'm rude to people who lack my commitment to hard work and fair play.",
			"I like to talk at length about my profession.",
			"I don't part with my money easily and will haggle tirelessly to get the best deal possible.",
			"I'm well known for my work, and I want to make sure everyone appreciates it. I'm always taken aback when people haven't heard of me."
		],
		"Ideal": [
			"Community. It is the duty of all civilized people to strengthen the bonds of community and the security of civilization. (Lawful)",
			"Generosity. My talents were given to me so that I could use them to benefit the world. (Good)",
			"Freedom. Everyone should be free to pursue his or her own livelihood. (Chaotic)",
			"Greed. I'm only in it for the money. (Evil)",
			"People. I'm committed to the people I care about, not to ideals. (Neutral)",
			"Aspiration. I work hard to be the best there is at my craft. (Any)"
		],
		"Bond": [
			"The workshop where I learned my trade is the most important place in the world to me.",
			"I created a great work for someone, and then found them unworthy to receive it. I'm still looking for someone worthy.",
			"I owe my guild a great debt for forging me into the person I am today.",
			"I pursue wealth to secure someone's love.",
			"One day I will return to my guild and prove that I am the greatest artisan of them all.",
			"I will get revenge on the evil forces that destroyed my place of business and ruined my livelihood."
		],
		"Flaw": [
			"I'll do anything to get my hands on something rare or priceless.",
			"I'm quick to assume that someone is trying to cheat me.",
			"No one must ever learn that I once stole money from guild coffers.",
			"I'm never satisfied with what I have- I always want more.",
			"I would kill to acquire a noble title.",
			"I'm horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I'm surrounded by rivals."
		],
		"Guild Business": [
			"Alchemists and apothecaries",
			"Armorers, locksmiths, and finesmiths",
			"Brewers, distillers, and vintners",
			"Calligraphers, scribes, and scriveners",
			"Carpenters, roofers, and plasterers",
			"Cartographers, surveyors, and chart-makers",
			"Cobblers and shoemakers",
			"Cooks and bakers",
			"Glassblowers and glaziers",
			"Jewelers and gemcutters",
			"Leatherworkers, skinners, and tanners",
			"Masons and stonecutters",
			"Painters, limners, and sign-makers",
			"Potters and tile-makers",
			"Shipwrights and sailmakers",
			"Smiths and metal-forgers",
			"Tinkers, pewterers, and casters",
			"Wagon-makers and wheelwrights",
			"Weavers and dyers",
			"Woodcarvers, coopers, and bowyers"
		],
		"Became a guild artisan because": [
			"I was apprenticed to a master who taught me the guild's business.",
			"I helped a guild artisan keep a secret or complete a task, and in return I was taken on as an apprentice.",
			"One of my family members who belonged to the guild made a place for me.",
			"I was always good with my hands, so I took the opportunity to learn a trade.",
			"I wanted to get away from my home situation and start a new life.",
			"I learned the essentials of my craft from a mentor but had to join the guild to finish my training."
		]
	},
	"Guild Merchant": {
		"_special": "book-PHB backgroundtraits-Guild_Artisan"
	},
	"Haunted One": {
		"_special": "book-Mod",
		"Trait": [
			"I don't run from evil. Evil runs from me.",
			"I like to read and memorize poetry. It keeps me calm and brings me fleeting moments of happiness.",
			"I spend money freely and live life to the fullest, knowing that tomorrow I might die.",
			"I live for the thrill of the hunt.",
			"I don't talk about the thing that torments me. I'd rather not burden others with my curse.",
			"I expect danger around every corner.",
			"I refuse to become a victim, and I will not allow others to be victimized.",
			"I put no trust in divine beings."
		],
		"Ideal": [
			"I try to help those in need, no matter what the personal cost. (Good)",
			"I'll stop the spirits that haunt me or die trying. (Any)",
			"I kill monsters to make the world a safer place, and to exorcise my own demons. (Good).",
			"I have a dark calling that puts me above the law. (Chaotic)",
			"I like to know my enemy's capabilities and weaknesses before rushing into battle. (Lawful).",
			"I'm a monster that destroys other monsters, and anything else that gets in my way. (Evil)."
		],
		"Bond": [
			"I keep my thoughts and discoveries in a journal. My journal is my legacy.",
			"I would sacrifice my life and my soul to protect the innocent.",
			"My torment drove away the person I love. I strive to win back the love I've lost.",
			"A terrible guilt consumes me. I hope that I can find redemption through my actions.",
			"There's evil in me, I can feel it. It must never be set free.",
			"I have a child to protect. I must make the world a safer place for him (or her)."
		],
		"Flaw": [
			"I have certain rituals that I must follow every day. I can never break them.",
			"I assume the worst in people.",
			"I feel no compassion for the dead. They're the lucky ones.",
			"I have an addiction.",
			"I am a purveyor of doom and gloom who lives in a world without hope.",
			"I talk to spirits that no one else can see."
		],
		"Harrowing Event": [
			"A monster that slaughtered dozens of innocent people spared your life, and you don't know why.",
			"You were born under a dark star. You can feel it watching you, coldly and distantly. Sometimes it beckons you in the dead of night.",
			"An apparition that has haunted your family for generations now haunts you. You don't know what it wants, and it won't leave you alone.",
			"Your family has a history of practicing the dark arts. You dabbled once and felt something horrible clutch at your soul, whereupon you fled in terror.",
			"An oni took your sibling one cold, dark night, and you were unable to stop it.",
			"You were cursed with lycanthropy and later cured. You are now haunted by the innocents you slaughtered.",
			"A hag kidnapped and raised you. You escaped, but the hag still has a magical hold over you and fills your mind with evil thoughts.",
			"You opened an eldritch tome and saw things unfit for a sane mind. You burned the book, but its words and images are burned into your psyche.",
			"A fiend possessed you as a child. You were locked away but escaped. The fiend is still inside you, but now you try to keep it locked away.",
			"You did terrible things to avenge the murder of someone you loved. You became a monster, and it haunts your waking dreams."
		]
	},
	"Hermit": {
		"_special": "book-PHB",
		"Trait": [
			"I've been isolated for so long that I rarely speak, preferring gestures and the occasional grunt.",
			"I am utterly serene, even in the face of disaster.",
			"The leader of my community had something wise to say on every topic, and I am eager to share that wisdom.",
			"I feel tremendous empathy for all who suffer.",
			"I'm oblivious to etiquette and social expectations.",
			"I connect everything that happens to me to a grand, cosmic plan.",
			"I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings.",
			"I am working on a grand philosophical theory and love sharing my ideas."
		],
		"Ideal": [
			"Greater Good. My gifts are meant to be shared with all, not used for my own benefit. (Good)",
			"Logic. Emotions must not cloud our sense of what is right and true, or our logical thinking. (Lawful)",
			"Free Thinking. Inquiry and curiosity are the pillars of progress. (Chaotic)",
			"Power. Solitude and contemplation are paths toward mystical or magical power. (Evil)",
			"Live and Let Live. Meddling in the affairs of others only causes trouble. (Neutral)",
			"Self-Knowledge. If you know yourself, there's nothing left to know. (Any)"
		],
		"Bond": [
			"Nothing is more important than the other members of my hermitage, order, or association.",
			"I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them.",
			"I'm still seeking the enlightenment I pursued in my seclusion, and it still eludes me.",
			"I entered seclusion because I loved someone I could not have.",
			"Should my discovery come to light, it could bring ruin to the world.",
			"My isolation gave me great insight into a great evil that only I can destroy."
		],
		"Flaw": [
			"Now that I've returned to the world, I enjoy its delights a little too much.",
			"I harbor dark, bloodthirsty thoughts that my isolation and meditation failed to quell.",
			"I am dogmatic in my thoughts and philosophy.",
			"I let my need to win arguments overshadow friendships and harmony.",
			"I'd risk too much to uncover a lost bit of knowledge.",
			"I like keeping secrets and won't share them with anyone."
		],
		"Life of Seclusion": [
			"I was searching for spiritual enlightenment.",
			"I was partaking of communal living in accordance with the dictates of a religious order.",
			"I was exiled for a crime I didn't commit.",
			"I retreated from society after a life-altering event.",
			"I needed a quiet place to work on my art, literature, music, or manifesto.",
			"I needed to commune with nature, far from civilization.",
			"I was the caretaker of an ancient ruin or relic.",
			"I was a pilgrim in search of a person, place, or relic of spiritual significance."
		],
		"Became a hermit because": [
			"My enemies ruined my reputation, and I fled to the wilds to avoid further disparagement.",
			"I am comfortable with being isolated, as I seek inner peace.",
			"I never liked the people I called my friends, so it was easy for me to strike out on my own.",
			"I felt compelled to forsake my past, but did so with great reluctance, and sometimes I regret making that decision.",
			"I lost everything- my home, my family, my friends. Going it alone was all I could do.",
			"Society's decadence disgusted me, so I decided to leave it behind."
		]
	},
	"House Agent": {
		"_special": "book-EBR",
		"House": [
			"Cannith",
			"Deneith",
			"Ghallanda",
			"Jorasco",
			"Kundarak",
			"Lyrandar",
			"Medani",
			"Orien",
			"Phiarlan",
			"Sivis",
			"Tharashk",
			"Thuranni",
			"Vadalis"
		],
		"House Agent Role": [
			"Acquisition",
			"Investigation",
			"Research & Development",
			"Security",
			"Intimidation",
			"Exploration",
			"Negotiation",
			"Covert Operations"
		],
		"Trait": [
			"I'm always looking to improve efficiency.",
			"I love to share trivia about my house’s business.",
			"I never forget an insult against me or my house.",
			"I'm enthusiastic about everything my house does.",
			"I represent my house and take pride in my looks.",
			"I'm critical of monarchies and limits on the houses."
		],
		"Ideal": [
			"Common Good. My house serves a vital function, and its prosperity will help everyone. (Good)",
			"Tradition. I uphold traditions of my house and bring honor to my family. (Lawful)",
			"Innovation. Abandon old traditions and find better ways to do things. (Chaotic)",
			"Power. I want to ensure the prosperity of my house and wield its power myself. (Evil)",
			"Discovery. I want to learn all I can, both for my house and for my own curiosity. (Any)",
			"Comfort. I want to ensure that me and mine enjoy the best things in life. (Any)"
		],
		"Bond": [
			"My house is my family. I would do anything for it.",
			"I love someone from another house, but the relationship is forbidden.",
			"Someone I love was killed by a rival faction within my house, and I will have revenge.",
			"I don't care about the house as a whole, but I would do anything for my old mentor.",
			"My house must evolve, and I'll lead the evolution.",
			"I'm determined to impress the leaders of my house, and to become a leader myself."
		],
		"Flaw": [
			"I'm fixated on following official protocols.",
			"I'm obsessed with conspiracy theories and worried about secret societies and hidden demons.",
			"My house and bloodline make me the best!",
			"My secret could get me expelled from my house.",
			"My religious beliefs aren't widespread in my house.",
			"I'm working for a hidden faction in my house that gives me secret assignments."
		]
	},
	"Inheritor": {
		"_special": "book-SCAG backgroundtraits-Folk_Hero",
		"Inheritance": [
			"A document such as a map, a letter, or a journal",
			"A trinket (see \"Trinkets\" in chapter 5 of the Player's Handbook)",
			"A trinket (see \"Trinkets\" in chapter 5 of the Player's Handbook)",
			"An article of clothing",
			"A piece of jewelry",
			"An arcane book or formulary",
			"A written story, song, poem, or secret",
			"A tattoo or other body marking"
		]
	},
	"Investigator": {
		"_special": "book-SCAG backgroundtraits-Soldier"
	},
	"Izzet Engineer": {
		"_special": "book-GGtR",
		"Trait": [
			"I have a hard time staying focused on ... oh, and my brain tends to jump from one ... did I mention focus?",
			"I get really excited about my ideas and I can't wait to talk about them and start putting them into practice and tinkering with them and I want to tell you about how exciting it all is!",
			"It's not magic-or anything, really-if you do it only halfway. Whatever I do, I give it all I've got.",
			"I do what my gut tells me.",
			"Life's an experiment, and I can't wait to see what happens.",
			"I pepper my speech with the incomprehensible jargon of my trade, like mizzium droplets inserted into a weird-field suspension.",
			"Great ideas are fine, but great results are what counts.",
			"If you can guess what I'm about to do, that means I've run out of imagination."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Creativity. Half the world's troubles come from stodgy thinking, stuck in the past. We need innovative solutions. (Chaotic)",
			"Discovery. Every experiment has the potential to reveal more secrets of the multiverse. (Any)",
			"Science. A rigorous application of logical principles and protocols will lead us toward progress more surely than any belief system. (Lawful)",
			"Fun. I love my job! Despite the dangerous working conditions, there's nothing I'd rather do. (Chaotic)",
			"Power. Someday I'll find or create the magic that will make me the most powerful being in Ravnica. (Evil)"
		],
		"Bond": [
			"I have dedicated my life to finding a solution to a scientific problem.",
			"I'll never forget the laboratory where I learned my skills, or the other attendants who learned alongside me.",
			"I'm convinced it was sabotage that destroyed my first laboratory and killed many of my friends, and I seek revenge against whoever did it.",
			"I have the schematics for an invention that I hope to build one day, once I have the necessary resources.",
			"A fellow student and I are racing to solve the same scientific puzzle.",
			"I would do anything the guildmaster told me to do."
		],
		"Flaw": [
			"If there's a plan, I'll probably forget it. If I don't forget it, I'll probably ignore it.",
			"I get bored easily, and if nothing is happening I'll make something happen.",
			"Nothing is ever simple, and if it seems simple, I'll find a way to make it complicated.",
			"I tend to ignore sleep for days when I'm conducting research, often at the expense of my own health and safety.",
			"I'm convinced there's not a soul in Ravnica, except maybe the great Niv-Mizzet, who can match my boundless intellect.",
			"I'm incapable of admitting a flaw in my logic."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Izzet",
			"_guild": [
				"An older relative is a member of the guild's board of directors.",
				"I know a sprite who carries important messages among the guild's laboratories.",
				"A sibling is the head of a laboratory doing exotic research.",
				"A former colleague is now an attendant in a laboratory in the central guildhall.",
				"I'm in regular communication with an instructor who set me on the course of my life and research.",
				"I had a romance with a chemister working in the Blistercoils.",
				"As an attendant, I had a fierce rivalry with another attendant for our supervisor's attention.",
				"The guildmaster, Niv-Mizzet, took note of one of my experiments!"
			],
			"_nonguild": [
				"An Azorius inspector seems interested in my work.",
				"I was ready to join the Boros before I decided on Izzet, and I sometimes still hear from the sergeant who tried to recruit me.",
				"One of my former assistants turned out to be a Dimir spy. We're not on friendly terms anymore, but we have a habit of running into each other.",
				"A Golgari assassin killed a bitter rival of mine, leaving me with conflicted feelings.",
				"I helped a minor Gruul chieftain acquire an Izzet weapon.",
				"_reroll",
				"An Orzhov banker financed my laboratory's current work and expects great returns.",
				"I have a cousin in the Cult of Rakdos, and we get along quite well.",
				"A former attendant from the same laboratory ran off to join the Selesnya, and we get into a big argument every time we run into each other.",
				"I compare notes and techniques with a Simic scientist over lunch sometimes."
			]
		}
	},
	"Knight": {
		"_special": "book-PHB backgroundtraits-Noble"
	},
	"Knight of the Order": {
		"_special": "book-SCAG backgroundtraits-Soldier"
	},
	"Luxonborn": {
		"_special": "book-EGtW backgroundtraits-Criminal"
	},
	"Marine": {
		"_special": "book-Mod",
		"Trait": [
			"I speak rarely but mean every word I say.",
			"I laugh loudly and see the humor in stressful situations.",
			"I prefer to solve problems without violence, but I finish fights decisively.",
			"I enjoy being out in nature; poor weather never sours my mood.",
			"I am dependable.",
			"I am always working on some project or other.",
			"I become cantankerous and quiet in the rain.",
			"When the sea is within my sight, my mood is jovial and optimistic."
		],
		"Ideal": [
			"Teamwork. Success depends on cooperation and communication. (Good)",
			"Code. The marines' code provides a solution for every problem, and following it is imperative. (Lawful)",
			"Embracing. Lafe is messy. Throwing yourself into the worst of it is necessary to get the job done. (Chaotic)",
			"Might. The strong train so that they might rule those who are weak. (Evil)",
			"Bravery. To act when others quake in fear-this is the essence of the warrior. (Any)",
			"Perseverance. No injury or obstacle can turn me from my goal. (Any)"
		],
		"Bond": [
			"I face danger and evil to offset an unredeemable act in my past.",
			"I. Will. Finish. The. Job.",
			"I must set an example of hope for those who have given up.",
			"I'm searching for a fellow marine captured by an elusive enemy.",
			"Fear leads to tyranny, and both must be eradicated.",
			"My commander betrayed my unit, and I will have revenge."
		],
		"Flaw": [
			"I grow combative and unpredictable when I drink.",
			"I find civilian life difficult and struggle to say the right thing in social situations.",
			"My intensity can drive others away.",
			"I hold grudges and have difficulty forgiving others.",
			"I become irrational when innocent people are hurt.",
			"I sometimes stay up all night listening to the ghosts of my fallen enemies."
		],
		"Hardship": [
			"Nearly Drowned. You hid underwater to avoid detection by enemies and held your breath for an extremely long time. Just before you would have died, you had a revelation about your existence.",
			"Captured. You spent months enduring thirst, starvation, and torture at the hands of your enemy, but you never broke.",
			"Sacrifice. You enabled the escape of your fellow soldiers, but at great cost to yourself. Some of your past comrades may think you're dead.",
			"Juggernaut. No reasonable explanation can explain how you survived a particular battle. Every arrow and bolt missed you. You slew scores of enemies single-handedly and led your comrades to victory.",
			"Stowaway. For days, you hid in the bilge of an enemy ship, surviving on brackish water and foolhardy rats. At the right moment, you crept up to the deck and took over the ship on your own.",
			"Leave None Behind. You carried an injured marine for miles to avoid capture and death."
		]
	},
	"Mercenary Veteran": {
		"_special": "book-SCAG backgroundtraits-Soldier"
	},
	"Myriad Operative": {
		"_special": "book-EGtW backgroundtraits-Criminal"
	},
	"Noble": {
		"_special": "book-PHB",
		"Trait": [
			"My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.",
			"The common folk love me for my kindness and generosity.",
			"No one could doubt by looking at my regal bearing that I am a cut above the unwashed masses.",
			"I take great pains to always look my best and follow the latest fashions.",
			"I don't like to get my hands dirty, and I won't be caught dead in unsuitable accommodations.",
			"Despite my noble birth, I do not place myself above other folk. We all have the same blood.",
			"My favor, once lost, is lost forever.",
			"If you do me an injury, I will crush you, ruin your name, and salt your fields."
		],
		"Ideal": [
			"Respect. Respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity. (Good)",
			"Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine. (Lawful)",
			"Independence. I must prove that I can handle myself without the coddling of my family. (Chaotic)",
			"Power. If I can attain more power, no one will tell me what to do. (Evil)",
			"Family. Blood runs thicker than water. (Any)",
			"Noble Obligation. It is my duty to protect and care for the people beneath me. (Good)"
		],
		"Bond": [
			"I will face any challenge to win the approval of my family.",
			"My house's alliance with another noble family must be sustained at all costs.",
			"Nothing is more important than the other members of my family.",
			"I am in love with the heir of a family that my family despises.",
			"My loyalty to my sovereign is unwavering.",
			"The common folk must see me as a hero of the people."
		],
		"Flaw": [
			"I secretly believe that everyone is beneath me.",
			"I hide a truly scandalous secret that could ruin my family forever.",
			"I too often hear veiled insults and threats in every word addressed to me, and I'm quick to anger.",
			"I have an insatiable desire for carnal pleasures.",
			"In fact, the world does revolve around me.",
			"By my words and actions, I often bring shame to my family."
		],
		"Became a noble because": [
			"I come from an old and storied family, and it fell to me to preserve the family name.",
			"My family has been disgraced, and I intend to clear our name.",
			"My family recently came by its title, and that elevation thrust us into a new and strange world.",
			"My family has a title, but none of my ancestors have distinguished themselves since we gained it.",
			"My family is filled with remarkable people. I hope to live up to their example.",
			"I hope to increase my family's power and influence."
		]
	},
	"Orzhov Representative": {
		"_special": "book-GGtR",
		"Trait": [
			"I am always willing to act in accordance with the financial incentive offered.",
			"Debts are never meant to be forgiven.",
			"I am accustomed to enjoying the finest pleasures money can buy.",
			"No one could doubt that I am a cut above the masses of pitiful peasants that infest the city.",
			"I can't stand to spend a zib more than necessary to purchase what I need.",
			"I hate it when people try to make light of a serious situation.",
			"I want to make sure everyone is aware of how wealthy, powerful, and important I am.",
			"I can't think of anything to look forward to."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Wealth. I will do whatever it takes to become as rich as the oligarchs. (Evil)",
			"Power. One day, I will be the one giving orders. (Evil)",
			"Prestige. I want to be admired, respected, feared, or even hated for my position and wealth. (Evil)",
			"Stability. The economy functions best when chaos is kept under control and everyone knows their place. (Lawful)",
			"Eternity. I want to live forever-in the flesh as long as possible, and as a spirit afterward. (Any)"
		],
		"Bond": [
			"The unbearable weight of my debt has driven me to desperation.",
			"I'm duty-bound to obey the dictates of an ancestor on the Ghost Council.",
			"I value my worldly goods more highly than my mortal life.",
			"An oligarch publicly humiliated me, and I will exact revenge on that whole family.",
			"My faith in the Obzedat never wavers.",
			"I want to prove myself more worthy than an older sibling and thereby ensure that I inherit a greater share of my parents' wealth."
		],
		"Flaw": [
			"I hold a scandalous secret that could ruin my family forever-but could also earn me the favor of the Ghost Council.",
			"I'm convinced that everyone I know is plotting against me.",
			"I'll brave any risk if the monetary reward is great enough.",
			"I am convinced that I am far more important than anyone else is willing to acknowledge.",
			"I have little respect for anyone who isn't wealthy.",
			"I'll take any opportunity to steal from wealthier people, even for worthless trinkets."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Orzhov",
			"_guild": [
				"The spirit of an ancestor has taken an interest in me.",
				"An older cousin has the ear of a powerful oligarch.",
				"I know a knight who is responsible for collecting debts from powerful people.",
				"A vampire pontiff tried to use me as a pawn in past schemes.",
				"A silent spirit follows me around.",
				"A sibling has keys to parts of Vizkopa Bank.",
				"A giant thinks I'm adorable.",
				"I regularly offer tribute to an angel, and the angel has been kind to me in turn."
			],
			"_nonguild": [
				"An Azorius arrester is always snooping into my family's business transactions.",
				"A Boros paladin saved my life, to my everlasting shame.",
				"I know a shopkeeper who is secretly a Dimir agent and tries to make sure that I keep that secret hidden.",
				"I'm fascinated by the culture of the Golgari kraul, and I have formed a friendship with one of their death priests.",
				"A Gruul druid hates me but would never dare to touch me.",
				"I know an Izzet engineer who is desperate to pay off a debt accrued by a deceased relative.",
				"_reroll",
				"My childhood friend is now a Rakdos torturer. We still meet for drinks occasionally.",
				"I have the key to a vault where a Selesnya druid is hiding an item of secret shame.",
				"I was married to a Simic bioengineer."
			]
		}
	},
	"Outlander": {
		"_special": "book-PHB",
		"Trait": [
			"I'm driven by a wanderlust that led me away from home.",
			"I watch over my friends as if they were a litter of newborn pups.",
			"I once ran twenty-five miles without stopping to warn to my clan of an approaching orc horde. I'd do it again if I had to.",
			"I have a lesson for every situation, drawn from observing nature.",
			"I place no stock in wealthy or well-mannered folk. Money and manners won't save you from a hungry owlbear.",
			"I'm always picking things up, absently fiddling with them, and sometimes accidentally breaking them.",
			"I feel far more comfortable around animals than people.",
			"I was, in fact, raised by wolves."
		],
		"Ideal": [
			"Change. Life is like the seasons, in constant change, and we must change with it. (Chaotic)",
			"Greater Good. It is each person's responsibility to make the most happiness for the whole tribe. (Good)",
			"Honor. If I dishonor myself, I dishonor my whole clan. (Lawful)",
			"Might. The strongest are meant to rule. (Evil)",
			"Nature. The natural world is more important than all the constructs of civilization. (Neutral)",
			"Glory. I must earn glory in battle, for myself and my clan. (Any)"
		],
		"Bond": [
			"My family, clan, or tribe is the most important thing in my life, even when they are far from me.",
			"An injury to the unspoiled wilderness of my home is an injury to me.",
			"I will bring terrible wrath down on the evildoers who destroyed my homeland.",
			"I am the last of my tribe, and it is up to me to ensure their names enter legend.",
			"I suffer awful visions of a coming disaster and will do anything to prevent it.",
			"It is my duty to provide children to sustain my tribe."
		],
		"Flaw": [
			"I am too enamored of ale, wine, and other intoxicants.",
			"There's no room for caution in a life lived to the fullest.",
			"I remember every insult I've received and nurse a silent resentment toward anyone who's ever wronged me.",
			"I am slow to trust members of other races, tribes, and societies.",
			"Violence is my answer to almost any challenge.",
			"Don't expect me to save those who can't save themselves. It is nature's way that the strong thrive and the weak perish."
		],
		"Origin": [
			"Forester",
			"Bounty hunter",
			"Trapper",
			"Pilgrim",
			"Homesteader",
			"Tribal nomad",
			"Guide",
			"Hunter-gatherer",
			"Exile or outcast",
			"Tribal marauder"
		],
		"Became an outlander because": [
			"I spent a lot of time in the wilderness as a youngster, and I came to love that way of life.",
			"From a young age, I couldn't abide the stink of the cities and preferred to spend my time in nature.",
			"I came to understand the darkness that lurks in the wilds, and I vowed to combat it.",
			"My people lived on the edges of civilization, and I learned the methods of survival from my family.",
			"After a tragedy I retreated to the wilderness, leaving my old life behind. My family moved away from civilization, and I learned to adapt to my new environment."
		]
	},
	"Pirate": {
		"_special": "book-PHB backgroundtraits-Sailor"
	},
	"Plaintiff": {
		"_special": "book-AI",
		"Trait": [
			"I can't believe I have a chance to join Acquisitions Incorporated! The fun I'm going to have!",
			"I've been wronged my entire life, and the world owes me.",
			"I have always tried to make the best of a bad situation.",
			"The law doesn't protect the honest and the hard working. I'm going to do whatever needs to be done to make things right.",
			"I'm always in the wrong place at the wrong time.",
			"My superiors are smarter and wiser than I am. I do what I'm told.",
			"Never pass up the opportunity to make an easy bit of coin. That's my motto.",
			"I'm beginning to feel like the gods are not on my side."
		],
		"Ideal": [
			"Justice. Those who break the law need to answer for their crimes. (Lawful)",
			"Freedom. People must have the freedom to do what they want and pursue their dreams. (Chaotic)",
			"Greed. Everyone I see is getting theirs, so I'm surely going to get mine. (Evil)",
			"Chaos. You're out of order! And you're out of order! This whole realm is out of order! (Chaotic)",
			"Humility. I'm just a small part of a larger whole. So is everyone else. (Neutral)",
			"Responsibility. We all have our roles to play. I'll hold up my end of the bargain. (Any)"
		],
		"Bond": [
			"Others hurt in the same accident that hurt me are my new family. I'll make sure they're taken care of.",
			"The rulers of this place were kind to me, and they have my lifelong devotion.",
			"My parents worry about me, but I'll make them proud.",
			"The only bond that matters is the one holding my money pouch to my belt.",
			"The other new hires at Acquisitions Incorporated are my allies. We have each other's backs.",
			"My legal counsel is my best friend. I owe all my forthcoming opportunities to their hard work."
		],
		"Flaw": [
			"The person who gains the most reward for the least effort wins.",
			"Three magic beans for just one cow? What a deal!",
			"I have only one vice, but it controls my life.",
			"Sleep is for the weak. We need to keep training more if we're going to be ready for the challenges ahead.",
			"Until my songs are sung in every tavern in this realm, I won't be satisfied.",
			"If people find me unpleasant, that's their problem."
		]
	},
	"Rakdos Cultist": {
		"_special": "book-GGtR",
		"Trait": [
			"I revel in mayhem, the more destructive the better.",
			"When violence breaks out, I lose myself in rage, and it's sometimes hard to stop.",
			"Everything is funny to me, and the most hilarious and bloodiest things leave me cackling with sadistic glee.",
			"I derive genuine pleasure from the pain of others.",
			"I enjoy testing other people's patience.",
			"I can't stand it when things are predictable, so I like to add a little chaos to every situation.",
			"I throw my weight around to make sure I get my way.",
			"I enjoy breaking delicate works of art. And fingers, which are sort of the same."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Hedonism. Death comes for everyone, so take as much pleasure as you can from every moment of life. (Neutral)",
			"Creativity. I strive to find more ways to express my art through pain-my own as well as others'. (Chaotic)",
			"Freedom. No one tells me what to do. (Chaotic)",
			"Equality. I want to see Ravnica remade, with no guilds and no hierarchies. (Chaotic)",
			"Spectacle. People are inspired by the greatness they see in art. (Any)"
		],
		"Bond": [
			"I have belonged to the same performance troupe for years, and these people mean everything to me.",
			"A blood witch told me I have a special destiny to fulfill, and I'm trying to figure out what it is.",
			"I'm secretly hoping that I can change the cult from the inside, using my influence to help rein in the wanton violence.",
			"I own something that Rakdos once touched (it's seared black at the spot), and I cherish it.",
			"I want to be better at my chosen fo rm of performance than any other member of my troupe.",
			"I am devoted to Rakdos and live to impress him."
		],
		"Flaw": [
			"My family is prominent in another guild. I enjoy my wild life, but I don't want to embarrass them.",
			"I couldn't hide my emotions and opinions even if I wanted to.",
			"I throw caution to the wind.",
			"I resent the rich and powerful.",
			"When I'm angry, I lash out in violence.",
			"There's no such thing as too much pleasure."
		],
		"Type of Performer": [
			"Spikewheel acrobat",
			"Lampooning satirist",
			"Fire juggler",
			"Marionette puppeteer",
			"Pain artist",
			"Noise musician",
			"Nightmare clown",
			"Master of ceremonies"
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Rakdos",
			"_guild": [
				"I was part of a two-person act until my former partner moved to a different troupe.",
				"My sibling and I ran away from home and joined the Cult of Rakdos together. We're very close.",
				"A childhood friend of mine is an attendant in Rix Maadi, the Rakdos guildhall.",
				"My parents brought me into the guild and taught me my trade.",
				"There's a lesser demon in the cult who thinks he owes me a favor, and who am I to argue?",
				"The master of ceremonies in my troupe is well connected with other troupes.",
				"I had a romance with a pain artist in another troupe.",
				"Rakdos himself has witnessed me perform."
			],
			"_nonguild": [
				"I know an Azorius elocutor who has a very amusing dark side.",
				"A Boros captain really wants to \"redeem\" me.",
				"I think a member of my troupe is a Dimir agent.",
				"I once convinced a Golgari medusa to participate in a show. We've been on good terms ever since.",
				"I came from the Gruul and still have relatives there.",
				"An Izzet technician provides pyrotechnics for my performances.",
				"An Orzhov oligarch has taken an interest in my career, like a patron of the arts.",
				"_reroll",
				"A Selesnya healer attends my performances regularly.",
				"A Simic biomancer provides mutant monsters to add a taste of the bizarre to our shows."
			]
		}
	},
	"Revelry Pirate": {
		"_special": "book-EGtW backgroundtraits-Sailor"
	},
	"Rival Intern": {
		"_special": "book-AI",
		"Trait": [
			"My previous employer didn't respect me, and now I'll do whatever I can to gain respect.",
			"The job is important, but the relationships I forge with my coworkers are even more so.",
			"The job is everything to me. Who needs relaxation, hobbies, and a social life?",
			"I know I'm not the best and brightest, but if I put my best self forward, I can overcome anything.",
			"My former boss was an idiot. So was my boss before that. And before that. I'm sure those were all coincidences.",
			"This company is so much better than my previous one. It will always be the best until they stop paying me.",
			"I know this dagger belongs to the company, but I'm sure they won't miss it. Or this flask. Or this armor.",
			"It's only a matter of time before I'll be upper management. I just have to kiss up to my superiors and kick down those beneath me."
		],
		"Ideal": [
			"Advancement. Money and power can be gained more easily within an organization. I plan to gain as much as possible. (Evil)",
			"Structure. Life goes much more smoothly when you follow the rules and work within a system. (Lawful)",
			"Uncertainty. The more chaos that swirls around me, the more opportunities I can find to profit. (Chaotic)",
			"Justice. I can't stand people being treated unjustly. I do whatever it takes to stop injustice and those who flout the law. (Lawful)",
			"Pleasure. What's the use of working hard and making money if you can't enjoy the finer things in life? (Any)",
			"Power. Money is fine, but real power means never having to say you're sorry. (Evil)"
		],
		"Bond": [
			"I have a family member in need. I consider them in everything I do.",
			"My peers keep me grounded.",
			"My past mistakes cost someone else dearly. I have to rectify that.",
			"A childhood mentor put me on my current path. If I succeed, I want to repay that mentor in some way.",
			"I value an oath of loyalty I took to a group of friends over everything else in my life.",
			"Although I don't get along well with people, my pet means the world to me."
		],
		"Flaw": [
			"I know what's best. Trust me.",
			"Flaw? I have no flaws. I'm perfect.",
			"My loyalties are ... fluid.",
			"If anything goes wrong, it must be someone else's fault. Let me explain that in detail.",
			"There's right and there's wrong, and there's no gray area in between.",
			"Our superiors might not like what you're doing. I'm going to have to put that in my report."
		]
	},
	"Sage": {
		"_special": "book-PHB",
		"Trait": [
			"I use polysyllabic words that convey the impression of great erudition.",
			"I've read every book in the world's greatest libraries - or I like to boast that I have.",
			"I'm used to helping out those who aren't as smart as I am, and I patiently explain anything and everything to others.",
			"There's nothing I like more than a good mystery.",
			"I'm willing to listen to every side of an argument before I make my own judgment.",
			"I . . . speak . . . slowly . . . when talking . . . to idiots, . . . which . . . almost . . . everyone . . . is . . . compared . . . to me.",
			"I am horribly, horribly awkward in social situations.",
			"I'm convinced that people are always trying to steal my secrets."
		],
		"Ideal": [
			"Knowledge. The path to power and self-improvement is through knowledge. (Neutral)",
			"Beauty. What is beautiful points us beyond itself toward what is true. (Good)",
			"Logic. Emotions must not cloud our logical thinking. (Lawful)",
			"No Limits. Nothing should fetter the infinite possibility inherent in all existence. (Chaotic)",
			"Power. Knowledge is the path to power and domination. (Evil)",
			"Self-Improvement. The goal of a life of study is the betterment of oneself. (Any)"
		],
		"Bond": [
			"It is my duty to protect my students.",
			"I have an ancient text that holds terrible secrets that must not fall into the wrong hands.",
			"I work to preserve a library, university, scriptorium, or monastery.",
			"My life's work is a series of tomes related to a specific field of lore.",
			"I've been searching my whole life for the answer to a certain question.",
			"I sold my soul for knowledge. I hope to do great deeds and win it back."
		],
		"Flaw": [
			"I am easily distracted by the promise of information.",
			"Most people scream and run when they see a demon. I stop and take notes on its anatomy.",
			"Unlocking an ancient mystery is worth the price of a civilization.",
			"I overlook obvious solutions in favor of complicated ones.",
			"I speak without really thinking through my words, invariably insulting others.",
			"I can't keep a secret to save my life, or anyone else's."
		],
		"Specialty": [
			"Alchemist",
			"Professor",
			"Astronomer",
			"Researcher",
			"Discredited academic",
			"Wizard's apprentice",
			"Scribe",
			"Librarian"
		],
		"Became a sage because": [
			"I was naturally curious, so I packed up and went to a university to learn more about the world.",
			"My mentor's teachings opened my mind to new possibilities in that field of study",
			"I was always an avid reader, and I learned much about my favorite topic on my own.",
			"I discovered an old library and pored over the texts I found there. That experience awakened a hunger for more knowledge.",
			"I impressed a wizard who told me I was squandering my talents and should seek out an education to take advantage of my gifts.",
			"One of my parents or a relative gave me a basic education that whetted my appetite, and I left home to build on what I had learned."
		]
	},
	"Sailor": {
		"_special": "book-PHB",
		"Trait": [
			"My friends know they can rely on me, no matter what.",
			"I work hard so that I can play hard when the work is done.",
			"I enjoy sailing into new ports and making new friends over a flagon of ale.",
			"I stretch the truth for the sake of a good story.",
			"To me, a tavern brawl is a nice way to get to know a new city.",
			"I never pass up a friendly wager.",
			"My language is as foul as an otyugh nest.",
			"I like a job well done, especially if I can convince someone else to do it."
		],
		"Ideal": [
			"Respect. The thing that keeps a ship together is mutual respect between captain and crew. (Good)",
			"Fairness. We all do the work, so we all share in the rewards. (Lawful)",
			"Freedom. The sea is freedom- the freedom to go anywhere and do anything. (Chaotic)",
			"Mastery. I'm a predator, and the other ships on the sea are my prey. (Evil)",
			"People. I'm committed to my crewmates, not to ideals. (Neutral)",
			"Aspiration. Someday I'll own my own ship and chart my own destiny. (Any)"
		],
		"Bond": [
			"I'm loyal to my captain first, everything else second.",
			"The ship is most important- crewmates and captains come and go.",
			"I'll always remember my first ship.",
			"In a harbor town, I have a paramour whose eyes nearly stole me from the sea.",
			"I was cheated out of my fair share of the profits, and I want to get my due.",
			"Ruthless pirates murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine."
		],
		"Flaw": [
			"I follow orders, even if I think they're wrong.",
			"I'll say anything to avoid having to do extra work.",
			"Once someone questions my courage, I never back down no matter how dangerous the situation.",
			"Once I start drinking, it's hard for me to stop.",
			"I can't help but pocket loose coins and other trinkets I come across.",
			"My pride will probably lead to my destruction."
		],
		"Became a sailor because": [
			"I was pressganged by pirates and forced to serve on their ship until I finally escaped.",
			"I wanted to see the world, so I signed on as a deckhand for a merchant ship.",
			"One of my relatives was a sailor who took me to sea.",
			"I needed to escape my community quickly, so I stowed away on a ship. When the crew found me, I was forced to work for my passage.",
			"Reavers attacked my community, so I found refuge on a ship until I could seek vengeance.",
			"I had few prospects where I was living, so I left to find my fortune elsewhere."
		]
	},
	"Selesnya Initiate": {
		"_special": "book-GGtR",
		"Trait": [
			"I never raise my voice or lose my temper.",
			"I feel the pains and joys of everyone around me, friend or foe.",
			"I would rather make a friend than thwart an enemy.",
			"I'm always straining to peer into another reality that seems to be just beyond my senses.",
			"I'm uneasy if I can't see plants growing or feel soil beneath my feet.",
			"Seeing illness or injury in any creature saddens me.",
			"I have much to be proud of, but I am still just one strand in the grand, interwoven tapestry of life.",
			"Nature offers rich and abundant metaphors for understanding the complexities of life."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Harmony. Nothing is more beautiful than voices and actions aligned in common purpose. (Good)",
			"Order. Like a well-pruned tree, society thrives when everything is kept in good order. (Lawful)",
			"Life. Preserving life and nature is always a worthwhile endeavor. (Good)",
			"Humility. Ambition and pride are the roots of strife. (Good)",
			"Evangelism. When all have joined the Selesnya Conclave, Ravnica will finally know peace. (Any)"
		],
		"Bond": [
			"I would give my life in the defense of the small enclave where I first encountered Mat'Selesnya.",
			"I love beasts and plants of all kinds, and am loath to harm them.",
			"A healer nursed me to recovery from a mortal illness.",
			"I'll sing the invitation of Mat'Selesnya with my dying breath.",
			"I cherish a leaf from Vitu-Ghazi that changes color with the seasons, even though it is no longer attached to the tree.",
			"Every member of the conclave is my kin, and I would fight for any one of them."
		],
		"Flaw": [
			"I'm terrified of getting into a fight where my side is outnumbered.",
			"I assume that people mean well until they prove otherwise.",
			"I enjoy comfort and quiet, and prefer to avoid extra effort.",
			"I have a fierce temper that doesn't reflect the inner calm I seek.",
			"I'm convinced that everyone else in the conclave has a deeper connection to the Worldsoul than I do.",
			"I'm trying to atone for the life of crime I led before I joined the Selesnya, but I find it hard to give up my bad habits."
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Selesnya",
			"_guild": [
				"A wise centaur trainer believed in me even though I was a terrible student.",
				"A good friend has risen to become a Ledev guardian.",
				"I left my former guild and joined the Selesnya along with a close friend.",
				"The dryad at the head of my enclave has taken an interest in my activities. ",
				"A sibling is an instructor at the guild's training grounds.",
				"One of my parents is a votary, tasked with protecting the temple gardens at the Vitu-Ghazi guildhall.",
				"I had a romance with a well-known Selesnya healer.",
				"Trostani, the head of the guild and the voice of Mat'Selesnya, once welcomed me into her presence."
			],
			"_nonguild": [
				"I left the Azorius, and a former colleague still resents me for that act.",
				"A good friend, eager for action, left the Selesnya and joined the Boros.",
				"I had a relationship with a guild mate who turned out to be a Dimir agent.",
				"I know a disgruntled Golgari assassin who is ripe for recruitment.",
				"I'm friendly with a Gruul centaur who almost joined us a few years back.",
				"I once had a heated public argument with an Izzet chemister, and neither of us is allowed back into that restaurant.",
				"I paid off my debt to the Orzhov Syndicate, but my good friend was not so lucky and remains indebted to that guild.",
				"At a time of terrible grief in my life, a Rakdos performer made a mockery of my pain, leaving me with mixed feelings of sadness and humor.",
				"_reroll",
				"I have a sibling in the Simic Combine, and we argue every time we see each other."
			]
		}
	},
	"Shipwright": {
		"_special": "book-Mod",
		"Trait": [
			"I love talking and being heard more than I like to listen.",
			"I'm extremely fond of puzzles.",
			"I thrive under pressure.",
			"I love sketching and designing objects, especially boats.",
			"I'm not afraid of hard work-in fact, I prefer it.",
			"A pipe, an ale, and the smell of the sea: paradise.",
			"I have an endless supply of cautionary tales related to the sea.",
			"I don't mind getting my hands dirty."
		],
		"Ideal": [
			"Crew. If everyone on deck pitches in, we'll never sink. (Good)",
			"Careful Lines. A ship must be balanced according to the laws of the universe. (Lawful)",
			"Invention. Make what you need out of whatever is at hand. (Chaotic)",
			"Perfection. To measure a being and find it lacking is the greatest disappointment. (Evil)",
			"Reflection. Muddied water always clears in time. (Any)",
			"Hope. The horizon at sea holds the greatest promise. (Any)"
		],
		"Bond": [
			"I must visit all the oceans of the world and behold the ships that sail there.",
			"Much of the treasure I claim will be used to enrich my community.",
			"I must find a kind of wood rumored to possess magical qualities.",
			"I repair broken things to redeem what's broken in myself.",
			"I will craft a boat capable of sailing through the most dangerous of storms.",
			"A kraken destroyed my masterpiece; its teeth shall adorn my hearth."
		],
		"Flaw": [
			"I don't know when to throw something away. You never know when it might be useful again.",
			"I get frustrated to the point of distraction by shoddy craftsmanship.",
			"Though I am an excellent crafter, my work tends to look as though it belongs on a ship.",
			"I am so obsessed with sketching my ideas for elaborate inventions that I sometimes forget little thing like eating and sleeping.",
			"I'm judgmental of those who are not skilled with tools of some kind.",
			"I sometimes take things that don't belong to me, especially if they are very well made."
		],
		"Sea's Influence": [
			"Grand Designs. You are working on plans and schematics for a new, very fast ship. You must examine as many different kinds of vessels as possible to help ensure the success of your design.",
			"Solid and Sound. You patched up a war galley and prevented it from sinking. The local navy regards you as a friend.",
			"Favored. You insisted on thicker planking for a merchant vessel's hull, which saved it from sinking when it smashed against a reef. You have a standing invitation to visit the merchant's distant mansion.",
			"Master of Armaments. You specialized in designing and mounting defenses for the navy. You easily recognize and determine the quality of such items.",
			"Low Places. You have contacts in the smuggling outfits along the coast; you occasionally repair the criminals' ships in exchange for coin and favors.",
			"Mysteries of the Deep. You experienced an encounter with a possibly divine being while sailing alone. Work with your DM to determine the secret about the deep waters of the sea that this entity revealed to you."
		]
	},
	"Simic Scientist": {
		"_special": "book-GGtR",
		"Trait": [
			"I can't wait to see what I become next!",
			"I am convinced that everything inclines toward constant improvement.",
			"I'm eager to explain every detail of my most intricate experiments and theories to anyone who shows the least bit of interest.",
			"I assume that everyone needs even the most basic concepts explained to them.",
			"I describe everything that happens as if it were going into my research notes (and it often is).",
			"I am insatiably curious about the seemingly infinite forms and adaptations of life.",
			"I can't resist prying into anything forbidden, since it must be terribly interesting.",
			"I employ a highly technical vocabulary to avoid imprecision and ambiguity in my communication."
		],
		"Ideal": [
			"Guild. My guild is all that really matters. (Any)",
			"Change. All life is meant to progress toward perfection, and our work is to hurry it along-no matter what must be upended along the way. (Chaotic)",
			"Knowledge. Understanding the world is more important than what you do with your knowledge. (Neutral)",
			"Greater Good. I want to reshape the world into higher forms of life so that all can enjoy evolution. (Good)",
			"Logic. It's foolish to let emotions and principles interfere with the conclusions of logic. (Lawful)",
			"Superiority. My vast intellect and strength are directed toward increasing my sway over others. (Evil)"
		],
		"Bond": [
			"I helped create a krasis that I love like a pet and would carry with me everywhere ... except it's the size of a building, and it might eat me.",
			"In my laboratory, I discovered something that I think could eliminate half the life on Ravnica.",
			"The other researchers in my clade are my family-a big, eccentric family including members and parts of many species.",
			"The laboratory where I did my research contains everything that is precious to me.",
			"I will get revenge on the shortsighted fool who killed my precious krasis creation.",
			"Everything I do is an attempt to impress someone I love."
		],
		"Flaw": [
			"I have a rather embarrassing mutation that I do everything I can to keep hidden.",
			"I'm more interested in taking notes on monstrous anatomy than in lighting monsters.",
			"Every social situation I'm in seems to lead to my asking rude personal questions.",
			"I'm supremely confident in my ability to adapt to any situation and handle any danger.",
			"I'll take any risk to earn recognition for my scientific brilliance.",
			"I have a tendency to take shortcuts in my research and any other tasks I have to complete."
		],
		"Research Options": [
			"Hull Clade, focused on protection and durability",
			"Fin Clade, focused on movement",
			"Gyre Clade, focused on cyclical patterns and metamagic",
			"Guardian Project, focused on creating guard monsters and super soldiers",
			"Crypsis Project, focused on intelligence and counterintelligence",
			"Independent research in a new area"
		],
		"Contacts": {
			"_special": "ravnicacontacts",
			"_name": "Simic",
			"_guild": [
				"My research builds on my parents' work and takes it in interesting new directions.",
				"If a serious problem confounds me, I can count on my mentor to provide clarity of thought.",
				"A former laboratory colleague went on to work on the Guardian Project.",
				"A former colleague has ventured into fields of research that are possibly immoral and almost certainly illegal.",
				"A former lover is now the supervisor of a prominent clade.",
				"My sibling has become an almost unrecognizable mutant.",
				"An old friend has retreated into a secluded life as an ascetic deepsage, devoted to contemplating philosophical principles.",
				"My former clade supervisor is now engaged in field research studying some of the largest beasts and monsters on Ravnica."
			],
			"_nonguild": [
				"My older sibling is upset that I didn't follow them into the Azorius.",
				"A Boros sergeant is always asking questions about my work, but I suspect they're genuinely curious.",
				"A friend in my clade thinks I don't know they're a Dimir agent.",
				"I helped a Golgari spore druid with the fertilization and growth of their fungus field.",
				"I can't fathom what could have made my childhood friend run off and join the Gruul.",
				"I love comparing notes with my friend in the Izzet, though our fields of research are very different.",
				"I borrowed a lot of money from an Orzhov syndic to help finance my research.",
				"A Rakdos ringmaster has taken an interest in my research which, come to think of it, might make a nice sideshow act.",
				"I left the Selesnya-and a lover-behind when I joined the Simic.",
				"_reroll"
			]
		}
	},
	"Smuggler": {
		"_special": "book-Mod",
		"Trait": [
			"I love being on the water but hate fishing.",
			"I think of everything in terms of monetary value.",
			"I never stop smiling.",
			"Nothing rattles me; I have a lie for every occasion.",
			"I love gold but won't cheat a friend.",
			"I enjoy doing things others believe to be impossible.",
			"I become wistful when I see the sun rise over the ocean.",
			"I am no common criminal; I am a mastermind."
		],
		"Ideal": [
			"Wealth. Heaps of coins in a secure vault is all I dream of. (Any)",
			"Smuggler's Code. I uphold the unwritten rules of the smugglers, who do not cheat one another or directly harm innocents. (Lawful)",
			"All for a Coin. I'll do nearly anything if it means I turn a profit. (Evil)",
			"Peace and Prosperity. I smuggle only to achieve a greater goal that benefits my community. (Good)",
			"People. For all my many lies, I place a high value on friendship. (Any)",
			"Daring. I am most happy when risking everything. (Any)"
		],
		"Bond": [
			"My vessel was stolen from me, and I burn with the desire to recover it.",
			"I intend to become the leader of the network of smugglers that I belong to.",
			"I owe a debt that cannot be repaid in gold.",
			"After one last job, I will retire from the business.",
			"I was tricked by a fellow smuggler who stole something precious from me. I will find that thief.",
			"I give most of my profits to a charitable cause, and I don't like to brag about it."
		],
		"Flaw": [
			"Lying is reflexive, and I sometimes engage in it without realizing.",
			"I tend to assess my relationships in terms of profit and loss.",
			"I believe everyone has a price and am cynical toward those who present themselves as virtuous.",
			"I struggle to trust the words of others.",
			"Few people know the real me.",
			"Though I act charming, I feel nothing for others and don't know what friendship is."
		],
		"Accomplishment": [
			"Spirit of the Whale. You smuggled stolen dwarven spirits in the body of a dead whale being pulled behind a fishing boat. When you delivered the goods, the corpse suddenly exploded, sending whale meat and whiskey bottles for half a mile.",
			"Cart and Sword. You drove a cart filled with stolen art through the middle of a battlefield while singing sea shanties to confuse the combatants.",
			"The Recruit. You enlisted in another nation's navy for the purpose of smuggling stolen jewels to a distant port. You attained a minor rank before disappearing from the navy and making your way here.",
			"River of Shadows. Your riverboat accidentally slipped through the veil into the Shadowfell for several hours. While you were there, you sold some stolen dragonborn artifacts before returning to this plane and paddling home.",
			"Gold-Hearted. You agreed to transport a family escaping a war. The baby began to cry at a checkpoint, and you gave the guards all your gold to let you pass. The family never found out about this gesture.",
			"Playing Both Sides. You once smuggled crates of crossbow bolts and bundles of arrows, each destined for an opposing side in a regional war, at the same time. The buyers arrived within moments of each other but did not discover your trickery."
		]
	},
	"Soldier": {
		"_special": "book-PHB",
		"Trait": [
			"I'm always polite and respectful.",
			"I'm haunted by memories of war. I can't get the images of violence out of my mind.",
			"I've lost too many friends, and I'm slow to make new ones.",
			"I'm full of inspiring and cautionary tales from my military experience relevant to almost every combat situation.",
			"I can stare down a hell hound without flinching.",
			"I enjoy being strong and like breaking things.",
			"I have a crude sense of humor.",
			"I face problems head-on. A simple, direct solution is the best path to success."
		],
		"Ideal": [
			"Greater Good. Our lot is to lay down our lives in defense of others. (Good)",
			"Responsibility. I do what I must and obey just authority. (Lawful)",
			"Independence. When people follow orders blindly, they embrace a kind of tyranny. (Chaotic)",
			"Might. In life as in war, the stronger force wins. (Evil)",
			"Live and Let Live. Ideals aren't worth killing over or going to war for. (Neutral)",
			"Nation. My city, nation, or people are all that matter. (Any)"
		],
		"Bond": [
			"I would still lay down my life for the people I served with.",
			"Someone saved my life on the battlefield. To this day, I will never leave a friend behind.",
			"My honor is my life.",
			"I'll never forget the crushing defeat my company suffered or the enemies who dealt it.",
			"Those who fight beside me are those worth dying for.",
			"I fight for those who cannot fight for themselves."
		],
		"Flaw": [
			"The monstrous enemy we faced in battle still leaves me quivering with fear.",
			"I have little respect for anyone who is not a proven warrior.",
			"I made a terrible mistake in battle cost many lives- and I would do anything to keep that mistake secret.",
			"My hatred of my enemies is blind and unreasoning.",
			"I obey the law, even if the law causes misery.",
			"I'd rather eat my armor than admit when I'm wrong."
		],
		"Specialty": [
			"Officer",
			"Quartermaster",
			"Scout",
			"Standard bearer",
			"Infantry",
			"Support staff (cook, blacksmith, or the like)",
			"Cavalry",
			"Healer"
		],
		"Became a soldier because": [
			"I joined the militia to help protect my community from monsters.",
			"A relative of mine was a soldier, and I wanted to carry on the family tradition.",
			"The local lord forced me to enlist in the army.",
			"War ravaged my homeland while I was growing up. Fighting was the only life I ever knew.",
			"I wanted fame and fortune, so I joined a mercenary company, selling my sword to the highest bidder.",
			"Invaders attacked my homeland. It was my duty to take up arms in defense of my people."
		]
	},
	"Spy": {
		"_special": "book-PHB backgroundtraits-Criminal"
	},
	"Tribe Member": {
		"_special": "book-SCAG backgroundtraits-Outlander"
	},
	"Urban Bounty Hunter": {
		"_special": "book-SCAG backgroundtraits-Criminal"
	},
	"Urchin": {
		"_special": "book-PHB",
		"Trait": [
			"I hide scraps of food and trinkets away in my pockets.",
			"I ask a lot of questions.",
			"I like to squeeze into small places where no one else can get to me.",
			"I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms.",
			"I eat like a pig and have bad manners.",
			"I think anyone who's nice to me is hiding evil intent.",
			"I don't like to bathe.",
			"I bluntly say what other people are hinting at or hiding."
		],
		"Ideal": [
			"Respect. All people, rich or poor, deserve respect. (Good)",
			"Community. We have to take care of each other, because no one else is going to do it. (Lawful)",
			"Change. The low are lifted up, and the high and mighty are brought down. Change is the nature of things. (Chaotic)",
			"Retribution. The rich need to be shown what life and death are like in the gutters. (Evil)",
			"People. I help the people who help me- that's what keeps us alive. (Neutral)",
			"Aspiration. I'm going to prove that I'm worthy of a better life. (Any)"
		],
		"Bond": [
			"My town or city is my home, and I'll fight to defend it.",
			"I sponsor an orphanage to keep others from enduring what I was forced to endure.",
			"I owe my survival to another urchin who taught me tolive on the streets.",
			"I owe a debt I can never repay to the person who took pity on me.",
			"I escaped my life of poverty by robbing an important person, and I'm wanted for it.",
			"No one else should have to endure the hardships I've been through."
		],
		"Flaw": [
			"If I'm outnumbered, I will run away from a fight.",
			"Gold seems like a lot of money to me, and I'll do just about anything for more of it.",
			"I will never fully trust anyone other than myself.",
			"I'd rather kill someone in their sleep then fight fair.",
			"It's not stealing if I need it more than someone else.",
			"People who can't take care of themselves get what they deserve."
		],
		"Became an urchin because": [
			"Wanderlust caused me to leave my family to see the world. I look after myself.",
			"I ran away from a bad situation at home and made my own way in the world.",
			"Monsters wiped out my village, and I was the sole survivor. I had to find a way to survive.",
			"A notorious thief looked after me and other orphans, and we spied and stole to earn our keep.",
			"One day I woke up on the streets, alone and hungry, with no memory of my early childhood.",
			"My parents died, leaving no one to look after me. I raised myself."
		]
	},
	"Volstrucker Agent": {
		"_special": "book-EGtW",
		"Trait": [
			"I prefer to keep my thoughts to myself.",
			"I indulge vice in excess to quiet my conscience.",
			"I've left emotion behind me. I'm now perfectly placid.",
			"Some event from the past keeps worming its way into my mind, making me restless.",
			"I always keep my word-except when I'm commanded to break it.",
			"I laugh off insults and never take them pesonally. "
		],
		"Ideal": [
			"Order. The will of the crown is absolute. (Law)",
			"True Loyalty. The Cerberus Assembly is greater than any power, even the crown. (Law)",
			"Death. The penalty for disloyalty is death. (Evil)",
			"Determination. I cannot fail. Not ever. (Neutral)",
			"Fear. People should not respect power. They should fear it. (Evil)",
			"Escape. The Volstrucker are pure evil! I can't atone for what I've done for them, but I can escape with my life. (Any) "
		],
		"Bond": [
			"The job is all that matters. I will see it through.",
			"My orders are important, but my comrades are worth more than anything. I would die for them.",
			"Everything I've done, I've done to protect someone close to me.",
			"If the empire falls, all of civilization falls with it. I will hold back chaos and barbarism at any cost."
		],
		"Flaws": [
			"I drink to dull the pain in the back of my head.",
			"I go a bit mad when I see blood.",
			"I can hear the voices of everyone I've killed. I see their faces. I can't be free of these ghosts.",
			"Fear is a powerful motivator. I will do whatever it takes to prevent those who know what I am from seeing me fail, and from those I care about from knowing what I am."
		],
		"Tragedy": [
			"Familicide. Through deceit or manipulation, the Volstrucker convinced you to slaughter your own family.",
			"Amnesia. You were forced to study magic so potent that it strained your mind beyond mortal limits, stealing away the memories of your past.",
			"Capture. You were captured and tortured by agents of the Kryn Dynasty, and barely escaped.",
			"Starvation. A terrible blight afflicted your rural village, and many of your friends and family members starved to death. You survived, but only barely.",
			"Disfigurement. One of your arcane experiments went wrong and scarred or dismembered you so gravely that others now shun you. Only the Volstrucker showed you kindness after that day.",
			"Vicissitude. You were once the scion of a wealthy family who lost their entire fortune in the blink of an eye. "
		]
	},
	"Waterdhavian Noble": {
		"_special": "book-SCAG backgroundtraits-Noble"
	}
}
File.open("bio.yml", "w") { |file| file.write(pets.to_yaml) }