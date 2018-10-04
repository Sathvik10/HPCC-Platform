/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

#onwarning(4523, ignore);

import Std.File AS FileServices;
import $.setup;
prefix := setup.Files(false, false).QueryFilePrefix;

// Super Key regression test

AlbumRecordDef     := RECORD
UNSIGNED                        Id;
STRING80            Title;
STRING64            Artist;
UNSIGNED            Tracks;
UNSIGNED            Mins;
UNSIGNED            Secs;
UNSIGNED            Player;
UNSIGNED            Position;
                      END;

ds := DATASET(
[
  {251,'Kingsize','The Boo Radleys',14,63,55,0,252},
  {198,'Harmacy','Sebadoh',19,50,22,0,199},
  {717,'Empathy','Mandalay',11,50,29,1,109},
  {264,'The Boy With The Arab Strap','Belle and Sebastian',12,45,35,0,265},
  {547,'Mystery White Boy - Bonus Disc','Jeff Buckley',3,18,17,0,11},
  {627,'The Way I Feel Today','Six By Seven',11,40,26,1,39},
  {657,'Lullaby For Liquid Pig','Lisa Germano',12,36,34,1,58},
  {615,'World Without Tears','Lucinda Williams',13,59,52,1,27},
  {534,'Send','Wire',11,40,30,1,12},
  {622,'Universal Truths And Cycles','Guided By Voices',19,46,35,1,34},
  {345,'Universal Mother','O´Connor Sinéad',14,50,12,0,346},
  {102,'Singles','The Smiths',18,62,20,0,102},
  {412,'Flowers','Echo & the Bunnymen',11,45,30,0,294},
  {614,'Home Is Where You Hang Yourself','Her Space Holiday',11,45,38,0,363},
  {61,'All This Useless Beauty','Elvis Costello And The Attractions',12,48,21,0,61},
  {103,'Meat is Murder','The Smiths',9,39,55,0,103},
  {414,'Is This It','The Strokes',11,36,30,0,314},
  {709,'Love Is Hell pt.1','Ryan Adams',10,44,28,1,103},
  {710,'Love Is Hell Pt. 2','Ryan Adams',9,39,20,1,104},
  {699,'Stories From The City Stories From The Sea','PJ Harvey',13,53,16,1,93},
  {260,'Is This Desire?','P J Harvey',12,40,43,0,261},
  {700,'CD Lens Cleaner','Maxim',4,11,23,0,46},
  {261,'Donkeys 92-97','Tindersticks',12,54,6,0,262},
  {420,'Gold','Ryan Adams',17,74,27,0,242},
  {600,'Unsavory Products','Black Dog + Black Sifichi',20,65,26,0,79},
  {410,'The Very Best of Prince','Prince',17,73,20,0,179},
  {675,'The Curtain Hits The Cast','Low',12,65,7,1,73},
  {598,'Empty Rooms','Canyon',10,42,58,1,26},
  {276,'live from the Bataclan','Jeff Buckley',4,34,47,0,277},
  {335,'In Utero','Nirvana',12,69,5,0,336},
  {93,'No Alternative','Various Artists',19,74,24,0,93},
  {364,'The Early Years Vol.2','Tom Waits',13,44,20,0,365},
  {192,'The Christy Moore Collection 81-91','Christy Moore',20,73,5,0,193},
  {365,'Brotherhood','New Order',10,43,48,0,366},
  {714,'Creatures','Elf Power',11,35,46,1,106},
  {111,'Sweet Relief II: Gravity of the Situation - The Songs of Vic Chesnutt','Various Artists',14,59,58,0,111},
  {71,'Wildflowers','Tom Petty',15,62,51,0,71},
  {54,'Astral Weeks','Van Morrison',8,47,16,0,54},
  {733,'Sail Away (1972))','Randy Newman',17,41,51,1,124},
  {289,'Left Over Life To Kill','The Paradise Motel',10,51,42,0,290},
  {110,'New Adventures In Hi-Fi','R.E.M.',14,65,33,0,110},
  {278,'As Above So Below','Barry Adamson',10,47,31,0,279},
  {543,'Help','Various Artists',20,75,50,0,1},
  {550,'Parachutes','Coldplay',10,41,50,0,14},
  {134,'Time Out Of Mind','Bob Dylan',11,72,52,0,134},
  {730,'Red House Painters','Red House Painters',8,45,4,1,121},
  {612,'The Hour Of The Bewilderbeast','Badly Drawn Boy',18,63,36,0,320},
  {580,'I`m Your Man','Leonard Cohen',8,41,2,0,44},
  {151,'I`m Your Fan - The Songs of Leonard Cohen','Various Artists',18,75,54,0,151},
  {459,'The Drummers Of Burundi','Les Tambourinaires du Burundi',1,29,50,0,247},
  {74,'Peggy Suicide','Cope Julian',18,76,6,0,74},
  {337,'Maxinquaye','Tricky',12,57,15,0,338},
  {167,'Pop','U2',12,60,13,0,167},
  {302,'The Future is Medium','Compulsion',16,45,51,0,303},
  {224,'Waits Tom (Mule Variations)','Tom Waits',16,70,42,0,225},
  {132,'death to the pixies','Pixies',21,55,37,0,132},
  {519,'Fever To Tell','Yeah Yeah Yeahs',12,39,34,1,1},
  {646,'Perfectly Good Guitar','John Hiatt',13,57,30,0,233},
  {52,'The Bootleg Series Vol. 3','Bob Dylan',16,77,0,0,52},
  {65,'The Bootleg Series (Disc 2)','Bob Dylan',20,76,48,0,65},
  {508,'Doolittle','Pixies',15,38,48,0,222},
  {209,'The Optimist LP','Turin Brakes',12,51,38,0,210},
  {579,'The Ultimate Experience','Jimi Hendrix',20,72,0,0,43},
  {271,'TimB','Tim Buckley',9,73,51,0,272},
  {569,'Automatic For The People','R.E.M.',12,48,55,0,33},
  {571,'Wish','The Cure',12,66,22,0,35},
  {566,'Under The Bushes Under The Stars','Guided By Voices',24,56,2,0,30},
  {95,'Hats','The Blue Nile',7,38,47,0,95},
  {387,'One','The Beatles',27,79,10,0,388},
  {85,'US','Peter Gabriel',10,57,51,0,85},
  {340,'Definitely Maybe','Oasis',11,52,5,0,341},
  {557,'Sky Motel','Kristin Hersh',13,46,5,0,21},
  {663,'Ether Teeth','Fog',11,54,23,1,400},
  {608,'Young Team','Mogwai',10,64,37,0,190},
  {396,'Complete `B` Sides','Pixies',19,48,37,0,397},
  {536,'Mary Star Of The Sea','Zwan',14,65,50,1,15},
  {530,'Think Tank','Blur',13,49,38,1,8},
  {476,'Duck Stab / Buster & Glen','The Residents',14,34,39,0,358},
  {510,'Conduct','F*ck',17,34,17,0,256},
  {252,'Without You I`m Nothing','Placebo',12,65,55,0,253},
  {162,'Live At The Wireless','Ash',10,36,53,0,162},
  {128,'Live At The Royal Albert Hall','Nick Cave & The Bad Seeds',9,38,57,0,128},
  {372,'Live at Sin-`e','Jeff Buckley',4,26,40,0,373},
  {690,'Distant Shore','Karan Casey',11,40,53,1,85},
  {306,'Against Perfection','Adorable',10,40,15,0,307},
  {160,'Hand It Over','Dinosaur Jr.',12,48,18,0,160},
  {219,'Keep It Like a Secret','Built to Spill',10,47,0,0,220},
  {117,'Contact From The Underworld Of Redboy','Robbie Robertson',11,60,3,0,117},
  {649,'I Might Be Wrong: Live Recordings','Radiohead',8,40,14,1,51},
  {561,'Oh What A Beautiful Morning','Eels',17,63,26,0,25},
  {385,'Courtesy Of Choice','Leila',13,58,15,0,386},
  {541,'Smile Sunset','Mark Mulcahy',12,51,28,1,20},
  {601,'Field Studies','Quasi',14,49,5,0,98},
  {683,'Final Straw','Snow Patrol',12,43,40,1,77},
  {149,'Tindersticks','Tindersticks',21,77,4,0,149},
  {567,'Tindersticks [II]','Tindersticks',16,70,12,0,31},
  {177,'Giant Steps','The Boo Radleys',17,64,13,0,177},
  {724,'Stellastarr*','Stellastarr*',10,42,41,1,115},
  {703,'The Last Train To Mashville Vol. 2','Alabama 3',11,37,32,1,96},
  {486,'The Best Of','Siouxsie & the Banshees',15,57,13,0,137},
  {318,'The Best Of Suzanne Vega `Tried and True`','Suzanne Vega',17,59,51,0,319},
  {114,'The Best Of R.E.M.','R.E.M.',16,59,29,0,114},
  {243,'The Best Of Nick Cave And The Bad Seeds','Nick Cave and the Bad Seeds',16,75,38,0,244},
  {300,'Greatest Hits','Leonard Cohen',12,46,52,0,301},
  {373,'Greatest Hits So Far','Public Image Ltd',14,68,46,0,374},
  {434,'Greatest Hits - Judas O (Disc 2)','Smashing Pumpkins',16,70,12,0,228},
  {613,'Furthest From The Sun','Family Cat',13,56,51,0,329},
  {263,'The Last Dog And Pony Show.','Bob Mould',12,48,18,0,264},
  {562,'The Last Broadcast','Doves',12,54,1,0,26},
  {214,'BBC Sessions (Disc 2)','Led Zeppelin',9,71,58,0,215},
  {216,'BBC Sessions - Disc Two','Jimi Hendrix Experience',19,50,24,0,217},
  {217,'BBC Sessions - Disc One','Jimi Hendrix Experience',18,57,17,0,218},
  {712,'The Missing Years','John Prine',14,54,30,1,97},
  {199,'Loveless','My Bloody Valentine',11,48,40,0,200},
  {634,'The Kiss Of Morning','Graham Coxon',13,46,28,1,46},
  {609,'Goo','Sonic Youth',11,49,57,0,216},
  {188,'Other Songs','Ron Sexsmith',14,39,52,0,189},
  {575,'Field Songs','Mark Lanegan',12,42,29,0,39},
  {593,'Ether Song','Turin Brakes',12,58,36,1,21},
  {655,'Ether Song (Bonus Disc)','Turin Brakes',4,15,46,1,48},
  {99,'Ron Sexsmith','Ron Sexsmith',14,43,4,0,99},
  {673,'Truly She Is None Other','Holly Golightly',13,41,14,1,71},
  {57,'Hard Nose the Highway','Van Morrison',8,43,11,0,57},
  {73,'Dust','Screaming Trees',10,44,22,0,73},
  {288,'A thousand leaves','Sonic Youth',11,74,6,0,289},
  {622,'Universal Truths And Cycles','Guided By Voices',19,46,35,1,34},
  {722,'Heartbreaker','Ryan Adams',15,52,3,1,113},
  {225,'What Are You Going To Do With Your Life?','Echo & the Bunnymen',9,38,31,0,226},
  {131,'The Burdens of Being Upright','Tracy Bonham',12,35,36,0,131},
  {570,'The I.R.S. Years Vintage 1984','R.E.M.',15,52,40,0,34},
  {529,'Rated R','Queens Of The Stone Age',12,42,14,1,6},
  {292,'Trailer','Ash',7,24,16,0,293},
  {554,'Not For Threes','Plaid',16,68,59,0,18},
  {671,'On Your Side','Magnet',11,49,34,1,69},
  {441,'Mad For Sadness','Arab Strap',10,57,20,0,238},
  {314,'trailer park','Beth Orton',11,59,38,0,315},
  {424,'Can Our Love','Tindersticks',8,45,47,0,316},
  {464,'Forever Changes','Love',11,43,0,0,174},
  {501,'misc','queens of the stoneage',14,59,24,0,330},
  {82,'Get Happy !!','Elvis Costello And The Attractions',20,48,29,0,82},
  {147,'OK Computer','Radiohead',12,53,29,0,147},
  {336,'MTV Unplugged In New York','Nirvana',14,53,58,0,337},
  {698,'HoboSapiens','John Cale',12,64,47,0,381},
  {393,'The Sophtware Slump','Grandaddy',11,46,52,0,394},
  {87,'Surfs Up','The Beach Boys',10,33,38,0,87},
  {718,'Kick Up The Fire And Let The Flames Break Loose','The Cooper Temple Clause',10,53,51,1,110},
  {148,'Dry','P J Harvey',11,40,6,0,148},
  {602,'The Slow-Motion World Of Snowpony','Snow Pony',11,48,29,0,109},
  {537,'Road Movies','Minibar',11,48,1,1,16},
  {599,'Your Love Means Everything','Faultline.',12,45,24,0,70},
  {506,'Bossanova','Pixies',14,39,48,0,173},
  {595,'Cold House','Hood',10,46,15,1,23},
  {682,'Soul Journey','Gillian Welch',10,39,7,1,79},
  {576,'Up To Our Hips','The Charlatans',10,44,57,0,40},
  {121,'The Bootleg Series (Disc 1)','Bob Dylan',22,77,10,0,121},
  {127,'One Foot In The Grave','Beck',16,37,12,0,127},
  {544,'NYC Ghosts & Flowers','Sonic Youth',8,42,25,0,7},
  {376,'Electro-Shock Blues','eels',16,48,18,0,377},
  {667,'Sean-Nós Nua','Sinéad O`Connor',13,65,16,1,65},
  {269,'Good Morning Spider','Sparklehorse',17,52,21,0,270},
  {112,'Drugstore','Drugstore',13,39,4,0,112},
  {154,'Radiator','Super Furry Animals',14,46,55,0,154},
  {138,'Time For The Rest Of Your Life','Strangelove',13,66,7,0,138},
  {390,'Lust For Life','Iggy Pop',9,41,8,0,391},
  {669,'Ballyhoo - The Best Of Echo & The Bunnymen','Echo & the Bunnymen',18,67,52,1,66},
  {604,'Emoticons','Ben & Jason',13,53,38,0,124},
  {248,'Mutations','Beck',13,52,26,0,249},
  {305,'Electronic','Electronic',11,52,32,0,306},
  {249,'Wonsaponatime','Lennon John',21,69,57,0,250},
  {577,'Carry On Up The Charts: The Best Of The Beautiful South','The Beautiful South',14,51,7,0,41},
  {210,'Blood on the Tracks','Bob Dylan',10,51,55,0,211},
  {442,'Exile On Coldharbour Lane','Alabama 3',12,62,47,0,348},
  {62,'Blonde On Blonde','Bob Dylan',14,71,31,0,62},
  {64,'Rum Sodomy & the Lash','The Pogues',13,45,28,0,64},
  {108,'Mark Hollis','Mark Hollis',8,47,1,0,108},
  {551,'100 Broken Windows','Idlewild',12,38,48,0,15},
  {156,'Anthology 3 (Disk 1)','The Beatles',27,74,6,0,156},
  {157,'Anthology 3 (Disc 2)','The Beatles',23,71,30,0,157},
  {135,'Anthology 2 (Disc 1)','The Beatles',25,63,37,0,135},
  {4,'Daisies Of The Galaxy','eels',15,44,18,0,4},
  {358,'Chore of Enchantment','Giant Sand',16,60,1,0,359},
  {283,'THE GOOD WILL OUT','Embrace',14,58,40,0,284},
  {8,'Play','Moby',18,63,16,0,8},
  {317,'Placebo','Placebo',10,60,32,0,318},
  {661,'Hail to the thief','Radiohead',14,56,35,1,61},
  {56,'Hymns to the Silence (Disc 2)','Van Morrison',11,48,43,0,56},
  {55,'Hymns To The Silence (Disc 1)','Van Morrison',10,47,22,0,55},
  {532,'Elephant','The White Stripes',14,49,54,1,10},
  {78,'Different Class','Pulp',12,52,6,0,78},
  {352,'To Bring You My Love','P J Harvey',10,42,43,0,353},
  {129,'Too Long In Exile','Van Morrison',15,77,34,0,129},
  {539,'The Isness','The Future Sound Of London - Amorphous Androgynous',13,63,36,1,18},
  {713,'Want One','Rufus Wainright',14,59,18,1,105},
  {66,'Mezzanine','Massive Attack',11,63,44,0,66},
  {591,'Suicaine Gratifaction','Paul Westerberg',13,48,26,0,362},
  {528,'The Bends','Radiohead',12,48,37,1,5},
  {310,'File Under Easy Listening','Sugar',10,40,5,0,311},
  {190,'Love And Other Demons','Strangelove',10,47,1,0,191},
  {126,'His band & the Street Choir','Van Morrison',12,42,22,0,126},
  {118,'Moondance','Van Morrison',10,39,17,0,118},
  {274,'Peloton','The Delgados',11,48,15,0,275},
  {485,'Heathen','David Bowie',12,51,43,0,67},
  {233,'Back On Top','Van Morrison',10,52,25,0,234},
  {176,'Between Thought And Expression Volume 1','Lou Reed',15,74,24,0,176},
  {641,'Sand In The Vaseline (Disc 2)','Talking Heads',15,67,53,0,101},
  {643,'Sand In The Vaseline (Disc 1)','Talking Heads',18,72,16,0,195},
  {344,'Dog Man Star','Suede',12,57,59,0,345},
  {394,'Stephen Malkmus','Stephen Malkmus',12,41,43,0,395},
  {104,'My Iron Lung EP','Radiohead',8,28,27,0,104},
  {321,'"Listen Listen"','Sandy Denny',17,74,31,0,322},
  {572,'The Sun Is Often Out','Longpigs',12,63,27,0,36},
  {644,'Come On Die Young','Mogwai',12,67,39,0,219},
  {331,'The Complete Stone Roses','The Stone Roses',21,73,51,0,332},
  {632,'The Remote Part','Idlewild',11,38,18,1,44},
  {180,'Misc','Misc',17,70,9,0,180},
  {697,'O','Damien Rice',10,61,25,1,91},
  {392,'Overcome By Happiness','Pernice Brothers',12,39,8,0,393},
  {172,'West','Mark Eitzel',12,53,35,0,172},
  {83,'Hips & Makers','Kristin Hersh',15,50,30,0,83},
  {301,'Leftism','Leftfield',11,69,46,0,302},
  {296,'A Storm In Heaven','The Verve',10,47,5,0,297},
  {229,'13','Blur',13,66,52,0,230},
  {48,'MTV Unplugged','Bob Dylan',12,69,23,0,48},
  {3,'Lost Souls','Doves',12,59,18,0,3},
  {542,'Bloodflowers','The Cure',9,58,9,0,6},
  {360,'Big Calm','Morcheeba',11,46,49,0,361},
  {265,'XO','Elliot Smith',14,44,46,0,266},
  {86,'Blue Bell Knoll','Cocteau Twins',10,35,19,0,86},
  {401,'Free All Angels','Ash',13,48,30,0,239},
  {660,'Sweet Little Mysteries: The Island Anthology (Disc 2)','John Martyn',16,75,30,0,107},
  {658,'Sweet Little Mysteries: The Island Anthology (Disc 1)','John Martyn',18,78,51,1,60},
  {727,'Feels Like Home','Norah Jones',13,46,24,1,118},
  {692,'Sweet Liberty','Cara Dillon',12,55,27,1,87},
  {423,'Cohen Leonard (Ten New Songs)','Leonard Cohen',10,52,49,0,300},
  {130,'No Angle','Dido',12,52,7,0,130},
  {653,'Wonderland','The Charlatans',12,57,29,1,55},
  {234,'Bob Dylan Live 1961-2000 `Thirty eight years of great concert performances','Bob Dylan',16,72,57,0,235},
  {389,'White Ladder','David Gray',10,50,41,0,390},
  {231,'Central Resevation','Beth Orton',12,58,59,0,232},
  {552,'Eternal Life','Jeff Buckley',4,21,41,0,16},
  {592,'Natural History','I Am Kloot',12,43,5,0,380},
  {168,'Blue Sky On Mars','Matthew Sweet',12,36,38,0,168},
  {239,'Knock Knock','Smog',10,42,47,0,240},
  {275,'C`mon Kids','The Boo Radleys',13,52,47,0,276},
  {53,'days like this','Van Morrison',12,58,11,0,53},
  {374,'Blue','Joni Mitchell',10,36,15,0,375},
  {259,'Celebrity Skin','Hole',12,50,30,0,260},
  {531,'Skimskitta','Mira Calix',21,61,16,1,9},
  {686,'Hot Shit!','Quasi',11,44,14,1,82},
  {553,'Crow Sit On Blood Tree','Graham Coxon',12,50,34,0,17},
  {175,'Bring it Down','Madder Rose',13,49,59,0,175},
  {277,'Try Whistling This','Neil Finn',13,54,46,0,278},
  {689,'Blacklisted','Neko Case',14,39,50,1,84},
  {630,'Advertisements For Myself','Brave Captain',19,56,14,1,42},
  {311,'Snivilisation','Orbital',10,75,11,0,312},
  {650,'Quiet Is The New Loud','Kings Of Convenience',12,45,5,1,52},
  {588,'Slow Riot For New Zero Kanada','Godspeed You Black Emperor!',2,28,39,0,203},
  {171,'"Curtains"','Tindersticks',15,60,14,0,171},
  {589,'All Things Must Pass (Disc One)','George Harrison',14,60,3,0,243},
  {333,'Nevermind','Nirvana',12,59,23,0,334},
  {213,'Zeppelin','Zeppelin',14,71,35,0,214},
  {462,'Holes In The Wall','The Electric Soft Parade',12,55,52,0,182},
  {446,'Show Time','Ry Cooder',8,43,29,0,400},
  {281,'The Philosopher`s Stone (Disc 1)','Van Morrison',15,77,57,0,282},
  {280,'The Philosopher`s Stone - CD2','Van Morrison',15,75,28,0,281},
  {367,'Boy Child (remastered)','Scott Walker',20,70,33,0,368},
  {327,'So Tonight that I Might See','Mazzy Star',10,51,41,0,328},
  {456,'Insignificance','Jim O`Rourke',7,38,27,0,263},
  {346,'Park Life','Blur',16,52,55,0,347},
  {51,'Vivadixiesubmarinetransmissionplot','Sparklehorse',16,47,30,0,51},
  {670,'Quixotic','Martina Topley Bird',13,51,10,1,68},
  {674,'Yoshimi Battles The Pink Robots','Flaming Lips',11,47,30,1,72},
  {139,'Urban Hymns','The Verve',13,76,0,0,139},
  {326,'Live Through This','Hole',12,38,21,0,327},
  {349,'pablo honey','Radiohead',12,42,12,0,350},
  {235,'Whitechocolatespaceegg','Liz Phair',16,51,21,0,236},
  {322,'Blues History (Disc 4)','Various Artists',14,39,1,0,323},
  {323,'Blues History (Disc 3)','Various Artists',14,44,37,0,324},
  {324,'Blues History (Disc 2)_','Various Artists',14,39,47,0,325},
  {325,'Blues History (Disc 1)','Various Artists',14,41,46,0,326},
  {303,'Everything`s Alright Forever','The Boo Radleys',14,50,9,0,304},
  {619,'Everything Is Ending Here','Various Artists',18,65,53,1,31},
  {620,'Everything Is Ending Here','Aa. Vv.',18,64,18,1,32},
  {351,'A Northern Soul','The Verve',12,64,9,0,352},
  {123,'I Can Hear the Heart Beating as One','Yo La Tengo',16,68,20,0,123},
  {115,'From The Mudy Banks Of The Wishkah','Nirvana',17,54,3,0,115},
  {594,'Kill The Moonlight','Spoon',12,34,55,1,22},
  {533,'I Am The Messiah','MC Honky',13,46,22,1,11},
  {726,'I Am The Fun Blame Monster!','Menomena',9,44,30,1,117},
  {72,'Bring The Family','John Hiatt',10,45,34,0,72},
  {527,'Woven Hand','Woven Hand',10,40,43,1,4},
  {382,'Go With Yourself','Brave Captain',9,39,24,0,383},
  {183,'Bandwagonesque','Teenage Fanclub',12,42,56,0,184},
  {628,'Don`t Give Up On Me','Solomon Burke',11,51,40,1,40},
  {487,'The Beginning Stages Of...','The Polyphonic Spree',10,68,26,0,150},
  {116,'The Magical World Of The Strands','Michael Head',11,51,18,0,116},
  {411,'Y`All Get Scared Now Ya Hear!','The Reindeer Section',14,40,27,0,292},
  {146,'Talking Timbuktu','Ali Farka Toure with Ry Cooder',10,60,10,0,146},
  {605,'Washing Machine','Sonic Youth',11,68,24,0,144},
  {356,'Achtung Baby','U2',12,55,30,0,357},
  {642,'Staring At The Sea: The Singles 1979-1985','The Cure',17,62,1,0,145},
  {282,'Beautiful Maladies','Tom Waits',23,74,0,0,283},
  {548,'Beautiful Freak','Eels',12,43,59,0,12},
  {208,'The Soft Bulletin','The Flaming Lips',14,58,17,0,209},
  {635,'Drawn From Memory','Embrace',11,48,13,0,308},
  {597,'Paws','Four Tet',4,20,55,1,25},
  {460,'The Infotainment Scan','The Fall',12,50,7,0,106},
  {58,'Veedon Fleece','Van Morrison',10,47,29,0,58},
  {618,'Up In Flames','Manitoba',10,39,5,1,30},
  {75,'Finn','Finn',11,38,29,0,75},
  {197,'Lovelife','Lush',12,45,59,0,198},
  {228,'Best Of David Bowie 1969-1974','David Bowie',20,77,46,0,229},
  {684,'I Believe','Tim Burgess',11,36,42,1,80},
  {257,'Bernadette and the Salesman','Vic Chestnutt',14,54,54,0,258},
  {693,'Come Get Some','Willis',13,48,32,1,88},
  {429,'Happiness','Fridge',9,59,30,0,291},
  {419,'22 Miles Of Hard Road','Eels',4,15,56,0,398},
  {287,'Sketches for My Sweetheart The Drunk (Disc One)','Jeff Buckley',10,43,20,0,288},
  {286,'Sketches for My Sweetheart The Drunk (Disc 2)','Jeff Buckley',11,54,12,0,287},
  {386,'It Takes A Nation Of Millions To Hold Us Back','Public Enemy',16,57,59,0,387},
  {201,'Remasters (Disc 1)','Led Zeppelin',15,72,56,0,202},
  {616,'Come Here When You Sleepwalk','Clue To Kalo',10,58,1,1,28},
  {512,'From Here On In','South',16,70,12,0,221},
  {245,'Deserter`s Songs','Mercury Rev',12,44,46,0,246},
  {169,'Teenager of the Year','Frank Black',22,62,53,0,169},
  {573,'Together Alone','Crowded House',13,51,41,0,37},
  {729,'Sweet England','Jim Moray',10,46,43,1,120},
  {165,'Brighten The Corners','Pavement',12,46,18,0,165},
  {388,'Thirteen Tales From Urban Bohemia','The Dandy Warhols',13,56,13,0,389},
  {94,'The Queen is Dead','The Smiths',10,37,6,0,94},
  {433,'{ Rotten Apples } The Smashing Pumpkins Greatest Hits','Smashing Pumpkins',18,76,12,0,227},
  {538,'Lemonjelly.ky','Lemon Jelly',9,67,28,1,17},
  {207,'Dead Bees On A Cake','David Sylvian',14,70,6,0,208},
  {186,'Andromeda Heights','Prefab Sprout',12,47,10,0,187},
  {725,'Educated Guess','Ani DiFranco',14,48,20,1,116},
  {432,'Selected Ambient Works 85-92','Aphex Twin',13,74,46,0,205},
  {353,'Like Weather','Leila',13,48,22,0,354},
  {707,'Deb (Heart Broken)','Souad Massi',12,49,32,1,101},
  {454,'On Fire','Galaxie 500',13,51,58,0,155},
  {715,'Goodbye','Ben And Jason',9,36,38,1,107},
  {685,'Show Me Your Tears','Frank Black & The Catholics',13,41,36,1,81},
  {560,'Midnite Vultures','Beck',11,58,26,0,24},
  {105,'we love the city','Hefner',12,51,25,0,105},
  {590,'No More Shall We Part','Nick Cave And The Bad Seeds',12,67,47,0,305},
  {695,'Marquee Moon','Television',13,77,27,1,90},
  {584,'Strange Little Girls','Tori Amos',12,62,11,0,50},
  {447,'We Love Life','Pulp',11,54,2,0,399},
  {705,'Stumble Into Grace','Emmylou Harris',11,45,16,1,98},
  {638,'You Are Free','Cat Power',14,52,53,1,13},
  {295,'Siamese Dream','Smashing Pumpkins',13,62,17,0,296},
  {624,'Endtroducing....','DJ Shadow',16,63,4,1,36},
  {696,'The Modern Lovers','The Modern Lovers',17,62,18,1,92},
  {69,'Screamadelica','Primal Scream',11,65,13,0,69},
  {267,'Hillside Album','Arnold',14,53,3,0,268},
  {222,'Twisted Tenderness','Electronic',11,61,50,0,223},
  {565,'Crooked Rain Crooked Rain','Pavement',12,42,28,0,29},
  {187,'Now And In Time To Be','Various Artists',14,43,10,0,188},
  {140,'Altered Beast','Matthew Sweet',15,56,6,0,140},
  {546,'The Facts Of Life','Black Box Recorder',11,39,49,0,10},
  {728,'Instinct','Mandalay',11,55,53,1,119},
  {143,'The Secret Life Of The Waterboys (81-85)','The Waterboys',15,75,46,0,143},
  {666,'Piano Creeps','Mary Lorson & Billy Coté',12,53,26,1,59},
  {596,'Country Music','various',10,38,57,1,24},
  {637,'Calexico','Calexico',34,64,44,0,342},
  {656,'The Decline Of British Sea Power (Promo)','British Sea Power',11,47,19,1,57},
  {652,'Souljacker','Eels',12,40,33,1,54},
  {581,'The Dock Of The Bay','Otis Redding',20,57,42,0,45},
  {184,'BoneMachine','Tom Waits',16,53,44,0,185},
  {525,'Metro Chicago 14th September 2002','Wire',10,37,39,1,2},
  {676,'Avalanche','Thea Gilmore',12,46,52,1,74},
  {719,'Tracy Chapman Collection','Tracy Chapman',16,72,53,1,111},
  {574,'Woodface','Crowded House',14,48,13,0,38},
  {330,'Elastica','Elastica',15,38,8,0,331},
  {211,'Whereabouts','Ron Sexsmith',12,39,13,0,212},
  {164,'Blur','Blur',14,57,1,0,164},
  {195,'Delta Blues - Volume 1','Robert Johnson',16,43,43,0,196},
  {92,'Copper Blue','Sugar',10,45,8,0,92},
  {440,'White Blood Cells','White Stripes',16,40,33,0,142},
  {639,'Frank Black','Frank Black',15,46,31,0,2},
  {170,'Nine Objects Of Desire','SuzanneVega',12,39,4,0,170},
  {81,'George Best','The Wedding Present',14,42,33,0,81},
  {606,'Heidi Berry','Heidi Berry',11,46,34,0,159},
  {610,'Star','Belly',15,51,1,0,224},
  {603,'Tiny Waves Mighty Sea','Future Pilot AKA',13,44,14,0,122},
  {163,'The Boatman`s Call','Nick Cave and the Bad Seeds',12,52,14,0,163},
  {136,'The Beatles - Anthology Vol 2 (Disc 2)','The Beatles',20,64,21,0,136},
  {681,'This Nation`s Saving Grace','The Fall',16,65,53,1,78},
  {381,'All that you can`t leave behind','U2',12,53,5,0,382},
  {354,'1977','Ash',12,68,30,0,355},
  {621,'The Pearl','Harold Budd and Brian Eno',11,42,52,1,33},
  {250,'Nu-Clear Sounds','Ash',11,46,16,0,251},
  {540,'Sea Change','Beck',12,52,24,1,19},
  {535,'Evan Dando - Baby I`m Bored','Evan Dando',12,38,0,1,14},
  {694,'Spoon and Rafter','Mojave 3',10,51,1,1,89},
  {178,'The Grand Parade','The Frank & Walters',12,46,15,0,178},
  {193,'Magic And Loss','Lou Reed',14,58,37,0,194},
  {383,'Faith and Courage','Sinéad O`Connor',13,55,59,0,384},
  {342,'Olympian','Gene',11,40,39,0,343},
  {309,'American Beauty','Grateful Dead',10,42,28,0,310},
  {711,'Human Amusements At Hourly Rates','Guided By Voices',32,77,28,1,99},
  {523,'Nocturama','Nick Cave And The Bad Seeds',10,56,29,1,7},
  {166,'The Healing Game','Van Morrison',10,53,44,0,166},
  {640,'Four-Calendar Café','Cocteau Twins',10,41,32,0,90},
  {631,'Original Pirate Material','The Streets',14,47,29,1,43},
  {363,'Stop Making Sense - Special New Edition','Talking Heads',16,74,26,0,364},
  {629,'Daybreaker','Beth Orton',10,51,17,1,41},
  {76,'Pink Flag','Wire',23,39,33,0,76},
  {413,'Get Ready','New Order',10,50,56,0,313},
  {406,'Amnesiac','Radiohead',11,43,57,0,204},
  {662,'Vulnerable','Tricky',13,44,31,1,62},
  {721,'Catalpa','Jolie Holland',12,51,0,1,112},
  {236,'I See a Darkness','Bonnie prince Billy',11,37,58,0,237},
  {256,'Live 1966 1/2','Bob Dylan',7,48,18,0,257},
  {253,'Live 1966 (Disc 2 Of 2)','Bob Dylan',8,47,5,0,254},
  {273,'Oxford`s Angels - Non album tracks & rarities `92-`95','Radiohead',23,73,52,0,274},
  {141,'If You`re Feeling Sinister','Belle and Sebastian',10,41,24,0,141},
  {185,'Tellin` Stories','Charlatans',11,47,3,0,186},
  {691,'Talkin` Honky Blues','Buck 65',18,57,17,1,86},
  {549,'Wheat is Murder','Wheat',4,21,28,0,13},
  {240,'either/or','Elliot Smith',12,36,59,0,241},
  {247,'UP','R.E.M.',14,64,44,0,248},
  {563,'Title','Various Artists',13,42,33,0,27},
  {626,'Alice','Tom Waits',15,48,23,1,38},
  {568,'Blood','This Mortal Coil',21,76,26,0,32},
  {284,'Munki','The Jesus & Mary Chain',17,69,32,0,285},
  {196,'SUEDE','Suede',11,45,43,0,197},
  {355,'Dirty','Sonic Youth',15,59,8,0,356},
  {395,'Since','Richard Buckner',16,37,4,0,396},
  {377,'Kid A','Radiohead',10,49,59,0,378},
  {343,'Dummy','Portishead',10,45,36,0,344},
  {505,'Pixies','Pixies',9,18,11,0,100},
  {88,'Harvest','Neil Young',10,37,34,0,88},
  {688,'Levity','Mark Oliver Everett',14,35,22,1,83},
  {558,'Nixon','Lambchop',10,49,47,0,22},
  {258,'Get In','Kenickie',12,56,29,0,259},
  {723,'Failer','Kathleen Edwards',10,41,15,1,114},
  {272,'Aleyn','June Tabor',12,62,21,0,273},
  {212,':blues','Jimi Hendrix',11,72,29,0,213},
  {125,'Grace','Jeff Buckley',10,51,48,0,125},
  {68,'Wah Wah','James',23,68,20,0,68},
  {294,'Laugh','Hall Terry',10,40,51,0,295},
  {647,'76 14','Global Communication',10,76,15,1,49},
  {60,'Garbage','Garbage',12,51,7,0,60},
  {654,'Pause','Four Tet',11,43,6,1,56},
  {526,'Rounds','Four Tet',10,45,26,1,3},
  {617,'Square','Buck 65',4,61,3,1,29},
  {587,'Debut','Björk',11,48,25,0,119},
  {158,'Odelay','Beck',15,59,25,0,158},
  {651,'Amber','Autechre',11,74,27,1,53},
  {84,'Mercury','American Music Club',14,49,43,0,84},
  {668,'Youth & Young Manhood','Kings Of Leon',11,46,6,1,67},
  {708,'Stars & Topsoil: A Collection (1982-1990)','Cocteau Twins',18,72,20,1,102},
  {297,'Brutal Youth','Elvis Costello',15,57,24,0,298},
  {391,'Closer You Get','Six By Seven',12,44,26,0,392},
  {555,'It`s A Wonderful Life [Europe]','Sparklehorse',12,60,33,0,19},
  {47,'Mystery White Boy','Jeff Buckley',12,78,37,0,47},
  {466,'When I was Cruel','Elvis Costello',16,65,57,0,192},
  {559,'Us And Us Only','The Charlatans',11,52,22,0,23},
  {206,'Terror Twilight','Pavement',11,44,16,0,207},
  {254,'Out Of Tune','Mojave 3',9,39,50,0,255},
  {426,'Return To The Last Chance Saloon','The Bluetones',13,62,49,0,317},
  {80,'Welcome to the Cruel World','Ben Harper',13,53,21,0,80},
  {384,'Things To Make And Do','Moloko',18,68,28,0,385},
  {320,'10 All Time Favorite Soul Tracks','Various Artists',10,30,14,0,321},
  {633,'Love & Theft','Bob Dylan',12,57,30,1,45},
  {366,'Around The World In A Day','Prince And The Revolution',9,42,35,0,367},
  {133,'Beyond The Sun','Billy MacKenzie',10,44,2,0,133},
  {97,'(what`s The Story) Morning Glory-','Oasis',12,50,13,0,97},
  {244,'Before The Calm','Witness',11,44,3,0,245},
  {59,'Life Is Sweet','Maria McKee',12,50,38,0,59},
  {625,'Murray Street','Sonic Youth',7,45,41,1,37},
  {77,'60 Watt Silver Lining','Mark Eitzel',12,54,16,0,77},
  {511,'Surfer Rosa & Come on Pilgrim','Pixies',22,54,3,0,370},
  {701,'Rock N Roll','Ryan Adams',15,52,21,1,94},
  {359,'Simple Pleasure','Tindersticks',9,43,36,0,360},
  {332,'Sharks Patrol These Waters','Various Artists',21,76,6,0,333},
  {334,'Sharks Patrol These Waters - The Best Of Volume Too [disc two]','Various Artists',22,79,25,0,335},
  {279,'Common One','Van Morrison',6,55,4,0,280},
  {607,'One By One','Foo Fighters',11,55,4,0,183},
  {438,'Pieces Of You','Jewel',15,62,34,0,89},
  {677,'A Cast Of Thousands','Elbow',11,50,9,1,75},
  {120,'A Life Of Surprises (Best Of)','Prefab Sprout',16,65,43,0,120},
  {716,'A Bowl Of Chalk','Nicola Hitchcock',12,45,43,1,108},
  {636,'A Rush Of Blood To The Head','Coldplay',11,54,12,1,47},
  {5,'And Then Nothing Turned Itself Inside-Out','Yo La Tengo',13,77,38,0,5},
  {678,'Up All Night','The Waifs',12,47,44,1,76},
  {308,'Rid of Me','P J Harvey',14,48,14,0,309},
  {348,'Modern Life Is Rubbish','Blur',14,58,57,0,349},
  {375,'Street Legal','Bob Dylan',9,50,26,0,376},
  {585,'Trompe Le Monde','Pixies',15,39,6,0,63},
  {672,'In The Land Of Grey And Pink','Caravan',10,74,45,1,70},
  {422,'Live à l`Olympia','Jeff Buckley',11,66,33,0,299},
  {402,'Asleep In The Back','Elbow',11,58,2,0,340},
  {623,'Yankee Hotel Foxtrot','Wilco',11,51,49,1,35},
  {556,'Mobile Home','Longpigs',13,54,1,0,20},
  {455,'If You Happy With You Need Nothing','Alfie',11,47,21,0,161},
  {113,'Common Ground - Voices Of Modern Irish Music','Various Artists',13,58,19,0,113},
  {370,'What`s Going On','Marvin Gaye',9,35,35,0,371},
  {285,'He Got Game','Public Enemy',13,48,17,0,286},
  {152,'Fossil Fuel The Xtc Singles 77-92 - CD 2','XTC',15,58,4,0,152},
  {153,'Fossil Fuel : The XTC Singles 77-92 - CD 1','XTC',16,59,54,0,153},
  {648,'Double Figure','Plaid',19,70,8,1,50},
  {702,'Son Of Evil Reindeer','The Reindeer Section',12,40,48,1,95},
  {205,'Debt & Departure','Those Bastard Souls',11,50,9,0,206},
  {731,'Little Criminals','Randy Newman',12,38,39,1,122},
  {338,'Second Coming','The Stone Roses',99,78,41,0,339},
  {368,'Do The Collapse','Guided By Voices',16,43,55,0,369},
  {181,'At The Club','Kenickie',14,50,41,0,181},
  {564,'Beyond Boundaries - Guitar Solos','Michael Hedges',19,64,49,0,28},
  {578,'Trains Boats And Planes','Frank And Walters',11,37,19,0,42},
  {200,'Way To Blue','Nick Drake',16,62,12,0,201},
  {378,'Little Black Numbers','Kathryn Williams',12,43,52,0,379},
  {371,'Beauty Becomes More Than Life','The Frank And Walters',13,54,30,0,372},
  {270,'At the BBC','Pixies',15,35,27,0,271},
  {706,'Monday at the Hug & Pint','Arab Strap',13,45,53,1,100},
  {268,'Scraps At Midnight','Mark Lanegan',10,40,39,0,269},
  {583,'Stoned And Dethroned','The Jesus & Mary Chain',17,49,0,0,49},
  {732,'Madman Across The Water','Elton John',9,45,20,1,123},
  {473,'Melody A.M.','Royksopp',10,46,32,0,91},
  {266,'A Tune A Day','THE SUPERNATURALS',14,48,19,0,267},
  {545,'Figure 8','Elliott Smith',16,52,15,0,9},
  {665,'Decade (Disc 2)','Neil Young',19,71,7,1,64},
  {664,'Decade (Disc 1)','Neil Young',16,73,22,1,63},
  {350,'Airbag - How Am I Driving','Radiohead',7,25,38,0,351}
], AlbumRecordDef );

albumTable := DATASET(prefix + 'albums.d00',{AlbumRecordDef,UNSIGNED8 filepos {virtual(fileposition)}},FLAT);

/*
// single key
albumIndex := INDEX(albumTable,{ Artist, Title, filepos }, prefix + 'albums.key');

SEQUENTIAL(
  OUTPUT(ds,,prefix + 'albums.d00',OVERWRITE),
  BUILDINDEX(albumIndex,OVERWRITE),
  OUTPUT(albumIndex)
);
*/

albumIndex1 := INDEX(albumTable(Tracks<=4),{ Artist, Title, filepos }, prefix + 'albums1.key');
albumIndex2 := INDEX(albumTable((Tracks>4)AND(Tracks<8)),{ Artist, Title, filepos }, prefix + 'albums2.key');
albumIndex3 := INDEX(albumTable((Tracks>=8)AND(Tracks<12)),{ Artist, Title, filepos }, prefix + 'albums3.key');
albumIndex4 := INDEX(albumTable((Tracks>=12)AND(Tracks<20)),{ Artist, Title, filepos }, prefix + 'albums4.key');
albumIndex5 := INDEX(albumTable(Tracks>=20),{ Artist, Title, filepos }, prefix + 'albums5.key');
albumIndex  := INDEX(albumTable,{ Artist, Title, filepos }, prefix + 'superalbums.key');
albumIndexFew1 := INDEX(albumTable(Tracks<=10), { Artist, Title, filepos }, prefix + 'albums-few1.key', SORTED);
albumIndexFew2 := INDEX(albumTable(Tracks>10), { Artist, Title, filepos }, prefix + 'albums-few2.key', SORTED);
albumIndexSuperFew1  := INDEX(albumTable, { Artist, Title, filepos }, prefix + 'superalbums-few1.key', SORTED);
albumIndexSuperFew2  := INDEX(albumTable, { Artist, Title, filepos }, prefix + 'superalbums-few2.key');

SEQUENTIAL(
  OUTPUT(ds,,prefix + 'albums.d00',OVERWRITE),
  FileServices.DeleteSuperFile(prefix + 'superalbums.key'),
  FileServices.DeleteSuperFile(prefix + 'superalbums-sub.key'),
  FileServices.DeleteSuperFile(prefix + 'superalbums-sub-sub.key'),
  FileServices.DeleteSuperFile(prefix + 'superalbums-few1.key'),
  FileServices.DeleteSuperFile(prefix + 'superalbums-few2.key'),
  BUILDINDEX(albumIndex3,OVERWRITE),
  BUILDINDEX(albumIndex1,OVERWRITE,DISTRIBUTE(albumIndex3)),
  BUILDINDEX(albumIndex2,OVERWRITE,DISTRIBUTE(albumIndex3)),
  BUILDINDEX(albumIndex4,OVERWRITE,DISTRIBUTE(albumIndex3)),
  BUILDINDEX(albumIndex5,OVERWRITE,DISTRIBUTE(albumIndex3)),
  BUILDINDEX(albumIndexFew1,OVERWRITE,FEW),
  BUILDINDEX(albumIndexFew2,OVERWRITE,FEW),

  FileServices.CreateSuperFile(prefix + 'superalbums.key'),
  FileServices.StartSuperFileTransaction(),
  FileServices.AddSuperFile(prefix + 'superalbums.key',prefix + 'albums1.key'),
  FileServices.AddSuperFile(prefix + 'superalbums.key',prefix + 'albums2.key'),
  FileServices.AddSuperFile(prefix + 'superalbums.key',prefix + 'albums3.key'),
  FileServices.AddSuperFile(prefix + 'superalbums.key',prefix + 'albums4.key'),
  FileServices.AddSuperFile(prefix + 'superalbums.key',prefix + 'albums5.key'),
  FileServices.FinishSuperFileTransaction(),
  OUTPUT(SORT(albumIndex(Artist<'Pixies')+albumIndex(Artist='Pixies')+albumIndex(Artist>'Pixies' AND Artist<'Radiohead')
              +albumIndex(Artist='Radiohead')+albumIndex(Artist>'Radiohead'),Artist,Title,filepos)),
//  OUTPUT(SORTED(albumIndex)),
  FileServices.StartSuperFileTransaction(),
  FileServices.RemoveSuperFile(prefix + 'superalbums.key',prefix + 'albums2.key'),
  FileServices.RemoveSuperFile(prefix + 'superalbums.key',prefix + 'albums4.key'),
  FileServices.RemoveSuperFile(prefix + 'superalbums.key',prefix + 'albums3.key'),
  FileServices.FinishSuperFileTransaction(),
  OUTPUT(SORT(FETCH(albumTable, albumIndex, RIGHT.filepos),Title,filepos));

  FileServices.ClearSuperFile(prefix + 'superalbums.key');
  FileServices.CreateSuperFile(prefix + 'superalbums-sub.key');
  FileServices.CreateSuperFile(prefix + 'superalbums-sub-sub.key');
  FileServices.AddSuperFile(prefix + 'superalbums.key',prefix + 'albums1.key'),
  FileServices.AddSuperFile(prefix + 'superalbums-sub-sub.key',prefix + 'albums2.key'),
  FileServices.AddSuperFile(prefix + 'superalbums-sub-sub.key',prefix + 'albums3.key'),
  FileServices.AddSuperFile(prefix + 'superalbums-sub-sub.key',prefix + 'albums4.key'),
  FileServices.AddSuperFile(prefix + 'superalbums-sub-sub.key',prefix + 'albums5.key'),
  FileServices.AddSuperFile(prefix + 'superalbums-sub.key', prefix + 'superalbums-sub-sub.key');
  FileServices.AddSuperFile(prefix + 'superalbums.key', prefix + 'superalbums-sub.key');

  OUTPUT(SORT(albumIndex(Artist='Pixies'), Artist, Title, filepos));

  FileServices.CreateSuperFile(prefix + 'superalbums-few1.key'),
  FileServices.StartSuperFileTransaction(),
  FileServices.AddSuperFile(prefix + 'superalbums-few1.key',prefix + 'albums-few1.key'),
  FileServices.FinishSuperFileTransaction(),

  OUTPUT(SORT(albumIndexSuperFew1(Artist='Pixies'), Artist, Title, filepos));

  FileServices.CreateSuperFile(prefix + 'superalbums-few2.key'),
  FileServices.StartSuperFileTransaction(),
  FileServices.AddSuperFile(prefix + 'superalbums-few2.key',prefix + 'albums-few1.key'),
  FileServices.AddSuperFile(prefix + 'superalbums-few2.key',prefix + 'albums-few2.key'),
  FileServices.FinishSuperFileTransaction(),

  OUTPUT(SORT(albumIndexSuperFew2(Artist='Pixies'), Artist, Title, filepos));
);

