-- phpMyAdmin SQL Dump
-- version OVH
-- http://www.phpmyadmin.net
--
-- Host: mysql51-48.pro
-- Generation Time: Mar 28, 2013 at 08:14 PM
-- Server version: 5.1.66
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lespetitdwjle`
--

-- --------------------------------------------------------

--
-- Table structure for table `atlas_chapitres`
--

CREATE TABLE IF NOT EXISTS `atlas_chapitres` (
  `id_chapitres` mediumint(9) NOT NULL AUTO_INCREMENT,
  `chapitres` text NOT NULL,
  `id_fiches` text NOT NULL,
  `ordre` mediumint(9) NOT NULL,
  PRIMARY KEY (`id_chapitres`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `atlas_chapitres`
--

INSERT INTO `atlas_chapitres` (`id_chapitres`, `chapitres`, `id_fiches`, `ordre`) VALUES
(1, 'Tumeur malignes', '1;37', 1),
(2, 'Autres suppurations', '2;27;32;36', 2),
(3, 'Infections sexuellement transmises', '3;39', 3),
(4, 'Dermatoses', '12', 4),
(5, 'Affections inclassables', '33', 5);

-- --------------------------------------------------------

--
-- Table structure for table `atlas_fiches`
--

CREATE TABLE IF NOT EXISTS `atlas_fiches` (
  `id_fiches` mediumint(9) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `texte` text NOT NULL,
  `chapitres` text NOT NULL,
  `signes_cliniques` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `diagnostic_differentiels` text NOT NULL,
  `en_savoir_plus` text NOT NULL,
  `popups` text NOT NULL,
  PRIMARY KEY (`id_fiches`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `atlas_fiches`
--

INSERT INTO `atlas_fiches` (`id_fiches`, `titre`, `texte`, `chapitres`, `signes_cliniques`, `image`, `diagnostic_differentiels`, `en_savoir_plus`, `popups`) VALUES
(1, 'Maladie de Paget', 'L’atteinte anale et/ou péri-anale de la maladie de Paget représenterait environ 20 % de ses cas d’atteinte extra-mammaire. Elle peut être « primitive », liée à l‘extension épithéliale d''un carcinome sous-cutané, ou « secondaire », soit à l''extension de contiguïté d''un carcinome du canal anal ou de la vulve, soit à la propagation à l’anus d’un cancer viscéral synchrone distant, notamment colo-rectal, uro-génital, mammaire ou naso-pharyngé. Elle est plus fréquente chez la femme et survient souvent après l’âge de 50 ans. Les signes d’appel ne sont pas spécifiques et la présentation clinique est polymorphe. L’analyse histologique permet de poser le diagnostic d’adénocarcinome intra-épithélial de Paget et de rechercher un éventuel franchissement de la membrane basale caractérisant alors le carcinome invasif. L’immunohistochimie permet d’orienter vers le type de cancer éventuellement associé. L’évolution est en général lente mais le pronostic dépend aussi du contexte. L’exérèse chirurgicale élargie est souvent réalisée mais la prise en charge thérapeutique ultérieure se discute au cas par cas. La surveillance doit être prolongée en raison des récidives fréquentes et volontiers tardives mais aussi de la possibilité de survenue d’un cancer viscéral métachrone.', '1', '2;7;8;9;12', 'Maladie-de-Paget-Photo.jpg', '3;4;5;6;7;8;9;10', 'Shepherd V, Davidson EJ, Davies-Humphreys J. Extramammary Paget''s disease. BJOG 2005 ; 112 : 273-9.', '1;2'),
(2, 'Sinus pilonidal infecté chronique', 'Le sinus pilonidal infecté est une suppuration fréquente survenant deux fois plus souvent chez l’homme que chez la femme, en général entre l’âge de 15 et 30 ans. Il siège habituellement sous la peau, à la partie haute du sillon inter-fessier, en regard du coccyx et/ou du sacrum. Il peut se présenter sous une forme aiguë avec un abcès sous tension douloureux, parfois accompagné de fièvre, ou sous une forme chronique avec un écoulement purulent intermittent par un ou plusieurs orifices secondaires cutanés (photographie). Quel que soit son mode de présentation, le sinus pilonidal infecté est typique lorsqu’il s’accompagne d’une ou plusieurs fossettes, situées sur la ligne médiane et communiquant avec la cavité profonde. La présence de débris pilaires, sortant par les fossettes et/ou les orifices cutanés, non implantés et donc faciles à retirer à la pince, est également caractéristique du diagnostic. L''incision en cas d''abcès aigu permet de soulager les douleurs. L''exérèse chirurgicale, associée ou non à un geste de fermeture, est ensuite le traitement curatif de référence.', '2', '2;6;8;9;10;12', 'Sinus-pilonidal-infecte-chr.jpg', '11;12;13;14;15;16;17;18;19;20', 'de Parades V, Bouchard D, Janier M, Berger A. Le sinus pilonidal infecté. J Visc Surg 2013 (sous presse).', ''),
(3, 'Néoplasie intra-épithéliale de la marge', '', '0', '', '', '', '', ''),
(4, 'Eczéma', '', '0', '', '', '', '', ''),
(5, 'Psoriasis', '', '0', '', '', '', '', ''),
(6, 'Lichen plan', '', '0', '', '', '', '', ''),
(7, 'Lichen scléro-atrophique', '', '0', '', '', '', '', ''),
(8, 'Candidose', '', '0', '', '', '', '', ''),
(9, 'Dermatophytose', '', '0', '', '', '', '', ''),
(10, 'Syphilis secondaire', '', '0', '', '', '', '', ''),
(11, 'Hidradénite suppurée', '', '0', '', '', '', '', ''),
(12, 'Furoncle', 'Le furoncle est une infection profonde d’un follicule pilo-sébacé, en général d’origine staphylococcique. Il siège fréquemment au niveau de la fesse. Le diagnostic est clinique. Il se présente sous la forme d’une tuméfaction rouge, chaude et douloureuse. Le prélèvement à visée bactérologique n’est indiqué que dans les formes récidivantes. Un diabète sucré, un état d’immuno-dépression, une carence martiale, etc… sont des facteurs favorisants classiques. Dans ces cas, il y a souvent plusieurs localisations. Les frictions mécaniques (exemple des cyclistes) ainsi que la surcharge pondérale peuvent également favoriser la survenue de furoncles. L’évolution se fait en quelques jours vers la formation d’une nécrose centrale d’où s’élimine le follicule pileux (« bourbillon ») laissant une ulcération qui cicatrise rapidement. Le traitement repose donc le plus souvent sur un simple pansement antiseptique et une bonne hygiène locale. La mise à plat chirurgicale est rarement nécessaire.', '4', '12;10;1;2;7;9', 'Furoncle-photo.jpg', '13;14;15;16;30;11;31', 'Foulc P, Barbarot S, Stalder JF. Infections cutanées bactériennes : impétigo, furoncle, érysipèle. Etiologie, diagnostic, évolution, traitement. Rev Prat 1998 ; 48 : 661-6.', ''),
(13, 'Kyste sébacé', '', '0', '', '', '', '', ''),
(14, 'Erysipèle', '', '0', '', '', '', '', ''),
(15, 'Acné', '', '0', '', '', '', '', ''),
(16, 'Impétigo', '', '0', '', '', '', '', ''),
(17, 'Abcès de la marge', '', '0', '', '', '', '', ''),
(18, 'Abcès de la fesse', '', '0', '', '', '', '', ''),
(19, 'Tuberculose', '', '0', '', '', '', '', ''),
(20, 'Actinomycose', '', '0', '', '', '', '', ''),
(21, 'Rectite à gonocoque', 'La gonococcie ano-rectale est due à une infection par Neisseria gonorrhae. Ce diplocoque est en général transmis par un coït anal passif mais l''autocontamination à partir d''une atteinte vaginale est possible. La durée d''incubation est d''environ 5 à 7 jours. Il y aurait de nombreux porteurs asymptomatiques. Les signes cliniques sont parfois discrets, à type de suintements, d’émissions glaireuses et/ou de saignements, voire inexistants. En fait, ils sont souvent aigus et bruyants sous la forme de douleurs, d’épreintes, d’un ténesme, de faux besoins glaireux et/ou hémorragiques, et/ou de fièvre en rapport avec un abcès anal et/ou une rectite. Cette dernière est volontiers minime avec de simples sécrétions purulentes sur une muqueuse normale (photographie) contrastant avec l’intensité du tableau clinique. Les arthrites, la péri-hépatite, la péricardite, la méningite, etc... sont des manifestations moins fréquentes mais classiques. Le diagnostic repose sur les prélèvements locaux à visée bactériologique (Pop-up) qui permettent également de réaliser un antibiogramme. L’antibiothérapie adaptée est rapidement efficace en cas de rectite mais l’abcès anal nécessite souvent une intervention chirurgicale de drainage. ', '3', '2;3;4;5;6;8;9;10;11;12', 'Rectite-a-gonocoque-photo.jpg', '22;23;24;25;26', 'Hoentjen F, Rubin DT. Infectious proctitis : when to suspect it is not inflammatory bowel disease. Dig Dis Sci 2012 ; 57 : 269-73.', '8'),
(22, 'Ano-rectite de primo-infection herpétique', '', '0', '', '', '', '', ''),
(23, 'Ulcère solitaire classique', '', '0', '', '', '', '', ''),
(24, 'Ulcérations ano-rectales de la Lamaline®', '', '0', '', '', '', '', ''),
(25, 'Lymphogranulomatose vénérienne rectale à Chlamydia', '', '0', '', '', '', '', ''),
(26, 'Abcès intramural', '', '0', '', '', '', '', ''),
(27, 'Glande à musc infectée', 'Les glandes à musc, connues également sous le nom de glandes sous-pectinéales ou encore glandes « lubrifiantes », sont en général situées au niveau du canal anal antérieur, au dessous de la ligne pectinée, de part et d’autre de la ligne médiane. Elles correspondent probablement à un vestige embryologique et, du point de vue histologique, sont semblables aux glandes d’Hermann et Desfosses. L’infection d’une de ces glandes peut se manifester par un abcès inter-sphinctérien distal et/ou par une tuméfaction se vidant par intermittence, entraînant alors un suintement et un prurit. Le diagnostic repose sur la mise en évidence sous pectinéale de l’orifice primaire endocanalaire antérieur (photographie). Le traitement est chirurgical.', '2', '10;12;2;7;9', 'Glande-musc-infectee.jpg', '17;28;29', '', ''),
(28, 'Trajet intersphinctérien', '', '0', '', '', '', '', ''),
(29, 'Fissure infectée', '', '0', '', '', '', '', ''),
(30, 'Fistule crypto-glandulaire', '', '', '', '', '', '', ''),
(31, 'Sinus pilonidal', '', '', '', '', '', '', ''),
(32, 'Fossette pilonidale asymptomatique', 'Les fossettes pilonidales asymptomatiques se présentent sous la forme d’orifices cutanés de taille variable, uniques ou multiples, situées en général sur la ligne médiane, à la partie haute du sillon inter-fessier, en regard du coccyx et/ou du sacrum. Leur prévalence exacte dans la population est inconnue. Elles peuvent êtres congénitales, alors dues à un défaut de coalescence de l’ectoderme primitif. Elles peuvent également être acquises, notamment secondaires à des microtraumatismes répétés, à type de frottement et/ou d’écrasement comme on peut avoir par exemple chez les conducteurs d’engins, associés à l’écartement généré par les mouvements des deux masses fessières. Les fossettes correspondraient alors à des follicules pileux élargis sous l’effet de ces forces de friction chez des sujets prédisposés (pilosité marquée, peau grasse, surcharge pondérale, pli inter-fessier profond, manque d’hygiène…). Puis, dans un pourcentage de cas inconnu, la migration sous la peau, via ces fossettes, d''un ou plusieurs poils pourraient secondairement générer une éventuelle réaction inflammatoire locale à l’origine d''une cavité sous-cutanée alors susceptible de s’infecter et ainsi constituer le sinus pilonidal infecté symptomatique.', '2', '', 'Fossette-pilonidale-asympto.jpg', '2', 'de Parades V, Bouchard D, Janier M, Berger A. Le sinus pilonidal infecté. J Visc Surg 2013 (sous presse).', ''),
(33, 'Bursite ischiatique', 'La bursite ischiatique ou hygroma d’appui correspond à une inflammation de la bourse ischiatique secondaire à des microtraumatismes répétés entre la tubérosité ischiatique et un plan dur. Elle a surtout été décrite chez des patients paraplégiques. La bursite peut se surinfecter et fistuliser secondairement à la peau. Elle se présente sous la forme d’une tuméfaction de la fesse, éventuellement abcédée et/ou centrée par un orifice secondaire. Elle peut être asymptomatique ou se manifester par des douleurs et/ou des suintements.  L’imagerie permet de poser le diagnostic et de déceler une éventuelle ostéite sous-jacente. Le traitement relève de la chirurgie orthopédique spécialisée.', '5', '12;10;2;9', 'Bursite-ischiatique.jpg', '18;28;11;34;35', 'Fujisawa Y, Ito M, Nakamura Y, Furuta J, Ishii Y, Kawachi Y, Otsuka F. Perforated ischiogluteal bursitis mimicking a gluteal decubitus ulcer in patients with spinal cord injury : report of 2 cases. Arch Dermatol 2010 ; 146 : 932-4.', ''),
(34, 'Trajet supra-sphinctérien', '', '', '', '', '', '', ''),
(35, 'Fistule sigmoïdo-cutanée', '', '', '', '', '', '', ''),
(36, 'Aspect après exérèse d''un sinus pilonidal', 'L’exérèse, élargie ou non, est le traitement de référence du sinus pilonidal infecté. La technique de la plaie laissée ouverte en fin d’intervention (« lay open ») avec cicatrisation dirigée postopératoire est largement réalisée en France. Elle vise à diminuer au maximum le risque de récidive. Cependant, la plaie est parfois importante (photographie) et a pour inconvénients la nécessité de soins locaux infirmiers, une cicatrisation prolongée et un arrêt temporaire d’activité prolongé.. C’est la raison pour laquelle certains praticiens ont mis au point des techniques de fermeture de première intention (suture médiane directe, fermeture paramédiane selon Bascom ou Karydakis, lambeau rhomboïdal de Limberg, etc…). Cependant, si elles sont moins contraignantes pour les patients, ces techniques exposent probablement à un taux plus important de récidive.', '', '2;9;8;9', 'Aspectapresexeresesinus.jpg', '', 'de Parades V, Bouchard D, Janier M, Berger A. Le sinus pilonidal infecté. J Visc Surg 2013 (sous presse).', ''),
(37, 'Adénocarcinome mucineux', 'L’adénocarcinome mucineux ou colloïde muqueux de l’anus est une affection rare. Il s’agit d’une tumeur maligne glandulaire muco-sécrétante développée au dépend des glandes anales de Hermann et Desfosses. Elle peut se présenter sous la forme d’une banale fistule crypto-glandulaire mais, le plus souvent, il s’agit d’une pseudo-fistule traînante, récidivante, souvent multi-opérée. La palpation d’une infiltration et, surtout, une sécrétion en « grains de tapioca cuits » doivent y faire penser. Le diagnostic relève de l’analyse histologique. L’amputation abdomino-périnéale est le traitement habituellement envisagé.', '1', '12;13;10;2;9', 'AdenoK-mucineux.jpg', '17;18;28;34;35;38', 'Okada K, Shatari T, Sasaki T, Tamada T, Suwa T, Furuuchi T, Takenaka Y, Hori M, Sakuma M. Is histopathological evidence really essential for making a surgical decision about mucinous carcinoma arising in a perianal fistula ? Report of a case. Surg Today 2008 ; 38 : 555-8.', '6;7'),
(38, 'Trajet trans-sphinctérien', '', '', '', '', '', '', ''),
(39, 'Abcès anal à gonocoque', 'La gonococcie ano-rectale est due à une infection par Neisseria gonorrhae. Ce diplocoque est en général transmis par un coït anal passif mais l''autocontamination à partir d''une atteinte vaginale est possible. La durée d''incubation est d''environ 5 à 7 jours. Il y aurait de nombreux porteurs asymptomatiques. Les signes cliniques sont parfois discrets, à type de suintements, d’émissions glaireuses et/ou de saignements, voire inexistants. En fait, ils sont souvent aigus et bruyants sous la forme de douleurs, d’épreintes, d’un ténesme, de faux besoins glaireux et/ou hémorragiques, et/ou de fièvre en rapport avec un abcès anal (photographie) et/ou une rectite. Cette dernière est volontiers minime avec de simples sécrétions purulentes sur une muqueuse normale contrastant avec l’intensité du tableau clinique. Les arthrites (Pop-up), la péri-hépatite, la péricardite, la méningite, etc... sont des manifestations moins fréquentes mais classiques. Le diagnostic repose sur les prélèvements locaux à visée bactériologique (Pop-up) qui permettent également de réaliser un antibiogramme. L’antibiothérapie adaptée est rapidement efficace en cas de rectite mais l’abcès anal nécessite souvent une intervention chirurgicale de drainage. ', '3', '2;6;8;9;10', 'Abces-anal-a-gonocoque.jpg', '17;28;29;18;11;12;13;14;15;16;19;20', 'Hoentjen F, Rubin DT. Infectious proctitis : when to suspect it is not inflammatory bowel disease. Dig Dis Sci 2012 ; 57 : 269-73.', '5;9');

-- --------------------------------------------------------

--
-- Table structure for table `atlas_popups`
--

CREATE TABLE IF NOT EXISTS `atlas_popups` (
  `id_popups` mediumint(9) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `legende` text NOT NULL,
  `source` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_fiches` text NOT NULL,
  PRIMARY KEY (`id_popups`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `atlas_popups`
--

INSERT INTO `atlas_popups` (`id_popups`, `titre`, `legende`, `source`, `image`, `id_fiches`) VALUES
(1, 'Aspect histologique d’une maladie de Paget.', '', 'Vincent Molinié.', 'Pop-Up-1-Maladie-de-Paget-p.jpg', '1'),
(2, 'James Paget (1814-1899)', 'A la fois physiologiste, anatomo-pathologiste et chirurgien, l’anglais James Paget (1814-1899) a laissé son nom à une ostéite déformante hypertrophiante et à une maladie du mamelon dont l’atteinte anale et péri-anale sera décrite par un élève de Jean-Ferdinand Darier (1856-1938). ', 'Wikimedia commons.', 'Pop-Up-2-Maladie-de-Paget-p.jpg', '1'),
(3, 'Fossettes', 'Fossettes typiques de sinus pilonidal', '', 'Pop-Up-1-Sinus-pilonidal-in.jpg', '2'),
(4, 'Poils', 'Touffe de poils typiques de sinus pilonidal', '', 'Pop-Up-2-Sinus-pilonidal-in.jpg', '2'),
(5, 'Culture de gonocoque', 'Culture de gonocoque sur gélose chocolat', 'Patrice Sednaoui', 'Pop-Up-1-Abces-anal-a-gonoc.jpg', '39'),
(6, 'Sécrétion en « grains de tapioca cuits »', 'Sécrétion en « grains de tapioca cuits » d’un adénocarcinome mucineux de l’anus.', '', 'Pop-Up-1-AdenoK-mucineux.jpg', '37'),
(7, 'Aspect histologique', 'Aspect histologique d’un adénocarcinome mucineux de l’anus.', 'Véronique Duchatelle', 'Pop-Up-2-AdenoK-mucineux.jpg', '37'),
(8, 'Culture de gonocoque', 'Culture de gonocoque sur gélose chocolat.', 'Patrice Sednaoui', 'Pop-Up-Rectite-a-gonocoque-.jpg', '21'),
(9, 'Arthrite  réactionnelle', 'Arthrite aseptique réactionnelle à un abcès anal à gonocoque.', '', 'Pop-Up-2-Abces-anal-a-gonoc.jpg', '39');

-- --------------------------------------------------------

--
-- Table structure for table `atlas_signes_cliniques`
--

CREATE TABLE IF NOT EXISTS `atlas_signes_cliniques` (
  `id_signes_cliniques` mediumint(9) NOT NULL AUTO_INCREMENT,
  `signes_cliniques` text NOT NULL,
  `id_fiches` text NOT NULL,
  PRIMARY KEY (`id_signes_cliniques`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `atlas_signes_cliniques`
--

INSERT INTO `atlas_signes_cliniques` (`id_signes_cliniques`, `signes_cliniques`, `id_fiches`) VALUES
(1, 'Dermite', '12'),
(2, 'Douleur', '1;2;21;12;33;36;37;39'),
(3, 'Emissions glaireuses', '21'),
(4, 'Epreintes', '21'),
(5, 'Faux besoins', '21'),
(6, 'Fièvre', '2;21;39'),
(7, 'Prurit', '1;12'),
(8, 'Saignement', '1;2;21;36;39'),
(9, 'Suintement', '1;2;21;33;36;37;39'),
(10, 'Suppuration', '2;21;12;33;37;39'),
(11, 'Ténesme', '21'),
(12, 'Tuméfaction', '1;2;12;33;37'),
(13, 'Ulcération', '37');

