Player.delete_all
Team.delete_all
Match.delete_all
Season.delete_all

puts "Deleted all entries."
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



j_chan = Team.create(name: "J-Chan All-Stars")


hugh_kramer = Player.create(name: "Hugh Kramer", bio: "Hugh Kramer is just a dude. A dude who loves magical gatherings. He does not claim to know the secrets of the universe though he does claim to have been the beat-boxing champion of his high school. A lover of all things limited and most things Lotus Cobra, when it comes to drafting, Hugh Kramer, like the Wu-Tang Clan and Kadar's farts, ain't nothing to F with.")



jon_sieber = Player.create(name: "Jon Sieber", bio: "The only notable thing Jon has ever done in a game of Magic was assembling a T4 Kiki/Pestermite combo during a Modern Masters Team Draft.")



alex_owen = Player.create(name: "Alex Owen", bio: "Alex Owen is a southern boy with eyes that were made to get lost in. His hobbies include Magic: The Gathering, working out, and working it. He never really started playing Magic and he probably will never really stop. Alex is known within the magic community for his catch phrases which he will seemingly exclaim at random during public matches. Phrases such as \"ay papi! Si, mas rapido!\" and of course the classic Michael Jackson \"Shi-Shi-mongggga!\" are beloved by all. BELOVED BY ALL. A modest accounting professional by day and a shark of trades by night, Alex remains a mystery, yet to be unraveled, and like Pandora's box, you may not want to know the truth but can't stop yourself from finding out.")

j_chan.players << hugh_kramer 
j_chan.players << jon_sieber 
j_chan.players << alex_owen

scryducks = Team.create(name: "ScryDucks")


matt_jones = Player.create(name: "Matt Jones", bio: "Matt Jones is a sometimes PWP grinder, all the time spell slinger, and one passionate dude. He started playing at the end of Revised and quit at Exodus. Upon sobriety and running out of self-help groups to join, Jones picked Magic back up at New Phyrexia, found his favorite non-Necropotence card, Phyrexian Obliterator, and earned himself a nickname. He loves Constructed and tolerates Limited. With Hugh Kramer, Jones founded Team Draft League in 2014 as a way to curate draft groups, get better at Limited Magic in a healthy, and deepen our relationship with the local Magic community.")



kadar_brock = Player.create(name: "Kadar Brock", bio: "Kadar Brock is a Johnny come (Spike) lately. First exposed to Magic in high school, his earliest recollections are frustrations with flyers. After a casual reintroduction via Matt Jones during Odyssey, kitchen table Magic was his only spell slinging until M12. Then a growing love of Limited and EDH burgeoned into all Constructed formats, recently slamming Meat Hooks in Legacy. Some career highlights include casting an opponents Gideon off Nightveil Specter/Lotally Lost in GTC Limited, and elf waving Jackie Lee at GP Pittsburg. Hunter R Slaton gave him the nickname \"History's Greatest Monster\" after smashing him with a turn four Gruul Rage Beast in draft. Lately though, he's been focusing more on winning fast than winning epically. But, if you can do both...Do it!")



nick_forker = Player.create(name: "Nick Forker", bio: "Forker started playing magic during Revised and quit shortly after Mirage. He had an adolescence, and then returned to the game at the end or Return to Ravinca after having fixed all problems adolescence had left behind for his twenty-something self to figure out. Now freshly in his thirties, he enjoys improving his play. He sees magic as a metaphor for life in general, in that all you control is preparation, attitude, and decision making...the rest is not up to you, so don't let the variance put you on tilt and see the lesson in every mistake.")

scryducks.players << matt_jones 
scryducks.players << kadar_brock 
scryducks.players << nick_forker

cackasaurus = Team.create(name: "Cackasaurus")


dan_black = Player.create(name: "Dan Black", bio: "I'm just a guy who is interested in being successful with my mana, draws, and planes walker points. Recently things have been taking off for me, I've got a good draft run at a well-known very profitable location, my cards have started targeting exponentially, and I'm working on a web startup of my own to help people's snap keeps. The only thing I've neglected is my sanctioned play, but there's only so much time! I'm silly and insightful, but I'm also nerdy and down-to-earth. I'm very patient but I know when to cut through things and just attack. I keep it together under pressure because I usually see things coming before they happen.")

dan_garfield = Player.create(name: "Dan Garfield", bio: "\"\"")

austin_k = Player.create(name: "Austin K", bio: "...")

cackasaurus.players << dan_black 
cackasaurus.players << dan_garfield 
cackasaurus.players << austin_k

jung_gunz = Team.create(name: "Jung Gunz")


zach_barash = Player.create(name: "Zach Barash", bio: "Zach discovered Magic in the summer of '94 and was immediately hooked when he received a booster of Revised for his birthday. He left the game briefly during Urza's block, then missed everything between Prophecy and Magic 2011 (though he did boot up Shandalar every year). Zach is an avid Limited player and proud cube owner. He performs musical improv every week with his team, Petting Zoo, if you're into that sort of stuff (which is awesome!).")



nick_heppding = Player.create(name: "Nick Heppding", bio: "Like seemingly every other team drafter, Nick played Magic when he was younger before giving it up until he had a bit of jingle-jangle in his pocket. Now he targets himself with Raven's Crime, Dredges for 5, and does whatever it takes to cast fatties from his graveyard. A recent assassination of one Deathrite Shaman in his favorite format leaves him with high hopes that Unburial Rites targeting Borborygmos the Enraged will once again be a game winning play. Until then he will first pick Baleful Eidolon over everything.")

richard_tan = Player.create(name: "Richard Tan", bio: "Have you seen Johnny? I miss that guy.")

jung_gunz.players << zach_barash 
jung_gunz.players << nick_heppding 
jung_gunz.players << richard_tan

loam = Team.create(name: "Life from the LOaM")


monique_garraud = Player.create(name: "Monique Garraud", bio: "Monique recently stumbled upon Magic: The Gathering while attending board game night at her local game store. This Brooklyn-based biotech research analyst knew she'd be hooked once she saw the excitement of the players and complexity of their games. Innistrad was her first set and after about a month she had already played in her first Pro Tour Qualifier. She currently plays in about four competitive REL events monthly and thoroughly enjoys traveling to Tri-State PTQs and as well as Grand Prix all over the country. Be sure to say hello when you see her at your next tournament!")



orlando_santiago = Player.create(name: "Orlando Santiago", bio: "Orlando, or \"Lando\" (if you prefer the crude vernacular) is a man who enjoys the finer things in life. A good evening to Orlando is an evening spent in the company of a '62 Merlot, a copy of Hemingway, and finely tuned Grixis deck with a 60-40 match-up or better vs. the known meta. Orlando is somewhat of a walking contradiction; a man who professes to \"love magic\" yet in the same breath, recoils at the mention of David Copperfield. Rumors of Orlando once winning a game on a mull to 2 echo throughout Twenty-Sided Store like ghostly wind across the frozen arctic tundra. Orlando is not one to mince words and has been known to state on more than one occasion that he means to win Season One of Team Draft League. Whether his team is indeed victorious or suffers the utter shame of defeat, of one thing we can certainly be sure: someone is about to get scraped.")

anthony_lebron = Player.create(name: "Anthony Lebron", bio: "While most people dream about drafting Lebron, Lebron spends most of his time drafting Magic.")

loam.players << monique_garraud 
loam.players << orlando_santiago 
loam.players << anthony_lebron

clockwerk_beats = Team.create(name: "Clockwerk Beats")

hunter_slaton = Player.create(name: "Hunter \"Rolex\" Slaton", bio: "Hunter Slaton first picked up Magic when he was a kid, around the time of Revised and Fallen Empires, alongside his best friend at the time. Both of our sets of parents made it a condition of our playing that we throw away all the black cards immediately upon opening them, because of Jesus. Hunter didn't play again until Dissension, when he found an awesome playgroup through Craigslist, which used to play at a deli near the Chrysler Building. Hunter pretty much exclusively plays Limited, aka God's Format. He has a four-digit DCI number, and lives five minutes' walk from the 20 Sided Store in Williamsburg, Brooklyn.")

david_mccoy = Player.create(name: "David \"Bones\" McCoy", bio: "David is a robot with a heart of G/W. Spikey but unwilling to grind, he has found a happy medium by drafting with friends. Like most \"people,\" he played for a few months as a kid, took a decade and a half off to \"grow up,\" and only recently came back to the game.")

brendan_mcnamara = Player.create(name: "Brendan \"B-Mac\" McNamara", bio: "Brendan attended the Grinder Academy of Athreos where he earned three Distinguished Scholar commendations. Rumors abound, however, that he is actually a Dimir agent, infiltrating the black-white school to learn how to survive while milling his opponents to death. His friends know him as the Irish Lady Gaga, which is kind of weird. He must have some strange friends.")

clockwerk_beats.players << hunter_slaton 
clockwerk_beats.players << david_mccoy 
clockwerk_beats.players << brendan_mcnamara

team_handsome = Team.create(name: "Team Handsome")


dom_neitz = Player.create(name: "Dom Neitz", bio: "It's impossible to know which is greater: the number of people currently lost in a daydream about Dom or about his cat.")

sean_morse = Player.create(name: "Sean Morse", bio: "Sean Morse once had dreams that trapping opponents in a 'Geddon-Tradewind Rider lock would win every game; sadly, Oath of Druids then Urza's Saga was printed and Sean quit, too intimidated by all the manas being made. Lured back in like many players by the ever-improving design of the game and the excess cash in his pocket, Sean returned circa Innistrand (U/R self-mill in draft never gets enough love...). While not playing - which isn't often - he slings sentences together and molds the young minds of tomorrow. Our future isn't bright.")

derek_gallen = Player.create(name: "Derek Gallen", bio: "From the womb Derek knew something was slightly afoot, and it was Autumn in 1994 watching his brother's basketball game when a friend revealed two starter decks of Revised. There, under the dim elementary school light, he cast his first Serra Angel. Barron's Comics and Cards was in Milford, CT. His first visit he met Melissa Benson and spent one dollar on a single copy of Channel. Many Years and many tournaments later, his mother gifted him $200 to purchase his first Black Lotus, which he carried with him in his front pocket until he graduated high school. Once, he qualified for the Pro Tour, but went 0-2 and decided to drop on day one. It was during his tenure at Boston University he resolved to selling his collection to help finance his education. And, over the next ten years, Derek let go of Magic: The Gathering. Last summer in 2013 on a sunny afternoon he decided to spend a days curiosity catching up with the game. Not a few days went by when he emerged, bright and disheveled, ready again to exercise his devotion at Twenty Sided Store.")

team_handsome.players << dom_neitz 
team_handsome.players << sean_morse 
team_handsome.players << derek_gallen

abeysitters = Team.create(name: "Abeysitters")

dylan_heister = Player.create(name: "Dylan Heister", bio: "Dylan Hiester spends his time surrounded by a need, an urge, an unending desire to shuffle and snap cards rapidly and annoyingly between his fingers. This desire led him to magic the gathering at the tender age of... whatever age first graders are. He remember the joy of casting nightmare and verdant force as a wee lad. He remembers in standard casting a turn two Grim Monolith into turn three Sneak Attack, activate - Crater Hellion, activate - Serra Avatar swing for lethal. He loves resolving things early (if you know what I mean) like turn two planeswalkers or Sun Titan off of Black Lotus, return Lotus then cast Lilliana, of the Veil. He left competitive play in high school and returned for the Alara block. Turn two Woolly Thoctar. Amirite?!?! He has enjoyed watching Twenty sided store and its inhabitants grow as magic players, a store and other kinds of things. He is proud to be a member of team The Abey Sitters.")


abe_lusk = Player.create(name: "Abe \"Thrag\" Lusk", bio: "Abe Lusk is a wildly corruptible seventeen year old living in Williamsburg. In a desperate attempt to escape the frenzied crowd of adolescent girls chasing him around every corner of Stuyvesant High School, he looked for a more mature friend group at the Twenty Sided Store. Abe quickly discovered that breast size aside his new friends are no more mature than his old ones. Either despite this or because of it, he now spends most of his free time playing magic at the Twenty Sided Store. Drafting is his favorite format, but playing magic of any kind is always preferable to not playing at all. In his opinion there is nothing more satisfying than turning dudes sideways and soundly thrashing his opponent, hopefully with Alex Owen shrieking \"Ay Papi!\" in the background.")

jonathan_pena = Player.create(name: "Jonathan Pena", bio: "[Bio goes here.]")

abeysitters.players << dylan_heister 
abeysitters.players << abe_lusk 
abeysitters.players << jonathan_pena

season1 = Season.create(number: 1, challonge_name: "iy7fpc0t", num_weeks: 7, num_teams: 8)
season1.save

season1.teams << j_chan
season1.teams << scryducks
season1.teams << cackasaurus
season1.teams << clockwerk_beats
season1.teams << jung_gunz
season1.teams << team_handsome
season1.teams << abeysitters
season1.teams << loam
season1.save


j_chan.set_challonge_team_number
j_chan.save
scryducks.set_challonge_team_number
scryducks.save
cackasaurus.set_challonge_team_number
cackasaurus.save
jung_gunz.set_challonge_team_number
jung_gunz.save
loam.set_challonge_team_number
loam.save
clockwerk_beats.set_challonge_team_number
clockwerk_beats.save
team_handsome.set_challonge_team_number
team_handsome.save
abeysitters.set_challonge_team_number
abeysitters.save

season1.create_matches

# manually edit season 1

# week 1
match5 = Match.find_by(challonge_match_number: 19543973)
match5.challonge_week = 1
match5.save!
match8 = Match.find_by(challonge_match_number: 19543955)
match8.challonge_week = 1
match8.save!
match24 = Match.find_by(challonge_match_number: 19543962)
match24.challonge_week = 1
match24.save!
match27 = Match.find_by(challonge_match_number: 19543964)
match27.challonge_week = 1
match27.save!

# week 2
match7 = Match.find_by(challonge_match_number: 19543961)
match7.challonge_week = 2
match7.save!
match10 = Match.find_by(challonge_match_number: 19543971)
match10.challonge_week = 2
match10.save!
match16 = Match.find_by(challonge_match_number: 19543960)
match16.challonge_week = 2
match16.save!
match23 = Match.find_by(challonge_match_number: 19543969)
match23.challonge_week = 2
match23.save!

# week 3
match2 = Match.find_by(challonge_match_number: 19543956)
match2.challonge_week = 3
match2.save!
match11 = Match.find_by(challonge_match_number: 19543975)
match11.challonge_week = 3
match11.save!
match17 = Match.find_by(challonge_match_number: 19543977)
match17.challonge_week = 3
match17.save!
match22 = Match.find_by(challonge_match_number: 19543968)
match22.challonge_week = 3
match22.save!

# week 4
match4 = Match.find_by(challonge_match_number: 19543970)
match4.challonge_week = 4
match4.save!
match12 = Match.find_by(challonge_match_number: 19543959)
match12.challonge_week = 4
match12.save!
match21 = Match.find_by(challonge_match_number: 19543957)
match21.challonge_week = 4
match21.save!
match26 = Match.find_by(challonge_match_number: 19543958)
match26.challonge_week = 4
match26.save!


# week 5
match1 = Match.find_by(challonge_match_number: 19543976)
match1.challonge_week = 5
match1.save!
match9 = Match.find_by(challonge_match_number: 19543963)
match9.challonge_week = 5
match9.save!
match14 = Match.find_by(challonge_match_number: 19543974)
match14.challonge_week = 5
match14.save!
match25 = Match.find_by(challonge_match_number: 19543972)
match25.challonge_week = 5
match25.save!

# week 6
match3 = Match.find_by(challonge_match_number: 19543966)
match3.challonge_week = 6
match3.save!
match13 = Match.find_by(challonge_match_number: 19543967)
match13.challonge_week = 6
match13.save!
match18 = Match.find_by(challonge_match_number: 19543965)
match18.challonge_week = 6
match18.save!
match19 = Match.find_by(challonge_match_number: 19543978)
match19.challonge_week = 6
match19.save!

# week 7
match6 = Match.find_by(challonge_match_number: 19543979)
match6.challonge_week = 7
match6.save!
match15 = Match.find_by(challonge_match_number: 19543980)
match15.challonge_week = 7
match15.save!
match20 = Match.find_by(challonge_match_number: 19543982)
match20.challonge_week = 7
match20.save!
match28 = Match.find_by(challonge_match_number: 19543981)
match28.challonge_week = 7
match28.save!


admin = User.new(name: "David McCoy", password: "password", password_confirmation: "password", email: "david.mccoy@gmail.com", admin: true)
admin.save

season2a = Season.create(number: 2, challonge_name: "tdl2lorwyn", num_weeks: 5, num_teams: 6)
season2a.save

hagamemnites = Team.create(name: "Hagamemnites")
bongokratis = Team.create(name: "Bongokratis")
scryducks = Team.create(name: "ScryDucks")
her_big = Team.create(name: "Her Big Shister")
j_chan = Team.create(name: "J-Chan All-Stars")
steve = Team.create(name: "Steve")

season2a.teams << hagamemnites
season2a.teams << bongokratis
season2a.teams << scryducks
season2a.teams << her_big
season2a.teams << j_chan
season2a.teams << steve

hagamemnites.set_challonge_team_number
bongokratis.set_challonge_team_number
scryducks.set_challonge_team_number
her_big.set_challonge_team_number
j_chan.set_challonge_team_number
steve.set_challonge_team_number

season2a.create_matches

# manually edit season 2 weeks
# bongo 224
# hag 223
# scry 225
# steve 228
# j-chan 227
# herbig 226

m1 = Match.find_by(challonge_match_number: 20593294)
m1.challonge_week = 1
m1.save!
m2 = Match.find_by(challonge_match_number: 20593293)
m2.challonge_week = 1
m2.save!
m3 = Match.find_by(challonge_match_number: 20593295)
m3.challonge_week = 1
m3.save!
m4 = Match.find_by(challonge_match_number: 20593298)
m4.challonge_week = 3
m4.save!
m5 = Match.find_by(challonge_match_number: 20593297)
m5.challonge_week = 2
m5.save!
m6 = Match.find_by(challonge_match_number: 20593296)
m6.challonge_week = 4
m6.save!
m7 = Match.find_by(challonge_match_number: 20593300)
m7.challonge_week = 2
m7.save!
m8 = Match.find_by(challonge_match_number: 20593301)
m8.challonge_week = 5
m8.save!
m9 = Match.find_by(challonge_match_number: 20593299)
m9.challonge_week = 3
m9.save!
m10 = Match.find_by(challonge_match_number: 20593304)
m10.challonge_week = 3
m10.save!
m11 = Match.find_by(challonge_match_number: 20593303)
m11.challonge_week = 4
m11.save!
m12 = Match.find_by(challonge_match_number: 20593302)
m12.challonge_week = 5
m12.save!
m13 = Match.find_by(challonge_match_number: 20593306)
m13.challonge_week = 4
m13.save!
m14 = Match.find_by(challonge_match_number: 20593305)
m14.challonge_week = 2
m14.save!
m15 = Match.find_by(challonge_match_number: 20593307)
m15.challonge_week = 5
m15.save!


season2b = Season.create(number: 2, challonge_name: "tdl2shadowmoor", num_weeks: 5, num_teams: 60-40)
season2b.save

rhox = Team.create(name: "Rhox Paper Scissors")
hail_slaton = Team.create(name: "Hail Slaton")
richard = Team.create(name: "Richard and the Tanimals")
goblin = Team.create(name: "Goblin Bushwickers")
protect = Team.create(name: "Protect Ya Deck")
lemures = Team.create(name: "Les Lemures")

season2b.teams << rhox
season2b.teams << hail_slaton
season2b.teams << richard
season2b.teams << goblin
season2b.teams << protect
season2b.teams << lemures

rhox.set_challonge_team_number
hail_slaton.set_challonge_team_number
richard.set_challonge_team_number
goblin.set_challonge_team_number
protect.set_challonge_team_number
lemures.set_challonge_team_number

season2b.create_matches

