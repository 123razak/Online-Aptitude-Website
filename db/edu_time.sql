-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2015 at 11:49 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `edu_time`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE IF NOT EXISTS `mst_admin` (
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`loginid`, `pass`) VALUES
('pgdca', 'pgdca'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_log_det`
--

CREATE TABLE IF NOT EXISTS `mst_log_det` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_ses` varchar(100) NOT NULL,
  `log_stu_id` int(11) NOT NULL,
  `log_no` int(11) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `mst_log_det`
--

INSERT INTO `mst_log_det` (`log_id`, `log_ses`, `log_stu_id`, `log_no`) VALUES
(68, 'ruban', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'An HTML file written in notepad can be saved with an extension?', 'htm', 'html', 'Any of the above', 'None of the above', 3),
(17, 8, 'Which of the following is true about links by default?', 'An unvisited link is underlined and blue', 'A visited link is underlined and red', 'An active link is underlined and purple', 'All the above', 1),
(18, 8, 'The href attribute in the link tag specifies the', 'Destination of a link', 'Link', 'Hypertext', 'None of the above', 1),
(19, 8, 'HTML Event Attributes onunload fires', 'when the browser window has been closed', 'when the browser window is minimized', 'when the browser window has changed focus to other window', 'After the page is finished loading', 1),
(20, 8, 'HTML Form Events ___________, fires the moment that the element loses focus', 'onblur ', 'onfocus', 'onchange', 'onlostfocus', 1),
(22, 8, 'Which of the following tags below are used for a multi-line text input control?', 'textml tag', 'text tag', 'textarea tag', 'Both b and c above', 3),
(23, 8, 'What is cell padding?', 'Used to separate cell walls from their contents', 'Used to set space between cells', 'Both a and b above', 'Used to provide width to a cell', 1),
(24, 8, 'What are meta tags used for?', 'To store information usually relevant to browsers and search engines', 'To only store information usually relevant to browsers', 'To only store information about search engines', 'To store information about external links', 1),
(25, 8, 'When you use a heading tag in a document, what does the Web browser assume?', 'Heading information is to appear in bold letters', 'Heading information is to appear on its own line', 'Heading information has a hyperlink', 'Heading information is shown as a size six', 4),
(26, 8, 'What is mean by DTD?', 'Document type data', 'Data type definition\n', 'Document type definition', 'Definition type document', 3),
(41, 8, 'DOM stands for ?', 'Document object model', ' Data object model', ' Document Oriented model ', 'Data oriented mode', 1),
(42, 8, 'Text/Html is called the __________ of the page ?', 'content type', ' MIME type', ' content type/MIME type ', 'none of these', 3),
(43, 8, 'Which HTML attribute is used to define inline styles?', 'font', 'class', 'styles', 'style', 4),
(44, 8, 'Which is the correct CSS syntax?', 'body:color=black', '{body;color:black}', '{body:color=black(body}', 'body {color: black}', 1),
(45, 8, 'What does an HTML tag do?', 'It specifies formatting and layout instructions for your web page', 'It hides programming instructions from view', 'It determines the organizational structure of your Web site', 'It connects your web site to an operating environment', 1),
(46, 8, 'When you use a heading tag in a document, what does the Web browser assumes?', 'Heading information is to appear in bold letters', 'Heading information is to appear on its own line', 'Heading information has a hyperlink', 'Heading information is shown as a size six', 2),
(47, 8, 'What is meant by the cellspacing attribute?', 'It makes the cell span more than one column', 'It specifies the space between the cell wall and the contents of the cell', 'It specifies the space between two cells', 'It makes the cell span more than one row', 3),
(48, 8, 'Which of the following attributes comes in handy when borders have to be put between groups of columns instead of every column?', 'col', 'colgroup', 'rowspan', 'row', 2),
(49, 8, 'A few lines in an HTML paragraph are to be formatted differently from the rest of the lines. Which tag will assist in this?', 'div', 'p', ' span', 'format', 2),
(50, 8, 'What is the difference between XML and HTML?', 'HTML is used for exchanging data, XML is not', 'XML is used for exchanging data, HTML is not', 'HTML can have user defined tags, XML cannot', 'none of these', 2),
(51, 8, 'Who is known as the father of WWW (World Wide Web) ?', 'Charles Darwin', 'Tim Thompson', 'Tim Berners-Lee', 'Robert Cailliau', 3),
(52, 8, 'What does a Markup tag tells the web browser?', 'How to organize the page', 'How to display message box on page', 'How to display the page', 'None of these', 3),
(53, 8, 'Which organization defines the Web Standards?', 'Apple Inc.', 'World Wide Web Consortium(W3C)', 'Microsoft Corporation', 'IBM Corporation', 2),
(54, 8, 'How will you define a homepage?', 'Is is an index of encyclopedia articles', 'It is the first page of a website', 'It is a place where all the data of internet is stored', 'It is required for the access of internet', 2),
(55, 8, 'What is the traditional file name of a homepage of a website?', 'home.html', 'index.html', 'web.html', 'front.html', 2),
(56, 8, 'What is the basic fundamental block of an HTML page?', 'HTML Element', 'HTML body', 'HTML Attribute', 'HTML tag', 4),
(57, 8, 'What does an HTML tag do?', 'It determines the organizational structure of your Web site', 'It connects your web site to an operating environment', 'It hides programming instructions from view', 'It specifies formatting and layout instructions for your web page', 4),
(58, 8, 'Which one among these connects web pages?', 'Link', 'Connector', 'Hyperlink', 'None of these', 3),
(59, 8, 'HTML is the subset of ', 'SGML', 'SGMT', 'SGMD', 'None of these', 1),
(60, 8, 'Amongst these, which one can be used for writing HTML code?', 'Notepad++', 'Microsoft Word', 'Windows Media Player', 'None of these', 1),
(61, 8, ' CSS stands for?', 'Central Style Sheets', 'Common Style Sheets', 'Cascading Style Sheets', 'Control Style Sheets', 3),
(62, 8, ' What CSS define in HTML?', 'How to save HTML elements', 'How to send HTML elements', 'How to made HTML elements', 'How to display HTML elements', 4),
(63, 8, ' What is the correct HTML for referring to an external style sheet?', 'background-color:', 'bgcolor:', 'color:', 'None of these', 1),
(64, 8, ' Where in an HTML document is the correct place to refer to an external style sheet?', 'At the end of the document', 'At the top of the document', 'In the section', 'In the section', 4),
(65, 8, ' Which HTML attribute is used to define inline styles?', 'class', 'styles', 'style', 'Font', 3),
(66, 8, ' Which is the correct CSS syntax?', '{body:color=black(body}', 'body {color: black}', 'body:color=black', '{body;color:black}', 2),
(67, 8, ' Which property is used to change the background color?', 'background-color:', 'bgcolor:', 'color:', 'None of these', 1),
(68, 8, ' How do you add a background color for all <h1> elements?', 'h1.all {background-color:#FFFFFF}', 'h1 {background-color:#FFFFFF}', 'all.h1 {background-color:#FFFFFF}', 'None of these', 2),
(69, 8, ' Which CSS property controls the text size?', 'font-size', 'font-style', 'text-style', 'text-size', 1),
(70, 8, ' How do you display hyperlinks without an underline?', 'a {text-decoration:none}', 'a {text-decoration:no underline}', 'a {decoration:no underline}', 'a {underline:none}', 1),
(71, 8, ' How do you make each word in a text start with a capital letter?', 'text-transform:capitalize', 'You can’t do that with CSS', 'text-transform:uppercase', 'None of these', 1),
(72, 8, ' How do you change the font of an element?', 'f:', 'font-family:', 'font=', 'None of these', 2),
(73, 8, ' How do you make the text bold?', 'font-weight:bold', 'style:bold', 'font:b', 'None of these', 1),
(74, 8, ' How do you change the left margin of an element?', 'text-indent:', 'indent:', 'margin:', 'margin-left:', 4),
(75, 8, ' How do you make a list that lists its items with squares?', 'list-type: square', 'list-style-type: square', 'type: 2', 'type: square', 2),
(76, 8, ' 1. Which CSS property can provide to add an effect when changing from one style to another,without using Flash animations or javascript? ', ' Associations', ' Transitions', ' transistor', 'None of these', 2),
(77, 8, ' Which browser can supports the transition property? ', ' Internet Explorer 10', ' Firefox', ' Chrome', ' All of the above', 4),
(78, 8, ' Transition effects can be applied to a wide variety of CSS properties, including ?', ' background-color', ' opacity', ' height', ' All of the above', 4),
(79, 8, 'In the transition there are two things must be specify: \r\n\r\ni).Specify the CSS property you want to add an effect to\r\n\r\n ii).Specify the duration of t', ' i and ii ', ' ii and iii ', ' iii and iv', 'i and iv ', 2),
(80, 8, ' To add a transitional effect for more than one style, add more properties, separated by ?', ' commas', ' colon', ' semicolon', 'None of these', 1),
(81, 8, ' A shorthand property for setting the four transition properties into a single property ?', ' transition-property', ' transition', ' transition-duration', ' transition-delay', 2),
(82, 8, ' Describes how the speed during a transition will be calculated. Default "ease" ?', ' transition-property', ' transition-timing-function', ' transition-duration', ' transition-delay', 2),
(83, 8, ' Negative values for transition-duration are treated as ?', '0', '1', '2', '3', 1),
(84, 8, ' The transition-duration property is in fact the only property required ?', ' to create a transition effect ', ' as if transition-property is not supplied ', ' all properties that are able to undergo a transition', ' All of the above', 4),
(85, 8, 'The transition properties are as follow:\r\n i): transition-property\r\n ii):transition-duration\r\n iii):transition-timing-function\r\n iv):transition-delay ', 'i, iii and iv only', 'i, ii, and iii only', 'i, ii, iii and iv onl', 'None of these', 2),
(86, 8, 'What Is Java ?', '123', '456', '789', '012', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE IF NOT EXISTS `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0),
('raj', 8, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('raj', 8, '0000-00-00', 1),
('raj', 8, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('raj', 9, '0000-00-00', 1),
('raj', 8, '0000-00-00', 1),
('raj', 8, '0000-00-00', 2),
('raj', 8, '0000-00-00', 1),
('raj', 8, '0000-00-00', 0),
('raj', 8, '0000-00-00', 3),
('raj', 8, '0000-00-00', 2),
('raj', 8, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('raj', 8, '0000-00-00', 1),
('raj', 8, '0000-00-00', 1),
('raj', 8, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('test', 13, '0000-00-00', 1),
('test', 13, '0000-00-00', 2),
('test', 8, '0000-00-00', 5),
('test', 13, '0000-00-00', 2),
('aravind', 8, '0000-00-00', 4),
('aravind', 9, '0000-00-00', 3),
('', 14, '0000-00-00', 1),
('ruban', 8, '0000-00-00', 1),
('ruban', 8, '0000-00-00', 1),
('ruban', 8, '0000-00-00', 0),
('ruban', 8, '0000-00-00', 0),
('test', 8, '0000-00-00', 3),
('ruban', 8, '0000-00-00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  `sub_file` varchar(100) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`, `sub_file`) VALUES
(1, 'Aptitude', 'pdf/Smart Attendance System.pptx');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'Aptitude Test', '100');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S''nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com'),
(15, 'ruban', 'ruban', 'ruban', 'madurai', 'madurai', 2147483647, 'rubankutti@gmail.com'),
(16, 'test', 'test', 'test', 'madurai', 'test', 0, 'rrere@sddsdsd.com'),
(17, 'aravind', 'aravind', 'aravind', 'madurai', 'madurai', 0, 'some@some.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'An HTML file written in notepad can be saved with an extension?', 'htm', 'html', 'Any of the above', 'None of the above', 3, 3),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'Which of the following is true about links by default?', 'An unvisited link is underlined and blue', 'A visited link is underlined and red', 'An active link is underlined and purple', 'All the above', 1, 4),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'The href attribute in the link tag specifies the', 'Destination of a link', 'Link', 'Hypertext', 'None of the above', 1, 3),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'HTML Event Attributes onunload fires', 'when the browser window has been closed', 'when the browser window is minimized', 'when the browser window has changed focus to other', 'After the page is finished loading', 1, 2),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'HTML Form Events ___________, fires the moment that the element loses focus', 'onblur ', 'onfocus', 'onchange', 'onlostfocus', 1, 1),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'Which of the following tags below are used for a multi-line text input control?', 'textml tag', 'text tag', 'textarea tag', 'Both b and c above', 3, 3),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'What is cell padding?', 'Used to separate cell walls from their contents', 'Used to set space between cells', 'Both a and b above', 'Used to provide width to a cell', 1, 3),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'What are meta tags used for?', 'To store information usually relevant to browsers ', 'To only store information usually relevant to brow', 'To only store information about search engines', 'To store information about external links', 1, 2),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'When you use a heading tag in a document, what does the Web browser assume?', 'Heading information is to appear in bold letters', 'Heading information is to appear on its own line', 'Heading information has a hyperlink', 'Heading information is shown as a size six', 4, 4),
('7imndf933jv6itbeo3lgf0lkn3', 8, 'What is mean by DTD?', 'Document type data', 'Data type definition\n', 'Document type definition', 'Definition type document', 3, 3),
('irpkevftfk51bd5jsdglppgmk4', 8, 'An HTML file written in notepad can be saved with an extension?', 'htm', 'html', 'Any of the above', 'None of the above', 3, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
