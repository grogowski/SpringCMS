INSERT INTO categories (name, description) VALUES ('przyrodnicze', 'artykuły o zwierzątkach');
INSERT INTO categories (name, description) VALUES ('naukowe', 'matematyka, chemia, fizyka itp.');
INSERT INTO categories (name, description) VALUES ('popularno-naukowe', 'nauka dostępna dla każdego');

INSERT INTO authors (firstName, lastName) VALUES ('Jan', 'Nowak');
INSERT INTO authors (firstName, lastName) VALUES ('Tomasz', 'Kowalski');
INSERT INTO authors (firstName, lastName) VALUES ('Joanna', 'Iksińska');

INSERT INTO articles (title, content, author_id, created, updated) VALUES ('Bozon Higgsa', 'Bozon o którym będzie mowa dziennikarze ochrzcili boską cząstką, o czym na pewno doskonale wiecie. Sam Peter Higgs pół żartem, pół serio, twierdził, że postulowany przez niego obiekt powinien raczej nosić nazwę “cholernej cząstki”, z uwagi na trudność jej wykrycia. Tak czy inaczej fama poszła w świat i chyba nie ma sensu dalej kruszyć kopii, prosząc o stosowanie mniej pretensjonalnego nazewnictwa. Zresztą brzmiący bardziej naukowo higgson, czy też bozon Higgsa, również nie jest wolny od kontrowersji z uwagi na wysunięcie przed szereg tylko jednego z grona zacnych fizyków, biorących udział w kształtowaniu skomplikowanej teorii. (Warto wykonać ten drobny ukłon i wymienić w tym miejscu François Englerta, Roberta Brouta, Carla Hagena – a także głównych architektów modelu standardowego, którzy również dorzucili tu swoje trzy grosze – Sheldona Glashowa oraz Stevena Weinberga).', 1, '2018-11-30 23:30:00', '2018-11-30 23:30:00');
INSERT INTO articles (title, content, author_id, created, updated) VALUES ('Ciekawostki z życia wilków', 'Wilcze stado, nazywane watahą może składać się z kilkunastu osobników. Stada wilków żyjące na terenie Polski są niewielkie i liczą mniej niż dziesięciu członków. Władzę w wilczym stadzie pełni najsilniejsza para dorosłych wilków, zwana parą alfa. Para alfa to jedyne wilki w stadzie, które mogą się rozmnażać. Pozostałe stado to wilki spokrewnione z parą alfa. Wszyscy członkowie stada mają tu swoje miejsca i role. Przy zjadaniu upolowanego zwierzęcia, obowiązuje określona kolejność podchodzenia do „stołu”. Najmłodszymi wilkami opiekują się wszystkie dorosłe wilki w stadzie. Wyrośnięte szczenięta muszą czasami opuścić stado, by nie stanowiły konkurencji dla dominującej pary. Wszystkie wilki żyjące w stadzie mają swoje zadania do spełnienia. Część z nich zajmuje się przewidywaniem niebezpieczeństwa za pomocą węchu. Inne pełnią rolę poszukiwaczy tropu. Kolejni członkowie watahy zabijają upolowane zdobycze. Zadaniem innych wilków jest opieka nad potomstwem najważniejszej pary. Wilcze stada mają także swoje „supernianie”, których rola polega na wymierzaniu stosownych kar. Zazwyczaj rolę tę pełni zastępca samca alfa. Kary wymierzane w wilczym systemie wychowawczym są symboliczne i polegają między innymi na wkładaniu łba w rozwarty szeroko pysk zastępcy przywódcy stada.', 2, '2018-12-01 12:30:00', '2018-12-01 12:30:00');
INSERT INTO articles (title, content, author_id, created, updated) VALUES ('Twierdzenie Pitagorasa', 'Pitagoras, to grecki filozof i matematyk, urodzony ok. 572 roku przed naszą erą. Założył szkołę filozoficzną, która przekształciła się w związek pitagorejski. Pitagoras i jego uczniowie zajmowali się wieloma dziedzinami wiedzy. Dokonali też wielu odkryć matematycznych, np. udowodnili, że suma kątów w trójkącie jest równa kątowi półpełnemu. Jako pierwsi wyodrębnili liczby parzyste i nieparzyste, odkryli liczby niewymierne, wprowadzili pojęcie podobieństwa figur. Sformułowali zasady budowy wielościanów foremnych. ', 3, '2018-12-02 12:30:00', '2018-12-02 12:30:00');

INSERT INTO articles_categories VALUES (1, 2);
INSERT INTO articles_categories VALUES (1, 3);
INSERT INTO articles_categories VALUES (2, 1);
INSERT INTO articles_categories VALUES (2, 2);
INSERT INTO articles_categories VALUES (3, 2);



