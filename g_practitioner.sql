-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 30 mai 2018 à 21:10
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `g_practitioner`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `doctor` text NOT NULL,
  `day` date NOT NULL,
  `time` time NOT NULL,
  `state` text NOT NULL,
  `reason` text NOT NULL,
  `doctor_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `doctor`, `day`, `time`, `state`, `reason`, `doctor_comment`) VALUES
(21, 'Alexia', 'Allison Cameron', '2017-03-29', '08:00:00', 'Canceled', 'Headache', 'Canceled by the patient'),
(22, 'Victor', 'Gregory House', '2017-04-18', '12:00:00', 'Refused', 'Headache', 'I can\'t sorry.'),
(23, 'Thomas Pobel-alotte', 'Gregory House', '2017-04-14', '14:00:00', 'OK', 'Headache', 'Ok for me.'),
(24, 'Thomas Pobel-alotte', 'Lisa Cuddy', '2017-04-15', '09:00:00', 'Waiting', 'Headache', ''),
(25, 'Thomas Pobel-alotte', 'Gregory House', '2017-05-29', '11:00:00', 'Canceled', 'Headache', 'Canceled by the patient'),
(26, 'Sebastien Arboireau', 'Gregory House', '2017-04-14', '13:00:00', 'Waiting', 'Headache', ''),
(27, 'Alexia', 'Gregory House', '2017-05-29', '08:00:00', 'Canceled', 'Head ', 'Canceled by the patient'),
(28, 'Alexia', 'Gregory House', '2017-04-12', '10:00:00', 'OK', 'Headache', 'It\'s OK for me.'),
(29, 'Victor', 'Chris Taub', '2017-04-12', '12:00:00', 'Canceled', 'Headache', 'Canceled by the patient'),
(30, 'Aqu(§è!çà', 'Gregory House', '2017-04-14', '11:00:00', 'Refused', 'Headache', 'Sorrynot available ');

-- --------------------------------------------------------

--
-- Structure de la table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appointments`
--

INSERT INTO `appointments` (`id`, `titre`, `texte`, `type`, `photo`, `link`) VALUES
(1, 'Information', 'To take an appointment you need to log in into our web site. If you don\'t have an account, you can <a href=\"sign_up_patient.php\">sign up here</a>. \r\n<br/>\r\nYou can take appointments every day where we are open, during opening hours: <a href=\"contact.php\">click here to see our opening time</a>.\r\n<br />\r\nYou can choose your day, your slot and your doctor (<a href=\"services.php\">click here to see our team</a>). The doctor will receive your appointment request and will accept or refuse according to his availabilities. If the appointment request is not refused you will be able to cancel it. \r\n<br />\r\nOn this page after log in, your appointments (waiting, accepted, refused or cancelled) will be displayed.\r\n<br /><br />\r\nIf you have any questions, feel free to <a href=\"contact.php\">contact us here</a>.', 'text', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `consultation`
--

INSERT INTO `consultation` (`id`, `titre`, `texte`, `type`, `photo`, `link`) VALUES
(1, 'Introduction', 'Everyone, regardless of nationality, who is accepted by the Health Service Executive (HSE) as being ordinarily resident in Ireland is entitled to access in-patient and out-patient services in publicly funded hospitals, that is, HSE hospitals and voluntary hospitals. Certain visitors to Ireland are also entitled to public health services, for example, people covered under EU Regulations.\r\n<br />\r\n<br />\r\nYou may have to pay some hospital charges, unless you have a medical card or belong to certain other groups listed below. There are daily in-patient charges and some long-term stay charges.\r\n<br />\r\n<br />\r\nIf you are not resident in Ireland and you do not belong to any of the groups that are entitled to free services, you have to pay the full economic cost of the bed, whether it is a public bed or a private bed. You also have to pay the consultant. \r\n<br />\r\n<br />\r\nThe HSE has the discretion to reduce or waive the charges in cases of hardship.', 'text', '', ''),
(10, 'Charges', 'In hours charge:  €45 – €55\r\n<br />\r\nOut of hours charge:  €75 – €85\r\n<br />\r\n<br />\r\nAdditional charges for procedures / treatment that take prolonged time or expensive consumable items\r\n<br />\r\n<br />\r\nWe accept cash and all major credit cards.\r\n<br />\r\nCredit application is only available for corporate customers.\r\n<br />\r\nCheques not accepted.', 'text', '', ''),
(20, 'Questions ?', '<h4>Do you accept new private patients ?</h4>\r\n<br />\r\n<br />\r\nWe are accepting new private patients for our GPs.  If you are interested in Princeton Plainsboro becoming your GP then please sign up.  We offer all our new patients a free mini medical as part of the registration process.\r\n<br />\r\n<br />\r\n<h4>Do you accept medical cards ?</h4>\r\n<br />\r\n<br />\r\nWe now accept both medical card (GMS) and doctor visit card patients.  You can register for us to be your GP either if you are new to the medical card system or wish to change your GP over to us.  We can only see medical card or DV patients that are not registered with us if it is an emergency visit and outside of normal surgery opening times, please seek further advice from reception if you are unsure.  If you are not registered with us and it is a routine matter then you need to book an appointment with your GP that you are registered with.\r\n<br />\r\n<br />\r\n<h4>Do you accept Private Health Insurance ?</h4>\r\n<br />\r\n<br />\r\nWe do, you would need to settle the bill with us and then send the receipt along with the applicable claim forms to your insurance provider.  Please be aware that all policies and providers cover different aspects so please seek further clarification / advice from your insurance provider as we cannot provide this information.  This is similar to a dental or opticians claim.\r\n<br /><br />\r\n<h4>Is there an additional charge if I re-present ?</h4>\r\n<br /><br />\r\nIf you are still feeling unwell after 5-6 days of your initial consultation please call us.  You have to see the same doctor that you saw initially.  If you insist on being reviewed by a different doctor then this is classed as a new consultation and the applicable consultation charge at that time will apply.  You are only entitled to one free / reduced rate review consultation\r\n<br /><br />\r\nPlease allow adequate time for any medications that you may have to take to work properly and sometimes this can be a few days (e.g. if on a 7 day antibiotic course wait until at least day 5 to call us if you are not feeling better).\r\n<br /><br />\r\nA review appointment has to be made with the same clinician that saw you originally and has to be pre-booked.  Walk in review appointments will not be accepted unfortunately.  Please call us if you are not feeling better after a few days and a clinician will call you back to discuss this with you.  If they can they will try and deal with it over the phone, but if not then they will put you back to reception for a review appointment to be made.  If you insist that the review appointment is made with a different clinician then consultation charges will apply as in essence it is a new consultation as they have not seen you previously.\r\n<br />\r\n<br />\r\nIf you are suffering from exactly the same problem and it has not been resolved then you can be seen in a review appointment.  However, if the doctor / medic feels that you are suffering from something different then you will be liable for the applicable charges.\r\n<br />\r\n<br />\r\nIf you are a public patient and not registered with RocDoc then you can only be seen as an emergency / urgent patient.  We cannot see you again for any follow up appointments such as wound cleaning, dressing changes, reviews, repeat prescriptions, sick certs, etc.  You must return to the surgery for which you are registered for these.  Reception will not make these appointments for you.\r\n<br />\r\n<br />\r\nThese policies contravenes any statements made by the clinical staff\r\n<br />\r\n<br />\r\nIf you have any concerns then please give us a call and the doctor / medic will call you back later on that day during their scheduled call back appointments.\r\n<br />\r\n<br />\r\n<br />\r\nPrinceton Plainsboro reserves the right to alter payment terms at any time.', 'text', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `titre`, `texte`, `type`, `photo`, `link`) VALUES
(1, 'Phone', 'You can call us on\r\n<br />\r\n<br />\r\n1890 20 21 22\r\n<br/>\r\nor\r\n<br />\r\n056 20 21 22\r\n<br />\r\n<br />\r\nAnd tell us what is your interrogation. \r\n', 'text', '', ''),
(10, 'General Queries', 'Call us on 056 202 1220\r\n<br /><br />\r\nIf you would like to speak with one of our Customer Service agents about any query you may have, call us on: 056 202 1220.\r\n<br /><br />\r\nOur lines are open:\r\n<br /><br />\r\nMonday to Friday 8am to 6pm\r\n<br />\r\nSaturday 9am to 3pm\r\n<br /><br />\r\nOutside Ireland\r\n<br />\r\n+353 56 7753000\r\n<br /><br />\r\nWithin Ireland\r\n<br />\r\n056 202 1220\r\n<br /><br />\r\nWe can also be contacted by email: info@princeton.ie\r\n<br /><br />\r\nWe look forward to hearing from you', 'text', '', ''),
(20, 'World Assistance Alarm Centres', 'To give you help and advice when you\'re abroad, Assist from Princeton Plainsboro is a special world-wide medical emergency service. To verify your health coverage and confirm payment in case of sickness or accident, you can contact one of the Alarm Centres mentioned below, 24/7.\r\n<br /><br />\r\nNumbers for services provided in:\r\n<br /><br />\r\nUSA & Canada Tel: 1800 364 9022\r\n<br />\r\n(toll free)Fax: +353 144 82 442\r\n<br />\r\nThe rest of the WorldTel: +353 144 82 444\r\n<br />\r\n(collect calls accepted)Fax: +353 144 82 442\r\n<br />\r\n(+: Dial first the international access code)', 'text', '', ''),
(30, 'Employer Solutions', 'For information on setting up a Group Scheme please contact us on 056 202 1220.', 'text', '', ''),
(40, 'Fax Numbers', 'Dublin +353 01 799 4091', 'text', '', ''),
(50, 'Adress', 'Dublin :\r\n<br />\r\nPrinceton Plainsboro\r\n<br />\r\n8 S Circular Road\r\n<br />\r\nDublin 6', 'text', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `homepage`
--

CREATE TABLE `homepage` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `homepage`
--

INSERT INTO `homepage` (`id`, `titre`, `texte`, `type`, `photo`, `link`) VALUES
(3, '', '', 'photo', 'cabinet2.jpg', ''),
(4, '', '', 'photo', 'cabinet4.jpg', ''),
(6, '', '', 'photo', 'cabinet1.jpg', ''),
(10, 'When are we open ?', '', 'link and photo', 'Ville5.jpg', 'contact.php'),
(20, 'Our team will take care of you', '', 'link and photo', 'band2.jpg', 'services.php');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mail` text NOT NULL,
  `password` text NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `age` int(11) NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `name`, `mail`, `password`, `sexe`, `age`, `adress`) VALUES
(1, 'Victor', 'victor@gmail.com', 'password', 'M', 19, '8 Waverley Avenue Dublin 3'),
(3, 'Alexia', 'alexia@gmail.com', 'password', 'F', 22, '8 Waverley Avenue Dublin 3'),
(5, 'Sebastien Arboireau', 'sebastien@gmail.com', 'password', 'M', 20, 'Griffith College Dublin 8'),
(7, 'Thomas Pobel-Alotte', 'thomas@gmail.com', 'password', 'M', 20, 'Griffith College Dublin 8'),
(8, 'Aqu(§è!çà', 'aqueel@gmail.com', 'password', 'M', 30, 'Dublin');

-- --------------------------------------------------------

--
-- Structure de la table `private_member`
--

CREATE TABLE `private_member` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `speciality` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `private_member`
--

INSERT INTO `private_member` (`id`, `type`, `name`, `email`, `password`, `speciality`, `image`) VALUES
(1, 'admin', 'Victor', 'admin@gmail.com', 'admin', '', ''),
(4, 'doctor', 'Gregory House', 'house@gmail.com', 'password', 'Diagnostician', 'dr_house.jpg'),
(5, 'doctor', 'Lisa Cuddy', 'cuddy@gmail.com', 'password', 'Endocrinologist', 'dr_cuddy.jpg'),
(6, 'doctor', 'James Wilson', 'wilson@gmail.com', 'password', 'Oncologist', 'dr_wilson.jpg'),
(7, 'doctor', 'Eric Foreman', 'foreman@gmail.com', 'password', 'Neurologist', 'dr_foreman.jpg'),
(8, 'doctor', 'Allison Cameron', 'cameron@gmail.com', 'password', 'Immunologist', 'dr_cameron.jpg'),
(9, 'doctor', 'Robert Chase', 'chase@gmail.com', 'password', 'Surgeon', 'dr_chase.jpg'),
(10, 'doctor', 'Lawrence Kutner', 'kutner@gmail.com', 'password', 'Sports Medicine Specialist', 'dr_kutner.jpg'),
(11, 'doctor', 'Remy Hadley', 'hadley@gmail.com', 'password', 'Internist', 'dr_hadley.jpg'),
(12, 'doctor', 'Chris Taub', 'taub@gmail.com', 'password', 'Plastic Surgeon', 'dr_taub.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `resources`
--

INSERT INTO `resources` (`id`, `titre`, `texte`, `type`, `photo`, `link`) VALUES
(1, 'Medical Application Forms & Leaflets', 'Here you will find useful links to various forms and leaflets from various external websites. Please <a href=\"contact.php\"> contact us</a> if you have any further questions.\r\n<br /><br />\r\n<ul>\r\n<li>\r\nMedical Card / GP Visit Card: <a href=\"http://www.hse.ie\">Read more (www.hse.ie)</a> / Download Application Form\r\n</li>\r\n<li>\r\nMaternity Benefit: <a href=\"http://www.welfare.ie\">Read more (www.welfare.ie)</a> / Download Application Form\r\n</li>\r\n<li>\r\nCarers’ Allowance: <a href=http://\"www.welfare.ie\">Read more (www.welfare.ie)</a> / Download Application Form\r\n</li>\r\n<li>\r\nCarers’ Benefit: <a href=\"http://www.welfare.ie\">Read more (www.welfare.ie)</a> / Download Application Form\r\n</li>\r\n<li>\r\nDisability Allowance: <a href=\"http://www.welfare.ie\">Read more (www.welfare.ie) </a>/ Download Application Form\r\n</li>\r\n<li>\r\nHealth / Medical Expenses Relief: <a href=\"http://www.revenue.ie\">Read more (www.revenue.ie) </a>/ Download Application Form\r\n</li>\r\n<li>\r\nEuropean Health Insurance Card: <a href=\"http://www.ehic.ie\">www.ehic.ie</a>\r\n</li>\r\n</ul>', 'text', '', ''),
(10, 'Other Useful Links', '<ul>\r\n<li>\r\nVHI Healthcare – <a href=\"http://www.vhi.ie\">www.vhi.ie</a>\r\n</li>\r\n<li>\r\nQuinn Healthcare – <a href=\"http://www.quinn-healthcare.com\">www.quinn-healthcare.com</a>\r\n</li>\r\n<li>\r\nVivas Health – <a href=\"http://www.vivas.ie\">www.vivas.ie</a>\r\n</li>\r\n<li>\r\nHibernian Aviva Health – <a href=\"http://www.hibernianavivahealth.ie\">www.hibernianavivahealth.ie</a>\r\n</li>\r\n<li>\r\nQualifying for a disabled driving card.  \r\n<br/><a href=http://www.citizensinformation.ie/en/travel_and_recreation/traffic_and_parking/disabled_persons_parking_card.html\">http://www.citizensinformation.ie/en/travel_and_recreation/traffic_and_parking/disabled_persons_parking_card.html</a>\r\n</li>\r\n<li>\r\nHSE, Health Service Executive – <a href=\"http://www.hse.ie\">www.hse.ie</a>\r\n</li>\r\n<li>\r\nDept of Health and Children – <a href=\"http://www.dohc.ie\">www.dohc.ie</a>\r\n</li>\r\n<li>\r\nNTPF  the national treatment purchase plan – <a href=\"http://www.ntpf.ie\">www.ntpf.ie</a>\r\n</li>\r\n<li>\r\nCheck your eligibility for free Cervical Smear test – <a href=\"http://www.cervicalcheck.ie\">www.cervicalcheck.ie</a>\r\n</li>\r\n</ul>\r\n<br />\r\n<br />\r\n** If you have ANY symptoms please make an urgent appointment or walk in during opening times**', 'text', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `titre`, `texte`, `type`, `photo`, `link`) VALUES
(20, 'Oncologist', 'Dr. James Wilson', 'photo and text', 'dr_wilson.jpg', ''),
(21, 'Diagnostician', 'Dr. Gregory House', 'photo and text', 'dr_house.jpg', ''),
(22, 'Endocrinologist', 'Dr. Lisa Cuddy', 'photo and text', 'dr_cuddy.jpg', ''),
(30, 'Neurologist', 'Dr. Eric Foreman', 'photo and text', 'dr_foreman.jpg', ''),
(31, 'Immunologist', 'Dr. Allison Cameron', 'photo and text', 'dr_cameron.jpg', ''),
(32, 'Surgeon', 'Dr. Robert Chase', 'photo and text', 'dr_chase.jpg', ''),
(40, 'Sports Medicine Specialist', 'Dr. Lawrence Kutner', 'photo and text', 'dr_kutner.jpg', ''),
(41, 'Internist', 'Dr. Remy Hadley', 'photo and text', 'dr_hadley.jpg', ''),
(42, 'Plastic Surgeon', 'Dr. Chris Taub', 'photo and text', 'dr_taub.jpg', '');

-- --------------------------------------------------------

--
-- Structure de la table `timetable`
--

CREATE TABLE `timetable` (
  `Monday` text NOT NULL,
  `Tuesday` text NOT NULL,
  `Wednesday` text NOT NULL,
  `Thursday` text NOT NULL,
  `Friday` text NOT NULL,
  `Saturday` text NOT NULL,
  `Sunday` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `timetable`
--

INSERT INTO `timetable` (`Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
('8am - 6pm', '8am - 6pm', '8am - 6pm', '8am - 6pm', '8am - 6pm', '8am - 6pm', '10am - 4pm');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `private_member`
--
ALTER TABLE `private_member`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `private_member`
--
ALTER TABLE `private_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
