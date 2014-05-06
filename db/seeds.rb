# Delete all entries
User.delete_all
Player.delete_all
Team.delete_all
Match.delete_all
Season.delete_all


# Create players from Season 1

# J-Chan All-Stars
hugh_kramer = Player.create(name: "Hugh Kramer", bio: "Hugh Kramer is just a dude. A dude who loves magical gatherings. He does not claim to know the secrets of the universe though he does claim to have been the beat-boxing champion of his high school. A lover of all things limited and most things Lotus Cobra, when it comes to drafting, Hugh Kramer, like the Wu-Tang Clan and Kadar's farts, ain't nothing to F with.", email: "hskramer@gmail.com")
jon_sieber = Player.create(name: "Jon Sieber", bio: "The only notable thing Jon has ever done in a game of Magic was assembling a T4 Kiki/Pestermite combo during a Modern Masters Team Draft.", email: "jonmsieber@gmail.com")
alex_owen = Player.create(name: "Alex Owen", bio: "Alex Owen is a southern boy with eyes that were made to get lost in. His hobbies include Magic: The Gathering, working out, and working it. He never really started playing Magic and he probably will never really stop. Alex is known within the magic community for his catch phrases which he will seemingly exclaim at random during public matches. Phrases such as \"ay papi! Si, mas rapido!\" and of course the classic Michael Jackson \"Shi-Shi-mongggga!\" are beloved by all. BELOVED BY ALL. A modest accounting professional by day and a shark of trades by night, Alex remains a mystery, yet to be unraveled, and like Pandora's box, you may not want to know the truth but can't stop yourself from finding out.", email: "ajowen21@gmail.com")

# ScryDucks
matt_jones = Player.create(name: "Matt Jones", bio: "Matt Jones is a sometimes PWP grinder, all the time spell slinger, and one passionate dude. He started playing at the end of Revised and quit at Exodus. Upon sobriety and running out of self-help groups to join, Jones picked Magic back up at New Phyrexia, found his favorite non-Necropotence card, Phyrexian Obliterator, and earned himself a nickname. He loves Constructed and tolerates Limited. With Hugh Kramer, Jones founded Team Draft League in 2014 as a way to curate draft groups, get better at Limited Magic in a healthy, and deepen our relationship with the local Magic community.", email: "matttheobliteratorjones@gmail.com")
kadar_brock = Player.create(name: "Kadar Brock", bio: "Kadar Brock is a Johnny come (Spike) lately. First exposed to Magic in high school, his earliest recollections are frustrations with flyers. After a casual reintroduction via Matt Jones during Odyssey, kitchen table Magic was his only spell slinging until M12. Then a growing love of Limited and EDH burgeoned into all Constructed formats, recently slamming Meat Hooks in Legacy. Some career highlights include casting an opponents Gideon off Nightveil Specter/Lotally Lost in GTC Limited, and elf waving Jackie Lee at GP Pittsburg. Hunter R Slaton gave him the nickname \"History's Greatest Monster\" after smashing him with a turn four Gruul Rage Beast in draft. Lately though, he's been focusing more on winning fast than winning epically. But, if you can do both...Do it!", email: "kadar.brock@gmail.com")
nick_forker = Player.create(name: "Nick Forker", bio: "Forker started playing magic during Revised and quit shortly after Mirage. He had an adolescence, and then returned to the game at the end or Return to Ravinca after having fixed all problems adolescence had left behind for his twenty-something self to figure out. Now freshly in his thirties, he enjoys improving his play. He sees magic as a metaphor for life in general, in that all you control is preparation, attitude, and decision making...the rest is not up to you, so don't let the variance put you on tilt and see the lesson in every mistake.", email: "nicholasforker@gmail.com")

# Cackasaurus
dan_black = Player.create(name: "Dan Black", bio: "I'm just a guy who is interested in being successful with my mana, draws, and planes walker points. Recently things have been taking off for me, I've got a good draft run at a well-known very profitable location, my cards have started targeting exponentially, and I'm working on a web startup of my own to help people's snap keeps. The only thing I've neglected is my sanctioned play, but there's only so much time! I'm silly and insightful, but I'm also nerdy and down-to-earth. I'm very patient but I know when to cut through things and just attack. I keep it together under pressure because I usually see things coming before they happen.", email: "n/a")
dan_garfield = Player.create(name: "Dan Garfield", bio: "\"\"", email: "n/a")
austin_k = Player.create(name: "Austin K", bio: "...", email: "n/a")

# Jung Gunz
zach_barash = Player.create(name: "Zach Barash", bio: "Zach discovered Magic in the summer of '94 and was immediately hooked when he received a booster of Revised for his birthday. He left the game briefly during Urza's block, then missed everything between Prophecy and Magic 2011 (though he did boot up Shandalar every year). Zach is an avid Limited player and proud cube owner. He performs musical improv every week with his team, Petting Zoo, if you're into that sort of stuff (which is awesome!).", email: "improvisedphilosophy@gmail.com")
nick_heppding = Player.create(name: "Nick Heppding", bio: "Like seemingly every other team drafter, Nick played Magic when he was younger before giving it up until he had a bit of jingle-jangle in his pocket. Now he targets himself with Raven's Crime, Dredges for 5, and does whatever it takes to cast fatties from his graveyard. A recent assassination of one Deathrite Shaman in his favorite format leaves him with high hopes that Unburial Rites targeting Borborygmos the Enraged will once again be a game winning play. Until then he will first pick Baleful Eidolon over everything.", email: "nah293@nyu.edu")
richard_tan = Player.create(name: "Richard Tan", bio: "Have you seen Johnny? I miss that guy.", email: "tanx678@gmail.com")

# Life from the LOaM
monique_garraud = Player.create(name: "Monique Garraud", bio: "Monique recently stumbled upon Magic: The Gathering while attending board game night at her local game store. This Brooklyn-based biotech research analyst knew she'd be hooked once she saw the excitement of the players and complexity of their games. Innistrad was her first set and after about a month she had already played in her first Pro Tour Qualifier. She currently plays in about four competitive REL events monthly and thoroughly enjoys traveling to Tri-State PTQs and as well as Grand Prix all over the country. Be sure to say hello when you see her at your next tournament!", email: "mgarraud@gmail.com")
orlando_santiago = Player.create(name: "Orlando Santiago", bio: "Orlando, or \"Lando\" (if you prefer the crude vernacular) is a man who enjoys the finer things in life. A good evening to Orlando is an evening spent in the company of a '62 Merlot, a copy of Hemingway, and finely tuned Grixis deck with a 60-40 match-up or better vs. the known meta. Orlando is somewhat of a walking contradiction; a man who professes to \"love magic\" yet in the same breath, recoils at the mention of David Copperfield. Rumors of Orlando once winning a game on a mull to 2 echo throughout Twenty-Sided Store like ghostly wind across the frozen arctic tundra. Orlando is not one to mince words and has been known to state on more than one occasion that he means to win Season One of Team Draft League. Whether his team is indeed victorious or suffers the utter shame of defeat, of one thing we can certainly be sure: someone is about to get scraped.", email: "n/a")
anthony_lebron = Player.create(name: "Anthony Lebron", bio: "While most people dream about drafting Lebron, Lebron spends most of his time drafting Magic.", email: "n/a")

# Clockwerk Bea(s)t(s)
hunter_slaton = Player.create(name: "Hunter \"Rolex\" Slaton", bio: "Hunter Slaton first picked up Magic when he was a kid, around the time of Revised and Fallen Empires, alongside his best friend at the time. Both of our sets of parents made it a condition of our playing that we throw away all the black cards immediately upon opening them, because of Jesus. Hunter didn't play again until Dissension, when he found an awesome playgroup through Craigslist, which used to play at a deli near the Chrysler Building. Hunter pretty much exclusively plays Limited, aka God's Format. He has a four-digit DCI number, and lives five minutes' walk from the 20 Sided Store in Williamsburg, Brooklyn.", email: "hunterslaton@gmail.com")
david_mccoy = Player.create(name: "David \"Bones\" McCoy", bio: "David is a robot with a heart of G/W. Spikey but unwilling to grind, he has found a happy medium by drafting with friends. Like most \"people,\" he played for a few months as a kid, took a decade and a half off to \"grow up,\" and only recently came back to the game.", email: "david.mccoy@gmail.com")
brendan_mcnamara = Player.create(name: "Brendan \"B-Mac\" McNamara", bio: "Brendan attended the Grinder Academy of Athreos where he earned three Distinguished Scholar commendations. Rumors abound, however, that he is actually a Dimir agent, infiltrating the black-white school to learn how to survive while milling his opponents to death. His friends know him as the Irish Lady Gaga, which is kind of weird. He must have some strange friends.", email: "brendanmc@gmail.com")

# Team Handsome
dom_neitz = Player.create(name: "Dom Neitz", bio: "It's impossible to know which is greater: the number of people currently lost in a daydream about Dom or about his cat.", email: "dominic.neitz@gmail.com")
sean_morse = Player.create(name: "Sean Morse", bio: "Sean Morse once had dreams that trapping opponents in a 'Geddon-Tradewind Rider lock would win every game; sadly, Oath of Druids then Urza's Saga was printed and Sean quit, too intimidated by all the manas being made. Lured back in like many players by the ever-improving design of the game and the excess cash in his pocket, Sean returned circa Innistrand (U/R self-mill in draft never gets enough love...). While not playing - which isn't often - he slings sentences together and molds the young minds of tomorrow. Our future isn't bright.", email: "sean.morse84@gmail.com")
derek_gallen = Player.create(name: "Derek Gallen", bio: "From the womb Derek knew something was slightly afoot, and it was Autumn in 1994 watching his brother's basketball game when a friend revealed two starter decks of Revised. There, under the dim elementary school light, he cast his first Serra Angel. Barron's Comics and Cards was in Milford, CT. His first visit he met Melissa Benson and spent one dollar on a single copy of Channel. Many Years and many tournaments later, his mother gifted him $200 to purchase his first Black Lotus, which he carried with him in his front pocket until he graduated high school. Once, he qualified for the Pro Tour, but went 0-2 and decided to drop on day one. It was during his tenure at Boston University he resolved to selling his collection to help finance his education. And, over the next ten years, Derek let go of Magic: The Gathering. Last summer in 2013 on a sunny afternoon he decided to spend a days curiosity catching up with the game. Not a few days went by when he emerged, bright and disheveled, ready again to exercise his devotion at Twenty Sided Store.", email: "derek.gallen@gmail.com")

# The Abeysitters
dylan_heister = Player.create(name: "Dylan Heister", bio: "Dylan Hiester spends his time surrounded by a need, an urge, an unending desire to shuffle and snap cards rapidly and annoyingly between his fingers. This desire led him to magic the gathering at the tender age of... whatever age first graders are. He remember the joy of casting nightmare and verdant force as a wee lad. He remembers in standard casting a turn two Grim Monolith into turn three Sneak Attack, activate - Crater Hellion, activate - Serra Avatar swing for lethal. He loves resolving things early (if you know what I mean) like turn two planeswalkers or Sun Titan off of Black Lotus, return Lotus then cast Lilliana, of the Veil. He left competitive play in high school and returned for the Alara block. Turn two Woolly Thoctar. Amirite?!?! He has enjoyed watching Twenty sided store and its inhabitants grow as magic players, a store and other kinds of things. He is proud to be a member of team The Abey Sitters.", email: "thehiest@gmail.com")
abe_lusk = Player.create(name: "Abe \"Thrag\" Lusk", bio: "Abe Lusk is a wildly corruptible seventeen year old living in Williamsburg. In a desperate attempt to escape the frenzied crowd of adolescent girls chasing him around every corner of Stuyvesant High School, he looked for a more mature friend group at the Twenty Sided Store. Abe quickly discovered that breast size aside his new friends are no more mature than his old ones. Either despite this or because of it, he now spends most of his free time playing magic at the Twenty Sided Store. Drafting is his favorite format, but playing magic of any kind is always preferable to not playing at all. In his opinion there is nothing more satisfying than turning dudes sideways and soundly thrashing his opponent, hopefully with Alex Owen shrieking \"Ay Papi!\" in the background.", email: "abelusk97@gmail.com")
jonathan_pena = Player.create(name: "Jonathan Pena", bio: "[Bio goes here.]", email: "jnthn.p@gmail.com")


# Create teams
j_chan = Team.create(name: "J-Chan All-Stars")
scryducks = Team.create(name: "ScryDucks")
cackasaurus = Team.create(name: "Cackasaurus")
jung_gunz = Team.create(name: "Jung Gunz")
loam = Team.create(name: "Life from the LOaM")
clockwerk_beats = Team.create(name: "Clockwerk Beats")
team_handsome = Team.create(name: "Team Handsome")
abeysitters = Team.create(name: "Abeysitters")

# Create Season 1
season1 = Season.create(number: 1, challonge_name: "iy7fpc0t", num_weeks: 7, num_teams: 8)
season1.save

# Create player/team/season relationships
# J-chan
hk1 = hugh_kramer.player_team_histories.create
hk1.team = j_chan
hk1.season = season1
js1 = jon_sieber.player_team_histories.create
js1.team = j_chan
js1.season = season1
ao1 = alex_owen.player_team_histories.create
ao1.team = j_chan
ao1.season = season1

# Scryducks
mj1 = matt_jones.player_team_histories.create
mj1.team = scryducks
mj1.season = season1
kb1 = kadar_brock.player_team_histories.create
kb1.team = scryducks
kb1.season = season1
nf1 = nick_forker.player_team_histories.create
nf1.team = scryducks
nf1.season = season1

# Cackasaurus 
db1 = dan_black.player_team_histories.create
db1.team = cackasaurus
db1.season = season1
dg1 = dan_garfield.player_team_histories.create
dg1.team = cackasaurus
dg1.season = season1
ak1 = austin_k.player_team_histories.create
ak1.team = cackasaurus
ak1.season = season1

# Jung Guns
zb1 = zach_barash.player_team_histories.create
zb1.team = jung_gunz
zb1.season = season1
nh1 = nick_heppding.player_team_histories.create
nh1.team = jung_gunz
nh1.season = season1
rt1 = richard_tan.player_team_histories.create
rt1.team = jung_gunz
rt1.season = season1

# Life from the LOaM
mg1 = monique_garraud.player_team_histories.create
mg1.team = loam
mg1.season = season1
os1 = orlando_santiago.player_team_histories.create
os1.team = loam
os1.season = season1
al1 = anthony_lebron.player_team_histories.create
al1.team = loam
al1.season = season1

# Clockwerk Bea(s)t(s)
hs1 = hunter_slaton.player_team_histories.create
hs1.team = clockwerk_beats
hs1.season = season1
dm1 = david_mccoy.player_team_histories.create
dm1.team = clockwerk_beats
dm1.season = season1
bm1 = brendan_mcnamara.player_team_histories.create
bm1.team = clockwerk_beats
bm1.season1


# Team Handsome
dn1 = dom_neitz.player_team_histories.create
dn1.team = team_handsome
dn1.season = season1
sm1 = sean_morse.player_team_histories.create
sm1.team = team_handsome
sm1.season = season1
dg1 = derek_gallen.player_team_histories.create
dg1.team = team_handsome
dg1.season = season1

# Abeysitters
dh1 = dylan_heister.player_team_histories.create
dh1.team = abeysitters
dh1.season = season1
al1 = abe_lusk.player_team_histories.create
al1.team = abeysitters
al1.season = season1
jp1 = jonathan_pena.player_team_histories.create
jp1.team = abeysitters
jp1.season = season1

# Set team challonge numbers
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

# Create matches
season1.create_matches

# manually edit Season 1 weeks

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

# Make me an admin user
admin = User.new(name: "David McCoy", password: "password", password_confirmation: "password", email: "david.mccoy@gmail.com", admin: true)
admin.save!

# Connect to my player
david_mccoy.user_id = admin.id
david_mccoy.save!

# Create Season 2a
season2a = Season.create(number: 2, challonge_name: "tdl2lorwyn", num_weeks: 5, num_teams: 6, name: "Lorwyn Division")
season2a.save

# Create new teams
hagamemnites = Team.create(name: "Hagamemnites")
bongokratis = Team.create(name: "Bongokratis")
her_big = Team.create(name: "Her Big Shister")
steve = Team.create(name: "Steve")

# Create new players

# Hagamemnites
charles_hagaman = Player.create(name: "Charles Hagaman", email: "chibichazoo@gmail.com")
li_xu = Player.create(name: "Li Xu", email: "lx240nyu@gmail.com")
dana_goldstein = Player.create(name: "Dana Goldstein", email: "teraflops@gmail.com")
jess_stirba = Player.create(name: "Jess Stirba", email: "lina.corvus@gmail.com")

# Bongokratis
ryan_burniche = Player.create(name: "Ryan Burniche", email: "ryanburniche@gmail.com")
alex_buell = Player.create(name: "Alex Buell", email: "alex.buell@gmail.com")
angel_espejo = Player.create(name: "Angel Espejo", email: "puregrind@gmail.com")

# Her Big Shister
mike_herbig = Player.create(name: "Mike Herbig", email: "mikeherbig@gmail.com")
joe_shi = Player.create(name: "Joe Shi", email: "shij209@gmail.com")

# Steve
matt_corazzelli = Player.create(name: "Matt Corazzelli", email: "corazzellim@gmail.com")
pourmal = Player.create(name: "Pourmal", email: "pourmal@gmail.com")
sam_werbalowsky = Player.create(name: "Sam Werbalowsky", email: "swerbo@gmail.com")

# Create team/player/season relationships

# Hagamemnites
ch2 = charles_hagaman.player_team_histories.create
ch2.team = hagamemnites
ch2.season = season2a
lx2 = li_xu.player_team_histories.create
lx2.team = hagamemnites
lx2.season = season2a
dg2 = dana_goldstein.player_team_histories.create
dg2.team = hagamemnites
dg2.season = season2a
js2 = jess_stirba.player_team_histories.create
js2.team = hagamemnites
js2.season = season2a 

# Bongokratis
rb2 = ryan_burniche.player_team_histories.create
rb2.team = bongokratis
rb2.season = season2a
ab2 = alex_buell.player_team_histories.create
ab2.team = bongokratis
ab2.season = season2a
ae2 = angel_espejo.player_team_histories.create
ae2.team = bongokratis
ae2.season = season2a

# Scryducks
mj2 = matt_jones.player_team_histories.create
mj2.team = scryducks
mj2.season = season2a
kb2 = kadar_brock.player_team_histories.create
kb2.team = scryducks
kb2.season = season2a
nf2 = nick_forker.player_team_histories.create
nf2.team = scryducks
nf2.season = season2a


# Her Big Shister
mh2 = mike_herbig.player_team_histories.create
mh2.team = her_big
mh2.season = season2a
js2 = joe_shi.player_team_histories.create
js2.team = her_big
js2.season = season2a
dh2 = dylan_heister.player_team_histories.create
dh2.team = her_big
dh2.season = season2a

# J-Chan
hk2 = hugh_kramer.player_team_histories.create
hk2.team = j_chan
hk2.season = season2a
jons2 = jon_sieber.player_team_histories.create
jons2.team = j_chan
jons2.season = season2a
ao2 = alex_owen.player_team_histories.create
ao2.team = j_chan
ao2.season = season2a

# Steve
mc2 = matt_corazzelli.player_team_histories.create
mc2.team = steve
mc2.season = season2a
p2 = pourmal.player_team_histories.create
p2.team = steve
p2.season = season2a

# Set team challonge numbers
hagamemnites.set_challonge_team_number
bongokratis.set_challonge_team_number
scryducks.set_challonge_team_number
her_big.set_challonge_team_number
j_chan.set_challonge_team_number
steve.set_challonge_team_number

# Create matches

season2a.create_matches

# manually edit season 2a weeks
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

# Create Season 2b
season2b = Season.create(number: 2, challonge_name: "tdl2shadowmoor", num_weeks: 5, num_teams: 6, name: "Shadowmoor Division")
season2b.save

# Create new teams
rhox = Team.create(name: "Rhox Paper Scissors")
hail_slaton = Team.create(name: "Hail Slaton")
richard = Team.create(name: "Richard and the Tanimals")
goblin = Team.create(name: "Goblin Bushwickers")
protect = Team.create(name: "Protect Ya Deck")
lemures = Team.create(name: "Les Lemures")

# Create new players

# Rhox
ross_cooperman = Player.create(name: "Ross Cooperman", email: "cooperman@gmail.com")
jesse_ma = Player.create(name: "Jesse Ma", email: "jesse@casthaven.com")
travis_batzer = Player.create(name: "Travis Batzer", email: "travis.batzer@gmail.com")

# Protect Ya Deck
collette_leroux = Player.create(name: "Collette Leroux", email: "colette.leroux@gmail.com")
jamie_parke = Player.create(name: "Jamie Parke", email: "jamie.j.parke@gmail.com")
andy_longo = Player.create(name: "Andy Longo", email: "piperatthegate0@gmail.com")

# Les Lemures
matt_bradley = Player.create(name: "Matt Bradley", email: "matthew.j.bradley@gmail.com")
anthony_ling = Player.create(name: "Anthony Ling", email: "anthony.y.ling@gmail.com")
dustin_williamson = Player.create(name: "Dustin Williamson", email: "williamson.dustin@gmail.com")

# Create player/team/season relationships

# Rhox
rc2 = ross_cooperman.player_team_histories.create
rc2.team = rhox
rc2.season = season2b
jm2 = jesse_ma.player_team_histories.create
jm2.team = rhox
jm2.season = season2b
tb2 = travis_batzer.player_team_histories.create
tb2.team = rhox
tb2.season = season2b

# Hail Slaton
hs2 = hunter_slaton.player_team_histories.create
hs2.team = hail_slaton
hs2.season = season2b
dm2 = david_mccoy.player_team_histories.create
dm2.team = hail_slaton
dm2.season = season2b
bm2 = brendan_mcnamara.player_team_histories.create
bm2.team = hail_slaton
bm2.season = season2b

# Richard and the Tanimals
rt2 = richard_tan.player_team_histories.create
rt2.team = richard
rt2.season = season2b
zb2 = zach_barash.player_team_histories.create
zb2.team = richard
zb2.season = season2b
nh2 = nick_heppding.player_team_histories.create
nh2.team = richard
nh2.season = season2b

# Goblin Bushwickers
sm2 = sean_morse.player_team_histories.create
sm2.team = goblin
sm2.season = season2b
dg2 = derek_gallen.player_team_histories.create
dg2.team = goblin
dg2.season = season2b
dn2 = dom_neitz.player_team_histories.create
dn2.team = goblin
dn2.season = season2b

# Protect Ya Deck
cl2 = collette_leroux.player_team_histories.create
cl2.team = protect
cl2.season = season2b
jp2 = jamie_parke.player_team_histories.create
jp2.team = protect
jp2.season = season2b
al2 = andy_longo.player_team_histories.create
al2.team = protect
al2.season = season2b

# Les Lemures
mb2 = matt_bradley.player_team_histories.create
mb2.team = lemures
mb2.season = season2b
tonyl2 = anthony_ling.player_team_histories.create
tonyl2.team = lemures
tonyl2.season = season2b
dw2 = dustin_williamson.player_team_histories.create
dw2.team = lemures
dw2.season = season2b

# Set team challonge number
rhox.set_challonge_team_number
hail_slaton.set_challonge_team_number
richard.set_challonge_team_number
goblin.set_challonge_team_number
protect.set_challonge_team_number
lemures.set_challonge_team_number

season2b.create_matches

# manually edit season 2b weeks

m16 = Match.find_by(challonge_match_number: 20593383)
m16.challonge_week = 1
m16.save!
m17 = Match.find_by(challonge_match_number: 20593385)
m17.challonge_week = 1
m17.save!
m18 = Match.find_by(challonge_match_number: 20593384)
m18.challonge_week = 1
m18.save!
m19 = Match.find_by(challonge_match_number: 20593388)
m19.challonge_week = 5
m19.save!
m20 = Match.find_by(challonge_match_number: 20593387)
m20.challonge_week = 5
m20.save!
m21 = Match.find_by(challonge_match_number: 20593386)
m21.challonge_week = 5
m21.save!
m22 = Match.find_by(challonge_match_number: 20593390)
m22.challonge_week = 4
m22.save!
m23 = Match.find_by(challonge_match_number: 20593389)
m23.challonge_week = 4
m23.save!
m24 = Match.find_by(challonge_match_number: 20593391)
m24.challonge_week = 4
m24.save!
m25 = Match.find_by(challonge_match_number: 20593394)
m25.challonge_week = 3
m25.save!
m26 = Match.find_by(challonge_match_number: 20593393)
m26.challonge_week = 3
m26.save!
m27 = Match.find_by(challonge_match_number: 20593392)
m27.challonge_week = 3
m27.save!
m28 = Match.find_by(challonge_match_number: 20593395)
m28.challonge_week = 2
m28.save!
m29 = Match.find_by(challonge_match_number: 20593397)
m29.challonge_week = 2
m29.save!
m30 = Match.find_by(challonge_match_number: 20593396)
m30.challonge_week = 2
m30.save!

season2a.active = true
season2a.save!
season2b.active = true
season2b.save!