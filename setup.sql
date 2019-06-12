DROP TABLE users;
DROP TABLE naturgeister;
DROP TABLE daemonen;
DROP TABLE flug;
DROP TABLE wasser;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    username TEXT NOT NULL,
    email TEXT NOT NULL,
    password TEXT NOT NULL
);

SELECT * FROM users;



CREATE TABLE naturgeister (

      id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    eigen TEXT NOT NULL,
    ort TEXT NOT NULL,
    staerke TEXT NOT NULL,
    schwaeche TEXT NOT NULL,
    tipps TEXT NOT NULL
);


CREATE TABLE daemonen (

   id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    eigen TEXT NOT NULL,
    ort TEXT NOT NULL,
    staerke TEXT NOT NULL,
    schwaeche TEXT NOT NULL,
    tipps TEXT NOT NULL
);

CREATE TABLE wasser (

   id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    eigen TEXT NOT NULL,
    ort TEXT NOT NULL,
    staerke TEXT NOT NULL,
    schwaeche TEXT NOT NULL,
    tipps TEXT NOT NULL
);

CREATE TABLE flug (

    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    eigen TEXT NOT NULL,
    ort TEXT NOT NULL,
    staerke TEXT NOT NULL,
    schwaeche TEXT NOT NULL,
    tipps TEXT NOT NULL
);

CREATE TABLE favoriten (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    eigen TEXT NOT NULL,
    ort TEXT NOT NULL,
    staerke TEXT NOT NULL,
    schwaeche TEXT NOT NULL,
    tipps TEXT NOT NULL
);


INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Troll",
"Eigenschaften:
- Größe: Spanne von 15 - 20
- Gewicht: 500 - 1000 ",
"Vorkommen:
- in den tiefen Wäldern von Silva
  halten sich gerne in Höhlen auf",
"Stärken:
- kann sehr Überwältigend wirken auf Gegner
- treue Seele dem Besitzer gegenüber",
"Schwäche:
- in der Bewegung nicht flexibel
- geistig schnell verletzbar",
"Tipp:
um so tiefer die Bindung zum Troll
desto stärker und motivierter wird er!");

INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Fee",
"Eigenschaften:
- Größe: Spanne von 10 - 15 cm
- Gewicht: bis zu 300 g",
"Vorkommen:
- in den tiefen Wäldern von Silva
- halten sich gerne an Baumstümpfen auf",
"Stärken:
- flink im fliegen
- besitzt Giftsporen auf den Flügeln",
"Schwäche:
- sehr zerbrechlich!",
"Tipp:
Starke Gegner sollten umgehend vermieden werden,
da die Fee sofort sterben würde.");

INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Gnom",
"Eigenschaften:
- Größe: Spanne von 70-100 cm
- Gewicht: bis zu 50 kg",
"Vorkommen
- bevorzugen die Ländliche Umgebung",
"Stärken
- magische Kräfte",
"Schwäche
- nicht besonders intelligent
- leben einfach in den Tag hinein",
"Tipp:
Gnome können wertvolle Kämpfer sein,
jedoch muss viel Zeit investiert werden.
Hierbei kann ein Zaubertrank helfen, wodurch
seine intelligenz erhöht werden kann! ");

INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Gamon",
"Eigenschaften:
- Größe: Spanne von 4 - 6 m
- Gewicht: bis zu 2 Tonnen",
"Vorkommen
- in den tiefen Wäldern von Graya
- halten sich gerne an Seen und Bäumen auf",
"Stärken
- sehr kräftig</p>
- scharfe, dicke Krallen durchdringen jede Art von Gegner",
"Schwäche
- lassen sich leicht durch Essen abklenken",
"Tipp:
Füttere dein Gamon ausreichend.
So vermeidest du, dass er abgelenkt wird.");

INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Kobold",
"Eigenschaften:
- Größe: Spanne von 70-100 cm
- Gewicht: bis zu 50 kg",
"Vorkommen
- wohnen versteckt in den Häusern der Menschen",
"Stärken
- magische Kräfte",
"Schwäche
- nervensäge
- benötigen rund um die Uhr Beschäftigung",
"Tipp:
Halte deinen Kobold nie allein!
So musst du deinen Kobold nicht ständig
beschäftigen und hast mehr Zeit.");


INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Oger",
"Eigenschaften:
- Größe: Spanne von 2 - 3 m
- Gewicht: bis zu 300 kg",
"Vorkommen
- bewohnen oft Ruinen, verlassene Bauten oder Höhlen",
".quiStärken
- beeindruckende Muskelkraft",
"Schwäche
- nicht besonders intelligent
- sind leicht durch Magie zu beeinflussen",
"Tipp:
Oger essen alles was kleiner ist als sie selbst.
Besonders lieben sie Menschenfleisch, also lieber
die Finger von ihnen lassen!");



INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Elfe",
"Eigenschaften:
- Größe: Spanne von 10 - 15 cm
- Gewicht: bis zu 150 g",
"Vorkommen
- in den tiefen Wäldern von Graya
- leben in den Baumkronen",
"Stärken
- Besitzt heilende Zauberkräfte und kann
- somit Kameraden und sich selber stätig heilen.",
"Schwäche
- Lebensbedrohliche Wunden lassen sich durch die Kräfte
  nur bedingt heilen.",
"Tipp:
Elfen sind zum kämpfen nicht geeignet.
Jedoch sind sie in jeder Sammlung ein muss!");



INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Waldgeist",
"Eigenschaften:
- Größe: Nicht bekannt
- Gewicht: Nicht bekannt",
"Vorkommen
- Wahrscheinlich in allen Wäldern der Welt",
"Stärken
- herrscht über die Wälder",
"Schwäche
- Massenvernichtung des Waldes
- Der Waldgeist schafft es dadurch nicht 
- den Wald zu regenerieren",
"Tipp:
Sie wurden noch nie gesichtet. Also halte
die Augen stets offen. Sie sind die herrscher der
Wälder und dadurch sehr starke Kameraden!");




INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Werwolf",
"Eigenschaften:
- Größe: Spanne von 70 - 150 cm
- Gewicht: bis zu 200 kg",
"Vorkommen
- in den Wäldern nahe der Menschen",
"Stärken
- der Tod ist nur durch eine Silberkugel möglich
- übernatürlich stark und schnell",
"Schwäche
- verlieren in der Wut schnell die Kontrolle",
"Tipp:
Vorsicht! Werwölfe sind Menschenwandler.
Denk also zwei mal nach bevor du einen 
Werwolf tötest. Setze ihn lieber erstmal außer gefecht.");



INSERT INTO naturgeister(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Yeti",
"Eigenschaften:
- Größe: bis zu 3 m 
- Gewicht: bis zu 400 kg",
"Vorkommen
- Leben in der Arktis
- bevorzugen 5000–7000 Meter Höhe",
"Stärken
- sehr kräftig
- spüren keine Kälte",
"Schwäche
- nicht besonders schnell, aufgrund der
  übergroßen Füße.",
"Tipp:
Yetis sind in der Nacht am aktivsten.");




SELECT * FROM naturgeister;


INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Abbadon",
"Eigenschaften:
- Größe: bis zu 3 m
- Gewicht: 100 kg",
"Vorkommen::
- Hält sich gerne in stillen Vulkanen auf",
"Stärke::
- Abbadon ist der Engel des Abgrunds.
  Er ist somit in der Lage jeden in schwere
  Depression zu versetzen.",
"Schwäche:
- kann keine Freude empfinden, somit
- immer lustlos und unmotiviert",
"Tipp:: Bei der Suche nach Abbadon immer vorsichtig sein,
aufgrund plötzlicher Vulkan ausbrüche.");




INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Asmadäus",
 "Eigenschaften:
- Größe: Spanne von 2 - 3 m
- Gewicht: bis zu 100 kg",
"Vorkommen::
- hält sich nur an Orten auf, welche
  Nachts vom Mond beschienen werden.
- Tagsüber ist der Ort unbekannt.",
"Stärke::
- kann jeden Gegner in eine schreckliche
  Schlafparalyse bringen.",
"Schwäche:
- Sonnenschein kann Asmadäus nicht leiden",
"Tipp::
Er sollte unter allen umständen nicht Tagsüber
zum Einsatz kommen. Andernfalls verschwindet er.");


INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Baal",
"Eigenschaften:
- Größe: 1 m
- Gewicht: 70 kg",
"Vorkommen:
- in den tiefen Wäldern von Paragos",
"Stärke:
- übernatürlich schnell aufgrund der vielen Beine
- Sehr intelligent!",
"Schwäche:
- Ist in einigen Situationen zu sehr von sich überzeugt.
  Dies kann zu Verhängnissen führen.",
"Tipp:
Zeig ihm wer der Boss ist!");




INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Belphegor",
"Eigenschaften:
- Größe: 2,5 m
- Gewicht: bis zu 300 kg",
"Vorkommen:
- bevorzugt Tropfsteinhölen",
"Stärke:
- sehr kräftig
- scharfe, dicke Krallen durchdringen jede Art von Gegner!",
"Schwäche:
- sehr unhygenisch",
"Tipp:
Belphegor ist sehr unhygenisch. Um Krankheiten zu vermeiden
nach Kontakt stets waschen.");



INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Ego fum Papa",
"Eigenschaften:
- Größe: 2 m
- Gewicht: bis zu 50 kg",
"Vorkommen:
- lebt unter den Menschen",
"Stärke:
- magische Kräfte: mit seinem Zauberstab
  kann er andere Menschen hypnotisieren",
"Schwäche:
- sehr dürr und zerbrechlich",
"Tipp:
Wendet er den Zauber an, während
er vor einem Spiegel steht, fällt Ego fum Papa
selber in unendliche hypnose. Also Vorsicht!");



INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Gustave",
"Eigenschaften:
- Größe: bis zu 1,90 m
- Gewicht: bis zu 90 kg",
"Vorkommen:
- wandert ununterbrochen durch die Gegend",
"Stärke:
- starkes Charisma!",
"Schwäche:
- kann nicht alleine sein
- braucht ständig Bestätigung",
"Tipp:
Gustave benötigt ständige Bestätigung, ansonsten
sinkt sein Charisma Wert um vielfaches. Mach ihm viele
Komplimente. So wird sein Wert nicht sinken.");



INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Infernal",
"Eigenschaften:
- Größe: 5 m
- Gewicht: 100 kg",
"Vorkommen:
- in den Albträumen der Menschen",
"Stärke:
- kann den Menschen Wunden hinzufügen, obwohl
  er sich nur in ihren Träumen aufhält",
"Schwäche:
- Sobald die Person merkt, dass es nur ein Traum
  ist verschwindet er.",
"Tipp:
Infernal sind nur schwer zu fangen. Wenn du dich
schlafen legst halte eine Waffe in der Hand.");
        



INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Lessecke",
"Eigenschaften:
- Größe: 1,50 m
- Gewicht: 70 kg",
"Vorkommen:
- in Wüsten",
"Stärken:
- starke Sprungkraft -> Bis zu 10 m
- scharfe reißzähne",
"Schwäche:
- kann sich nur fortbewegen, indem er sich dreht",
"Tipp:
Lessecken sind sehr scheu. Bewege dich nur langsam
auf sie zu. So verhinderst du, dass sie direkt die
Flucht ergreifen");

INSERT INTO daemonen(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Todes Zwillinge", 
"Eigenschaften:
- Größe: 2,5 m
- Gewicht: 10 kg",
"Vorkommen:
- im Jenseits",
"Stärke:
- immer zu zweit unterwegs, wodurch sie quasie
  unverwundbar sind
- Allein der Blickkontakt reicht aus, um die Gegner
  in den Hölle zu schicken",
"Schwächen:
- wenn einer stirbt, stirbt der andere mit
- ihre Seelen sind miteinander verbunden",
"Tipp:
Sie sind auf Friedhöfen am öftesten zu finden");


SELECT * FROM daemonen;

INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Aspidochelone", 
"Eigenschaften:
- Größe: 1,8 m
- Gewicht: 100 kg",
"Vorkommen:
- Korallenriffen",
"Stärken:
- kann sich dank Handartiger Flossen gut im Sand einbuddeln
  und sich so vor Gegnern verstecken
- Schuppen sind giftig",
"Schwäche:
- Feuerattacken richten großen Schaden an",
"Tipp:
Um so schönerr das Korallenriff, dest höher ist die
Wahrscheinlichkeit ein Aspidochelone zu finden");



INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Camena",
"Eigenschaften:
- Größe: 3,5m 
- Gewicht: bis zu 300 kg",
"Vorkommen:
- zu finden im Ozean",
"Stärken:
- die Arme sind mit einer giftigen Flüssigkeit versehen
- sehr Muskulös",
"Schwäche:
- trotz der Größe ein Angsthase",
"Tipp:
Sprech ihm viel Mut zu, dadurch lindern sich die Ängste
und die Angriffskraft kann erhöht werden.");
    


INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Charybdis",
"Eigenschaften:
- Größe: 1,50 n
- Gewicht: bis zu 50 kg",
"Vorkommen:
- im Ozean
- lebt in etwa 11.000 Metern tiefe",
"Stärken:
- 200 Fangzähne, welche Messerscharf sind
- kann bist zu 100 km/h schwimmen",
"Schwäche:
- sehr lichtempfindlich",
"Tipp: Sein Tag ist die Nacht und seine Nacht der Tag");
    



INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Ekke Mekkepenn",
"Eigenschaften:
- Größe: 1,90 m
- Gewicht: 70 kg",
"Vorkommen:
- vorzufinden an Tümpeln (nur in warmen Gebieten)",
"Stärke:
- besitzt viel Gold",     
"Schwäche:
- nicht gut im Nahkampf", 
"Tipp:
Ekke Nekkepenn ist kein hilfreicher Kampfgefährte,
jedoch besitzt er viele Goldmünzen!");



INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Each Uisge",
"Eigenschaften:
- Größe: 2 m
- Gewicht: 87kg",
"Vorkommen:
- nur an Ufern zu finden",
"Stärke:
- zieht durch seine Schönheit andere Lebewesen an,
  welche sich dann zum reiten auf seinen Rücken setzen.
  Dank seines klebringen Schleims können sich diese nicht
  mehr lösen und werden im Wasser ertränkt.",
"Schwäche:
- wahre staerke kommt nur an Wassergebieten zur Geltung",
"Tipp:
Pflege Each Uisge sehr gut! so fallen mehr Leute auf den
Trick ein.");



INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Kappa",
"Eigenschaften:
- Größe: bis zu 1 m
- Gewicht: 30 kg", 
"Vorkommen:
- an Stränden",
"Stärken:
- der Panzer dient als guter Schutz
- kann durch den Panzer Nebel ausstoßen
- Wasserblasen aus dem Mund",
"Schwäche:
- viel zu langsam!",
"Tipp:
Setze Kappa niemals gegen schnelle Gegner ein.
Empfehlenswert ist er bei Gift oder Steinwesen.");


INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Leviathan",
"Eigenschaften:
- Größe: 6 m
- Gewicht: 6 Tonnen",
"Vorkommen:
- in den weiten des Ozeans",
"Stärken:
- bitzschnell im Wasser aber auch in der Luft
- kann Stürme erzeugen",
"Schwäche:
- die Attacke Ignis kann die Hälfte seiner
  Lebensenergie kosten",
"Tipp:
Die Gold Krone auf seinem Kopf ist
überlebenswichtig, weshalb sie auch bei Geldnot
nicht umgetauscht werden sollte!");


INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Serpent",
"Eigenschaften:
- Größe: 80 cm
- Gewicht: 1 kg",
"Vorkommen:
- im Gewässer Viridi zu finden",
"Stärke:
- Blitzschläge bis zu 100 Millionen Volt",
"Schwäche:
- nach einem Bitzangriff müssen 10 Sekunden gewartet
  werden, ehe ein neuer Angriff möglich ist",
"Tipp:
Niemals Serpet alleine in den Kampf schicken, wenn
der Gegner zu stark ist.");


INSERT INTO wasser(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Scylla",
"Eigenschaften:
- Größe: Spanne von 3 - 5 m
- Gewicht: bis zu 200 kg",
"Vorkommen:
- im Gewässer Viridi zu finden",
"Stärken:
- Donnerblitz
- wirkt sehr furchteinflößend auf die Gegner",
"Schwäche:
- die ganzen Köpfe kommen sich manchmal in die Quere",
"Tipp:
Durch den Zaubertrank 'Vehementer' versträkt sich die
Angriffskraft um das doppelte!");

SELECT * FROM wasser;

INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Amphisbaena",
"Eigenschaften:
- Größe: 4 m
- Gewicht: 250 kg",
"Vorkommen:
- überwiegend in verlassenen Höhlen",
"Stärke:
- sehr schnell im fliegen
- kann aus beiden Köpgen gleichzeitig Feuer speien",
"Schwäche:
- Aufgrund der zwei Persönlichkeiten, ist sich
  Amphisbaena manchmal uneinig und gerät in Streitigkeiten",
"Tipp:
Ein Zaubertrank kann den Drachen besänftigen. Dafür benötgst
du allerdings 50 Goldmünzen.");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Cito",
"Eigenschaften:
- Größe: 3,5m
- Gewicht: bis zu 300 kg
-hat den Kopf eines Adlers, aber den Körper eines Panthers",
"Vorkommen:
- nachts in den Höhlen des Waldes von Relinquo und tagsüber auf Jagd",
"Stärke:
- durch seine Adler-Fähigkeiten ist Cito sehr flink im Fliegen und greift schnell an",
"Schwäche:
- Angst vor Wasser",
"Tipp:
Ein Sattel ist muss!");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Griffon", 
"Eigenschaften:
- Größe: 1,50 m
- Gewicht: bis zu 50 kg",
"Vorkommen:
- auffindbar im Norden in den Bergen", 
"Stärken:
- magische Kräfte
- sehr kräftiger und harter Schnabel",
"Schwäche:
- nicht besonders schnell im Flug",
"Tipp:
Griffons sind sehr nützlich gegen Schalenwesen");


INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Harpia",
"Eigenschaften:
- Größe: 1 m
- Gewicht: 23,5 kg",
"Vorkommen:
- auf den Inseln von Cretan",
"Stärken:
- blitzschnell im Flug
- kann in die Schwächen der Gegner sehen und
  so effizient angreifen",
"Schwäche:
- benötigt zwingend tote Seelen, um am leben zu bleiben",
"Tipp:
Setze dein Harpia 4 mal die Woche ein. 
So wird verhindert, dass er stirbt.");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Infernum",
"Eigenschaften:
- Größe: 3 m
- Gewicht: bis zu 150 kg",
"Vorkommen:
- findet Zuflucht in den zerschmetterten Seelen der Menschen",
"Stärken:
- beherrscht einen sehr kräftigen Krallen Angriff
- nimmt ihre Energie aus der Dunkelheit",
"Schwäche:
- schwer zu kontrollieren, da sie nur auf Rache aus ist",
"Tipp: Kombiniert mit Feuer ist sie kaum aufzuhalten
.");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Iris",
"Eigenschaften:
- Größe: Spanne von 2 - 3 m
- Gewicht: bis zu 300 kg",
"Vorkommen:
- zu finden an friedlichen Orten",
"Stärken:
- zieht mir ihrer Schönheit jeden in den Bann
- kann eine Lichtkugel erzeugen, sodass die
  Gegner für eine Zeit lang nichts sehen können",
"Schwäche:
- Attacke wirklungslos bei Sonnenwesen!",
"Tipp:
Kaufe dir einen Lichtschutz!");


INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Lamassu",
"Eigenschaften:
- Größe: 2 m
- Gewicht: 1 Tonne",
"Vorkommen:
- in der Wüste
- bevorzugt Oasen",
"Stärke:
- kann sich zu Stein erhärten
- Feuerstrahl",
"Schwäche:
- nicht besonders gut im fliegen",
"Tipp:
Die Gold Krone auf seinem Kopf ist
überlebenswichtig, weshalb sie auch bei Geldnot
nicht umgetauscht werden sollte!");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Malum",
"Eigenschaften:
- Größe: 50 cm
- Gewicht: 10 kg",
"Vorkommen:
- nur im Dschungel 'Saltu' zu finden",
"Stärke:
- beherrscht so einen lauten Schrei, sodass</p>
  die Ohren aller umliegenden Beteiligten</p>
  einen Hörsturz erleiden",
"Schwäche:
- mehr Angriffsmöglichkeiten als 'Der Schrei'</p>
  besitzt Malum nicht",
"Tipp:
Der Dschungel Saltu sollte nur mit Ohrenschutz
erkundet werden.");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Nigrum",
"Eigenschaften:
- Größe: Spanne von 3 - 5 m
- Gewicht: bis zu 200 kg",
"Vorkommen:
- lebt in der Dunkelheit der Nacht",
"Stärken:
- sehr beweglich im Flug
- übernatürlich schnell
- kann 10 Meter weit Feuer speien",
"Schwäche:
- flug richtet großen Schaden an",
"Tipp:
Regelmäßig Kohle zum Essen geben, dadurch
verbessert sich die Angriffskraft");



INSERT INTO flug(name, eigen, ort, staerke, schwaeche, tipps) VALUES (
"Name: Pegasus",
"Eigenschaften:
- Größe: 1,4 - 1,8 m 
- Gewicht: bis zu 1000 kg",
"Vorkommen:
- lebt in den Wolken",
"Stärke:
- kann die Gedanken anderer Wesen lesen
- beherrscht die menschliche Sprache",
"Schwäche:
- schnell verwundbar",
"Tipp:
Es wird ein Cito benötigt, um Pegasus erreichen.");


SELECT * FROM flug;