﻿-- Script containing the list of countries together with flags
-- Copyright (C) 2011 Cristian Romanescu
-- This program is free software; you can redistribute it and/or modify 
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or 
-- (at your option) any later version.
-- This program is distributed in the hope that it will be useful, 
-- but WITHOUT ANY WARRANTY; without even the implied warranty of 
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
-- General Public License for more details.
-- You should have received a copy of the GNU General Public License 
-- along with this program; if not, see <http://www.gnu.org/licenses>.
-- Additional permission under GNU GPL version 3 section 7
-- If you modify this Program, or any covered work, by linking or 
-- combining it with countries scripts (or a modified version of 
-- that library), containing parts covered by the terms of GPL v3, 
-- the licensors of this Program grant you additional permission 
-- to convey the resulting work. 
-- {Corresponding Source for a non-source form of such a 
-- combination shall include the source code for the parts 
-- of countries script used as well as that of the covered work.}


CREATE TABLE `countries` (
  `id` SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique ID of the country. Primary Key',
  `active` TINYINT(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use this country in applications',
  `code3l` VARCHAR(3) COLLATE utf8_general_ci NOT NULL COMMENT 'ISO 3-letter code of the country',
  `code2l` VARCHAR(2) COLLATE utf8_general_ci NOT NULL COMMENT 'ISO 2-letter code',
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL COMMENT 'Name of the country in English',
  `long_name` VARCHAR(64) COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Country\'s full name in english or original language',
  `icon_medium` VARCHAR(255) COLLATE utf8_general_ci DEFAULT 'unknown' COMMENT 'Relative path to the large image of country\'s flag',
  `icon_small` VARCHAR(255) COLLATE utf8_general_ci NOT NULL DEFAULT 'unknown' COMMENT 'Relative path to the medium image of country\'s flag',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code3l`),
  UNIQUE KEY `idx_name` (`name`),
  UNIQUE KEY `code3l` (`code3l`)
)ENGINE=InnoDB
AUTO_INCREMENT=250 AVG_ROW_LENGTH=434 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='Hold the list of countries';
COMMIT;



/* Data for the `countries` table  (Records 1 - 249) */

INSERT INTO `countries` (`id`, `active`, `code3l`, `code2l`, `name`, `long_name`, `icon_medium`, `icon_small`) VALUES 
  (1, 1, 'AFG', 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'flags/afghanistan_medium.png', 'flags/afghanistan_small.png'),
  (2, 1, 'ALB', 'AL', 'Albania', 'Republic of Albania', 'flags/albania_medium.png', 'flags/albania_small.png'),
  (3, 1, 'DZA', 'DZ', 'Algeria', 'People''s Democratic Republic of Algeria', 'flags/algeria_medium.png', 'flags/algeria_small.png'),
  (4, 1, 'AND', 'AD', 'Andorra', 'Principality of Andorra', 'flags/andorra_medium.png', 'flags/andorra_small.png'),
  (5, 1, 'AGO', 'AO', 'Angola', 'Republic of Angola', 'flags/angola_medium.png', 'flags/angola_small.png'),
  (6, 1, 'ATG', 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'flags/antigua_and_barbuda_medium.png', 'flags/antigua_and_barbuda_small.png'),
  (7, 1, 'ARG', 'AR', 'Argentina', 'República Argentina', 'flags/argentina_medium.png', 'flags/argentina_small.png'),
  (8, 1, 'ARM', 'AM', 'Armenia', 'Republic of Armenia', 'flags/armenia_medium.png', 'flags/armenia_small.png'),
  (9, 1, 'AUS', 'AU', 'Australia', 'Australia', 'flags/australia_medium.png', 'flags/australia_small.png'),
  (10, 1, 'AUT', 'AT', 'Austria', 'Republic of Austria', 'flags/austria_medium.png', 'flags/austria_small.png'),
  (11, 1, 'AZE', 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'flags/azerbaijan_medium.png', 'flags/azerbaijan_small.png'),
  (12, 1, 'BHS', 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'flags/bahamas_medium.png', 'flags/bahamas_small.png'),
  (13, 1, 'BHR', 'BH', 'Bahrain', 'Kingdom of Bahrain', 'flags/bahrain_medium.png', 'flags/bahrain_small.png'),
  (14, 1, 'BGD', 'BD', 'Bangladesh', 'People''s Republic of Bangladesh', 'flags/bangladesh_medium.png', 'flags/bangladesh_small.png'),
  (15, 1, 'BRB', 'BB', 'Barbados', 'Republic of Belarus', 'flags/barbados_medium.png', 'flags/barbados_small.png'),
  (16, 1, 'BLR', 'BY', 'Belarus', 'Republic of Belarus', 'flags/belarus_medium.png', 'flags/belarus_small.png'),
  (17, 1, 'BEL', 'BE', 'Belgium', 'Kingdom of Belgium', 'flags/belgium_medium.png', 'flags/belgium_small.png'),
  (18, 1, 'BLZ', 'BZ', 'Belize', 'Belize', 'flags/belize_medium.png', 'flags/belize_small.png'),
  (19, 1, 'BEN', 'BJ', 'Benin', 'Republic of Benin', 'flags/benin_medium.png', 'flags/benin_small.png'),
  (20, 1, 'BTN', 'BT', 'Bhutan', 'Kingdom of Bhutan', 'flags/bhutan_medium.png', 'flags/bhutan_small.png'),
  (21, 1, 'BIH', 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'flags/bosnia_and_herzegovina_medium.png', 'flags/bosnia_and_herzegovina_small.png'),
  (22, 1, 'BWA', 'BW', 'Botswana', 'Republic of Botswana', 'flags/botswana_medium.png', 'flags/botswana_small.png'),
  (23, 1, 'BRA', 'BR', 'Brazil', 'Federative Republic of Brazil', 'flags/brazil_medium.png', 'flags/brazil_small.png'),
  (24, 1, 'BRN', 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'flags/brunei_darussalam_medium.png', 'flags/brunei_darussalam_small.png'),
  (25, 1, 'BGR', 'BG', 'Bulgaria', 'Republic of Bulgaria', 'flags/bulgaria_medium.png', 'flags/bulgaria_small.png'),
  (26, 1, 'BFA', 'BF', 'Burkina Faso', 'Burkina Faso', 'flags/burkina_faso_medium.png', 'flags/burkina_faso_small.png'),
  (27, 1, 'BDI', 'BI', 'Burundi', 'Republic of Burundi', 'flags/burundi_medium.png', 'flags/burundi_small.png'),
  (28, 1, 'KHM', 'KH', 'Cambodia', 'Kingdom of Cambodia', 'flags/cambodia_medium.png', 'flags/cambodia_small.png'),
  (29, 1, 'CMR', 'CM', 'Cameroon', 'Republic of Cameroon', 'flags/cameroon_medium.png', 'flags/cameroon_small.png'),
  (30, 1, 'CAN', 'CA', 'Canada', 'Canada', 'flags/canada_medium.png', 'flags/canada_small.png'),
  (31, 1, 'CPV', 'CV', 'Cape Verde', 'Republic of Cape Verde', 'flags/cape_verde_medium.png', 'flags/cape_verde_small.png'),
  (32, 1, 'CAF', 'CF', 'Central African Republic', 'Central African Republic', 'flags/central_african_republic_medium.png', 'flags/central_african_republic_small.png'),
  (33, 1, 'TCD', 'TD', 'Chad', 'Republic of Chad', 'flags/chad_medium.png', 'flags/chad_small.png'),
  (34, 1, 'CHL', 'CL', 'Chile', 'Republic of Chile', 'flags/chile_medium.png', 'flags/chile_small.png'),
  (35, 1, 'CHN', 'CN', 'China', 'People''s Republic of China', 'flags/china_medium.png', 'flags/china_small.png'),
  (36, 1, 'COL', 'CO', 'Colombia', 'Republic of Colombia', 'flags/colombia_medium.png', 'flags/colombia_small.png'),
  (37, 1, 'COM', 'KM', 'Comoros', 'Union of the Comoros', 'flags/comoros_medium.png', 'flags/comoros_small.png'),
  (38, 1, 'COG', 'CG', 'Congo', 'Congo, Democratic Republic of the', 'flags/congo_medium.png', 'flags/congo_small.png'),
  (39, 1, 'CRI', 'CR', 'Costa Rica', 'Republic of Costa Rica', 'flags/costa_rica_medium.png', 'flags/costa_rica_small.png'),
  (40, 1, 'HRV', 'HR', 'Croatia', 'Republic of Croatia', 'flags/croatia_medium.png', 'flags/croatia_small.png'),
  (41, 1, 'CUB', 'CU', 'Cuba', 'Republic of Cuba', 'flags/cuba_medium.png', 'flags/cuba_small.png'),
  (42, 1, 'CYP', 'CY', 'Cyprus', 'Republic of Cyprus', 'flags/cyprus_medium.png', 'flags/cyprus_small.png'),
  (43, 1, 'CZE', 'CZ', 'Czech Republic', 'Czech Republic', 'flags/czech_republic_medium.png', 'flags/czech_republic_small.png'),
  (44, 1, 'CIV', 'CI', 'Côte d''Ivoire', 'Republic of Côte d''Ivoire', 'flags/cote_d_ivoire_medium.png', 'flags/cote_d_ivoire_small.png'),
  (45, 1, 'DNK', 'DK', 'Denmark', 'Kingdom of Denmark', 'flags/denmark_medium.png', 'flags/denmark_small.png'),
  (46, 1, 'DJI', 'DJ', 'Djibouti', 'Republic of Djibouti', 'flags/djibouti_medium.png', 'flags/djibouti_small.png'),
  (47, 1, 'DMA', 'DM', 'Dominica', 'Commonwealth of Dominica', 'flags/dominica_medium.png', 'flags/dominica_small.png'),
  (48, 1, 'DOM', 'DO', 'Dominican Republic', 'Dominican Republic', 'flags/dominican_republic_medium.png', 'flags/dominican_republic_small.png'),
  (49, 1, 'ECU', 'EC', 'Ecuador', 'Republic of Ecuador', 'flags/ecuador_medium.png', 'flags/ecuador_small.png'),
  (50, 1, 'EGY', 'EG', 'Egypt', 'Arab Republic of Egypt', 'flags/egypt_medium.png', 'flags/egypt_small.png'),
  (51, 1, 'SLV', 'SV', 'El Salvador', 'Republic of El Salvador', 'flags/el_salvador_medium.png', 'flags/el_salvador_small.png'),
  (52, 1, 'GNQ', 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'flags/equatorial_guinea_medium.png', 'flags/equatorial_guinea_small.png'),
  (53, 1, 'ERI', 'ER', 'Eritrea', 'State of Eritrea', 'flags/eritrea_medium.png', 'flags/eritrea_small.png'),
  (54, 1, 'EST', 'EE', 'Estonia', 'Republic of Estonia', 'flags/estonia_medium.png', 'flags/estonia_small.png'),
  (55, 1, 'ETH', 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'flags/ethiopia_medium.png', 'flags/ethiopia_small.png'),
  (56, 1, 'FJI', 'FJ', 'Fiji', 'Republic of the Fiji Islands', 'flags/fiji_medium.png', 'flags/fiji_small.png'),
  (57, 1, 'FIN', 'FI', 'Finland', 'Republic of Finland', 'flags/finland_medium.png', 'flags/finland_small.png'),
  (58, 1, 'FRA', 'FR', 'France', 'French Republic', 'flags/france_medium.png', 'flags/france_small.png'),
  (59, 1, 'GAB', 'GA', 'Gabon', 'Gabonese Republic', 'flags/gabon_medium.png', 'flags/gabon_small.png'),
  (60, 1, 'GMB', 'GM', 'Gambia', 'Republic of The Gambia', 'flags/gambia_medium.png', 'flags/gambia_small.png'),
  (61, 1, 'GEO', 'GE', 'Georgia', 'Georgia', 'flags/georgia_medium.png', 'flags/georgia_small.png'),
  (62, 1, 'DEU', 'DE', 'Germany', 'Federal Republic of Germany', 'flags/germany_medium.png', 'flags/germany_small.png'),
  (63, 1, 'GHA', 'GH', 'Ghana', 'Republic of Ghana', 'flags/ghana_medium.png', 'flags/ghana_small.png'),
  (64, 1, 'GRC', 'GR', 'Greece', 'Hellenic Republic', 'flags/greece_medium.png', 'flags/greece_small.png'),
  (65, 1, 'GRD', 'GD', 'Grenada', 'Grenada', 'flags/grenada_medium.png', 'flags/grenada_small.png'),
  (66, 1, 'GTM', 'GT', 'Guatemala', 'Republic of Guatemala', 'flags/guatemala_medium.png', 'flags/guatemala_small.png'),
  (67, 1, 'GIN', 'GN', 'Guinea', 'Republic of Guinea', 'flags/guinea_medium.png', 'flags/guinea_small.png'),
  (68, 1, 'GNB', 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'flags/guinea-bissau_medium.png', 'flags/guinea-bissau_small.png'),
  (69, 1, 'GUY', 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'flags/guyana_medium.png', 'flags/guyana_small.png'),
  (70, 1, 'HTI', 'HT', 'Haiti', 'Republic of Haiti', 'flags/haiti_medium.png', 'flags/haiti_small.png'),
  (71, 1, 'HND', 'HN', 'Honduras', 'Republic of Honduras', 'flags/honduras_medium.png', 'flags/honduras_small.png'),
  (72, 1, 'HUN', 'HU', 'Hungary', 'Republic of Hungary', 'flags/hungary_medium.png', 'flags/hungary_small.png'),
  (73, 1, 'ISL', 'IS', 'Iceland', 'Republic of Iceland', 'flags/iceland_medium.png', 'flags/iceland_small.png'),
  (74, 1, 'IND', 'IN', 'India', 'Republic of India', 'flags/india_medium.png', 'flags/india_small.png'),
  (75, 1, 'IDN', 'ID', 'Indonesia', 'Republic of Indonesia', 'flags/indonesia_medium.png', 'flags/indonesia_small.png'),
  (76, 1, 'IRQ', 'IQ', 'Iraq', 'Republic of Iraq', 'flags/iraq_medium.png', 'flags/iraq_small.png'),
  (77, 1, 'IRL', 'IE', 'Ireland', 'Ireland', 'flags/ireland_medium.png', 'flags/ireland_small.png'),
  (78, 1, 'ISR', 'IL', 'Israel', 'State of Israel', 'flags/israel_medium.png', 'flags/israel_small.png'),
  (79, 1, 'ITA', 'IT', 'Italy', 'Italian Republic', 'flags/italy_medium.png', 'flags/italy_small.png'),
  (80, 1, 'JAM', 'JM', 'Jamaica', 'Jamaica', 'flags/jamaica_medium.png', 'flags/jamaica_small.png'),
  (81, 1, 'JPN', 'JP', 'Japan', 'Japan', 'flags/japan_medium.png', 'flags/japan_small.png'),
  (82, 1, 'JOR', 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'flags/jordan_medium.png', 'flags/jordan_small.png'),
  (83, 1, 'KAZ', 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'flags/kazakhstan_medium.png', 'flags/kazakhstan_small.png'),
  (84, 1, 'KEN', 'KE', 'Kenya', 'Republic of Kenya', 'flags/kenya_medium.png', 'flags/kenya_small.png'),
  (85, 1, 'KIR', 'KI', 'Kiribati', 'Republic of Kiribati', 'flags/kiribati_medium.png', 'flags/kiribati_small.png'),
  (86, 1, 'KWT', 'KW', 'Kuwait', 'State of Kuwait', 'flags/kuwait_medium.png', 'flags/kuwait_small.png'),
  (87, 1, 'KGZ', 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'flags/kyrgyzstan_medium.png', 'flags/kyrgyzstan_small.png'),
  (88, 1, 'LAO', 'LA', 'Lao People''s Democratic Republic', 'Lao People''s Democratic Republic', 'flags/lao_people_s_democratic_republic_medium.png', 'flags/lao_people_s_democratic_republic_small.png'),
  (89, 1, 'LVA', 'LV', 'Latvia', 'Republic of Latvia', 'flags/latvia_medium.png', 'flags/latvia_small.png'),
  (90, 1, 'LBN', 'LB', 'Lebanon', 'Lebanese Republic', 'flags/lebanon_medium.png', 'flags/lebanon_small.png'),
  (91, 1, 'LSO', 'LS', 'Lesotho', 'Kingdom of Lesotho', 'flags/lesotho_medium.png', 'flags/lesotho_small.png'),
  (92, 1, 'LBR', 'LR', 'Liberia', 'Republic of Liberia', 'flags/liberia_medium.png', 'flags/liberia_small.png'),
  (93, 1, 'LBY', 'LY', 'Libya', 'Great Socialist People''s Libyan Arab Jamahiriya', 'flags/libyan_arab_jamahiriya_medium.png', 'flags/libyan_arab_jamahiriya_small.png'),
  (94, 1, 'LIE', 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'flags/liechtenstein_medium.png', 'flags/liechtenstein_small.png'),
  (95, 1, 'LTU', 'LT', 'Lithuania', 'Republic of Lithuania', 'flags/lithuania_medium.png', 'flags/lithuania_small.png'),
  (96, 1, 'LUX', 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'flags/luxembourg_medium.png', 'flags/luxembourg_small.png'),
  (97, 1, 'MDG', 'MG', 'Madagascar', 'Republic of Madagascar', 'flags/madagascar_medium.png', 'flags/madagascar_small.png'),
  (98, 1, 'MWI', 'MW', 'Malawi', 'Republic of Malawi', 'flags/malawi_medium.png', 'flags/malawi_small.png'),
  (99, 1, 'MYS', 'MY', 'Malaysia', 'Malaysia', 'flags/malaysia_medium.png', 'flags/malaysia_small.png'),
  (100, 1, 'MDV', 'MV', 'Maldives', 'Republic of Maldives', 'flags/maldives_medium.png', 'flags/maldives_small.png'),
  (101, 1, 'MLI', 'ML', 'Mali', 'Republic of Mali', 'flags/mali_medium.png', 'flags/mali_small.png'),
  (102, 1, 'MLT', 'MT', 'Malta', 'Republic of Malta', 'flags/malta_medium.png', 'flags/malta_small.png'),
  (103, 1, 'MHL', 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'flags/marshall_islands_medium.png', 'flags/marshall_islands_small.png'),
  (104, 1, 'MRT', 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'flags/mauritania_medium.png', 'flags/mauritania_small.png'),
  (105, 1, 'MUS', 'MU', 'Mauritius', 'Republic of Mauritius', 'flags/mauritius_medium.png', 'flags/mauritius_small.png'),
  (106, 1, 'MEX', 'MX', 'Mexico', 'United Mexican States', 'flags/mexico_medium.png', 'flags/mexico_small.png'),
  (107, 1, 'MCO', 'MC', 'Monaco', 'Principality of Monaco', 'flags/monaco_medium.png', 'flags/monaco_small.png'),
  (108, 1, 'MNG', 'MN', 'Mongolia', 'Mongolia', 'flags/mongolia_medium.png', 'flags/mongolia_small.png'),
  (109, 1, 'MNE', 'ME', 'Montenegro', 'Montenegro', 'flags/montenegro_medium.png', 'flags/montenegro_small.png'),
  (110, 1, 'MAR', 'MA', 'Morocco', 'Kingdom of Morocco', 'flags/morocco_medium.png', 'flags/morocco_small.png'),
  (111, 1, 'MOZ', 'MZ', 'Mozambique', 'Republic of Mozambique', 'flags/mozambique_medium.png', 'flags/mozambique_small.png'),
  (112, 1, 'MMR', 'MM', 'Myanmar', 'Myanmar', 'flags/myanmar_medium.png', 'flags/myanmar_small.png'),
  (113, 1, 'NAM', 'NA', 'Namibia', 'Republic of Namibia', 'flags/namibia_medium.png', 'flags/namibia_small.png'),
  (114, 1, 'NRU', 'NR', 'Nauru', 'Republic of Nauru', 'flags/nauru_medium.png', 'flags/nauru_small.png'),
  (115, 1, 'NPL', 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'flags/nepal_medium.png', 'flags/nepal_small.png'),
  (116, 1, 'NLD', 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'flags/netherlands_medium.png', 'flags/netherlands_small.png'),
  (117, 1, 'NZL', 'NZ', 'New Zealand', 'New Zealand', 'flags/new_zealand_medium.png', 'flags/new_zealand_small.png'),
  (118, 1, 'NIC', 'NI', 'Nicaragua', 'Republic of Nicaragua', 'flags/nicaragua_medium.png', 'flags/nicaragua_small.png'),
  (119, 1, 'NER', 'NE', 'Niger', 'Republic of Niger', 'flags/niger_medium.png', 'flags/niger_small.png'),
  (120, 1, 'NGA', 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'flags/nigeria_medium.png', 'flags/nigeria_small.png'),
  (121, 1, 'NOR', 'NO', 'Norway', 'Kingdom of Norway', 'flags/norway_medium.png', 'flags/norway_small.png'),
  (122, 1, 'OMN', 'OM', 'Oman', 'Sultanate of Oman', 'flags/oman_medium.png', 'flags/oman_small.png'),
  (123, 1, 'PAK', 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'flags/pakistan_medium.png', 'flags/pakistan_small.png'),
  (124, 1, 'PLW', 'PW', 'Palau', 'Republic of Palau', 'flags/palau_medium.png', 'flags/palau_small.png'),
  (125, 1, 'PAN', 'PA', 'Panama', 'Republic of Panama', 'flags/panama_medium.png', 'flags/panama_small.png'),
  (126, 1, 'PNG', 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'flags/papua_new_guinea_medium.png', 'flags/papua_new_guinea_small.png'),
  (127, 1, 'PRY', 'PY', 'Paraguay', 'Republic of Paraguay', 'flags/paraguay_medium.png', 'flags/paraguay_small.png'),
  (128, 1, 'PER', 'PE', 'Peru', 'Republic of Peru', 'flags/peru_medium.png', 'flags/peru_small.png'),
  (129, 1, 'PHL', 'PH', 'Philippines', 'Republic of the Philippines', 'flags/philippines_medium.png', 'flags/philippines_small.png'),
  (130, 1, 'POL', 'PL', 'Poland', 'Republic of Poland', 'flags/poland_medium.png', 'flags/poland_small.png'),
  (131, 1, 'PRT', 'PT', 'Portugal', 'Portuguese Republic', 'flags/portugal_medium.png', 'flags/portugal_small.png'),
  (132, 1, 'QAT', 'QA', 'Qatar', 'State of Qatar', 'flags/qatar_medium.png', 'flags/qatar_small.png'),
  (133, 1, 'ROU', 'RO', 'Romania', 'Romania', 'flags/romania_medium.png', 'flags/romania_small.png'),
  (134, 1, 'RUS', 'RU', 'Russian Federation', 'Russian Federation', 'flags/russian_federation_medium.png', 'flags/russian_federation_small.png'),
  (135, 1, 'RWA', 'RW', 'Rwanda', 'Republic of Rwanda', 'flags/rwanda_medium.png', 'flags/rwanda_small.png'),
  (136, 1, 'KNA', 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'flags/saint_kitts_and_nevis_medium.png', 'flags/saint_kitts_and_nevis_small.png'),
  (137, 1, 'LCA', 'LC', 'Saint Lucia', 'Saint Lucia', 'flags/saint_lucia_medium.png', 'flags/saint_lucia_small.png'),
  (138, 1, 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'flags/saint_vincent_and_the_grenadines_medium.png', 'flags/saint_vincent_and_the_grenadines_small.png'),
  (139, 1, 'WSM', 'WS', 'Samoa', 'Independent State of Samoa', 'flags/samoa_medium.png', 'flags/samoa_small.png'),
  (140, 1, 'SMR', 'SM', 'San Marino', 'Republic of San Marino', 'flags/san_marino_medium.png', 'flags/san_marino_small.png'),
  (141, 1, 'STP', 'ST', 'Sao Tome and Principe', 'Democratic Republic of São Tomé and Príncipe', 'flags/sao_tome_and_principe_medium.png', 'flags/sao_tome_and_principe_small.png'),
  (142, 1, 'SAU', 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'flags/saudi_arabia_medium.png', 'flags/saudi_arabia_small.png'),
  (143, 1, 'SEN', 'SN', 'Senegal', 'Republic of Senegal', 'flags/senegal_medium.png', 'flags/senegal_small.png'),
  (144, 1, 'SRB', 'RS', 'Serbia', 'Republic of Serbia', 'flags/serbia_medium.png', 'flags/serbia_small.png'),
  (145, 1, 'SYC', 'SC', 'Seychelles', 'Republic of Seychelles', 'flags/seychelles_medium.png', 'flags/seychelles_small.png'),
  (146, 1, 'SLE', 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'flags/sierra_leone_medium.png', 'flags/sierra_leone_small.png'),
  (147, 1, 'SGP', 'SG', 'Singapore', 'Republic of Singapore', 'flags/singapore_medium.png', 'flags/singapore_small.png'),
  (148, 1, 'SVK', 'SK', 'Slovakia', 'Slovak Republic', 'flags/slovakia_medium.png', 'flags/slovakia_small.png'),
  (149, 1, 'SVN', 'SI', 'Slovenia', 'Republic of Slovenia', 'flags/slovenia_medium.png', 'flags/slovenia_small.png'),
  (150, 1, 'SLB', 'SB', 'Solomon Islands', 'Solomon Islands', 'flags/solomon_islands_medium.png', 'flags/solomon_islands_small.png'),
  (151, 1, 'SOM', 'SO', 'Somalia', 'Republic of Somalia', 'flags/somalia_medium.png', 'flags/somalia_small.png'),
  (152, 1, 'ZAF', 'ZA', 'South Africa', 'Republic of South Africa', 'flags/south_africa_medium.png', 'flags/south_africa_small.png'),
  (153, 1, 'ESP', 'ES', 'Spain', 'Kingdom of Spain', 'flags/spain_medium.png', 'flags/spain_small.png'),
  (154, 1, 'LKA', 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'flags/sri_lanka_medium.png', 'flags/sri_lanka_small.png'),
  (155, 1, 'SDN', 'SD', 'Sudan', 'Republic of the Sudan', 'flags/sudan_medium.png', 'flags/sudan_small.png'),
  (156, 1, 'SUR', 'SR', 'Suriname', 'Republic of Suriname', 'flags/suriname_medium.png', 'flags/suriname_small.png'),
  (157, 1, 'SWZ', 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'flags/swaziland_medium.png', 'flags/swaziland_small.png'),
  (158, 1, 'SWE', 'SE', 'Sweden', 'Kingdom of Sweden', 'flags/sweden_medium.png', 'flags/sweden_small.png'),
  (159, 1, 'CHE', 'CH', 'Switzerland', 'Swiss Confederation', 'flags/switzerland_medium.png', 'flags/switzerland_small.png'),
  (160, 1, 'SYR', 'SY', 'Syrian Arab Republic', 'Syrian Arab Republic', 'flags/syrian_arab_republic_medium.png', 'flags/syrian_arab_republic_small.png'),
  (161, 1, 'TJK', 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'flags/tajikistan_medium.png', 'flags/tajikistan_small.png'),
  (162, 1, 'THA', 'TH', 'Thailand', 'Kingdom of Thailand', 'flags/thailand_medium.png', 'flags/thailand_small.png'),
  (163, 1, 'TLS', 'TL', 'Timor-Leste', 'Timor-Leste', 'flags/timor-leste_medium.png', 'flags/timor-leste_small.png'),
  (164, 1, 'TGO', 'TG', 'Togo', 'Togolese Republic', 'flags/togo_medium.png', 'flags/togo_small.png'),
  (165, 1, 'TON', 'TO', 'Tonga', 'Kingdom of Tonga', 'flags/tonga_medium.png', 'flags/tonga_small.png'),
  (166, 1, 'TTO', 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'flags/trinidad_and_tobago_medium.png', 'flags/trinidad_and_tobago_small.png'),
  (167, 1, 'TUN', 'TN', 'Tunisia', 'Republic of Tunisia', 'flags/tunisia_medium.png', 'flags/tunisia_small.png'),
  (168, 1, 'TUR', 'TR', 'Turkey', 'Republic of Turkey', 'flags/turkey_medium.png', 'flags/turkey_small.png'),
  (169, 1, 'TKM', 'TM', 'Turkmenistan', 'Turkmenistan', 'flags/turkmenistan_medium.png', 'flags/turkmenistan_small.png'),
  (170, 1, 'TUV', 'TV', 'Tuvalu', 'Tuvalu', 'flags/tuvalu_medium.png', 'flags/tuvalu_small.png'),
  (171, 1, 'UGA', 'UG', 'Uganda', 'Republic of Uganda', 'flags/uganda_medium.png', 'flags/uganda_small.png'),
  (172, 1, 'UKR', 'UA', 'Ukraine', 'Ukraine', 'flags/ukraine_medium.png', 'flags/ukraine_small.png'),
  (173, 1, 'ARE', 'AE', 'United Arab Emirates', 'United Arab Emirates', 'flags/united_arab_emirates_medium.png', 'flags/united_arab_emirates_small.png'),
  (174, 1, 'URY', 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'flags/uruguay_medium.png', 'flags/uruguay_small.png'),
  (175, 1, 'UZB', 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'flags/uzbekistan_medium.png', 'flags/uzbekistan_small.png'),
  (176, 1, 'VUT', 'VU', 'Vanuatu', 'Republic of Vanuatu', 'flags/vanuatu_medium.png', 'flags/vanuatu_small.png'),
  (177, 1, 'VNM', 'VN', 'Viet Nam', 'Socialist Republic of Vietnam', 'flags/viet_nam_medium.png', 'flags/viet_nam_small.png'),
  (178, 1, 'YEM', 'YE', 'Yemen', 'Republic of Yemen', 'flags/yemen_medium.png', 'flags/yemen_small.png'),
  (179, 1, 'ZMB', 'ZM', 'Zambia', 'Republic of Zambia', 'flags/zambia_medium.png', 'flags/zambia_small.png'),
  (180, 1, 'ZWE', 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'flags/zimbabwe_medium.png', 'flags/zimbabwe_small.png'),
  (181, 1, 'COK', 'CK', 'Cook Islands', 'Cook Islands', 'flags/cook_medium.png', 'flags/cook_small.png'),
  (182, 1, 'BOL', 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'flags/bolivia_medium.png', 'flags/bolivia_small.png'),
  (183, 1, 'ZAR', 'CD', 'Democratic Republic of the Congo', 'Congo, Democratic Republic of the', 'flags/congo_medium.png', 'flags/congo_small.png'),
  (184, 1, 'EUR', 'EU', 'European Union', 'European Union', 'flags/eu_medium.png', 'flags/eu_small.png'),
  (185, 1, 'FSM', 'FM', 'Micronesia', 'Micronesia, Federated States of', 'flags/micronesia_medium.png', 'flags/micronesia_small.png'),
  (186, 1, 'GBR', 'GB', 'Great Britain', 'United Kingdom of Great Britain and Northern Ireland', 'flags/gb_medium.png', 'flags/gb_small.png'),
  (187, 1, 'IRN', 'IR', 'Iran', 'Islamic Republic of Iran', 'flags/iran_medium.png', 'flags/iran_small.png'),
  (188, 1, 'PRK', 'KP', 'Democratic People''s Republic of Korea', 'Democratic People''s Republic of Korea', 'flags/north_korea_medium.png', 'flags/north_korea_small.png'),
  (189, 1, 'KOR', 'KR', 'Republic of Korea', 'Republic of Korea', 'flags/korea_medium.png', 'flags/korea_small.png'),
  (190, 1, 'MDA', 'MD', 'Moldova', 'Republic of Moldova', 'flags/moldova_medium.png', 'flags/moldova_small.png'),
  (191, 1, 'MKD', 'MK', 'Macedonia', 'Republic of Macedonia', 'flags/macedonia_medium.png', 'flags/macedonia_small.png'),
  (192, 1, 'NIU', 'NU', 'Niue', 'Niue', 'flags/niue_medium.png', 'flags/niue_small.png'),
  (193, 1, 'TZA', 'TZ', 'Tanzania', 'United Republic of Tanzania', 'flags/tanzania_medium.png', 'flags/tanzania_small.png'),
  (194, 1, 'VEN', 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'flags/venezuela_medium.png', 'flags/venezuela_small.png'),
  (195, 1, 'AIA', 'AI', 'Anguilla', 'Anguilla', 'flags/anguilla_medium.png', 'flags/anguilla_small.png'),
  (196, 1, 'ATA', 'AQ', 'Antarctica', 'Antarctica', 'flags/antarctica_medium.png', 'flags/antarctica_small.png'),
  (197, 1, 'ASM', 'AS', 'American Samoa', 'American Samoa', 'flags/american_samoa_medium.png', 'flags/american_samoa_small.png'),
  (198, 1, 'ABW', 'AW', 'Aruba', 'Aruba', 'flags/aruba_medium.png', 'flags/aruba_small.png'),
  (199, 1, 'ALA', 'AX', 'Åland Islands', 'Åland Islands', 'flags/aland_islands_medium.png', 'flags/aland_islands_small.png'),
  (200, 1, 'BLM', 'BL', 'Saint Barthélemy', 'Saint Barthélemy', 'flags/saint_barthelemy_medium.png', 'flags/saint_barthelemy_small.png'),
  (201, 1, 'BMU', 'BM', 'Bermuda', 'Bermuda', 'flags/bermuda_medium.png', 'flags/bermuda_small.png'),
  (202, 1, 'BES', 'BQ', 'Bonaire, Saint Eustatius And Saba', 'Bonaire, Saint Eustatius And Saba', 'flags/bonaire_saint_eustatius_and_saba_medium.png', 'flags/bonaire_saint_eustatius_and_saba_small.png'),
  (203, 1, 'BVT', 'BV', 'Bouvet Island', 'Bouvet Island', 'flags/bouvet_island_medium.png', 'flags/bouvet_island_small.png'),
  (204, 1, 'CCK', 'CC', 'Cocos (keeling) Islands', 'Cocos (Keeling) Islands', 'flags/cocos_keeling_islands_medium.png', 'flags/cocos_keeling_islands_small.png'),
  (205, 1, 'CUW', 'CW', 'Curaçao', 'Curaçao', 'flags/curacao_medium.png', 'flags/curacao_small.png'),
  (206, 1, 'CXR', 'CX', 'Christmas Island', 'Christmas Island', 'flags/christmas_island_medium.png', 'flags/christmas_island_small.png'),
  (207, 1, 'ESH', 'EH', 'Western Sahara', 'Western Sahara', 'flags/western_sahara_medium.png', 'flags/western_sahara_small.png'),
  (208, 1, 'FLK', 'FK', 'Falkland Islands (malvinas)', 'Falkland Islands (Malvinas)', 'flags/falkland_islands_malvinas_medium.png', 'flags/falkland_islands_malvinas_small.png'),
  (209, 1, 'FRO', 'FO', 'Faroe Islands', 'Faroe Islands', 'flags/faroe_islands_medium.png', 'flags/faroe_islands_small.png'),
  (210, 1, 'GUF', 'GF', 'French Guiana', 'French Guiana', 'flags/french_guiana_medium.png', 'flags/french_guiana_small.png'),
  (211, 1, 'GGY', 'GG', 'Guernsey', 'Guernsey', 'flags/guernsey_medium.png', 'flags/guernsey_small.png'),
  (212, 1, 'GIB', 'GI', 'Gibraltar', 'Gibraltar', 'flags/gibraltar_medium.png', 'flags/gibraltar_small.png'),
  (213, 1, 'GRL', 'GL', 'Greenland', 'Greenland', 'flags/greenland_medium.png', 'flags/greenland_small.png'),
  (214, 1, 'GLP', 'GP', 'Guadeloupe', 'Guadeloupe', 'flags/guadeloupe_medium.png', 'flags/guadeloupe_small.png'),
  (215, 1, 'SGS', 'GS', 'South Georgia And The South Sandwich Islands', 'South Georgia And The South Sandwich Islands', 'flags/south_georgia_and_the_south_sandwich_islands_medium.png', 'flags/south_georgia_and_the_south_sandwich_islands_small.png'),
  (216, 1, 'GUM', 'GU', 'Guam', 'Guam', 'flags/guam_medium.png', 'flags/guam_small.png'),
  (217, 1, 'HKG', 'HK', 'Hong Kong', 'Hong Kong', 'flags/hong_kong_medium.png', 'flags/hong_kong_small.png'),
  (218, 1, 'HMD', 'HM', 'Heard Island And Mcdonald Islands', 'Heard Island And Mcdonald Islands', 'flags/heard_island_and_mcdonald_islands_medium.png', 'flags/heard_island_and_mcdonald_islands_small.png'),
  (219, 1, 'IMN', 'IM', 'Isle Of Man', 'Isle Of Man', 'flags/isle_of_man_medium.png', 'flags/isle_of_man_small.png'),
  (220, 1, 'IOT', 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'flags/british_indian_ocean_territory_medium.png', 'flags/british_indian_ocean_territory_small.png'),
  (221, 1, 'JEY', 'JE', 'Jersey', 'Jersey', 'flags/jersey_medium.png', 'flags/jersey_small.png'),
  (222, 1, 'CYM', 'KY', 'Cayman Islands', 'Cayman Islands', 'flags/cayman_islands_medium.png', 'flags/cayman_islands_small.png'),
  (223, 1, 'MAF', 'MF', 'Saint Martin (french Part)', 'Saint Martin (french Part)', 'flags/saint_martin_french_part_medium.png', 'flags/saint_martin_french_part_small.png'),
  (224, 1, 'MAC', 'MO', 'Macao', 'Macao', 'flags/macao_medium.png', 'flags/macao_small.png'),
  (225, 1, 'MNP', 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'flags/northern_mariana_islands_medium.png', 'flags/northern_mariana_islands_small.png'),
  (226, 1, 'MTQ', 'MQ', 'Martinique', 'Martinique', 'flags/martinique_medium.png', 'flags/martinique_small.png'),
  (227, 1, 'MSR', 'MS', 'Montserrat', 'Montserrat', 'flags/montserrat_medium.png', 'flags/montserrat_small.png'),
  (228, 1, 'NCL', 'NC', 'New Caledonia', 'New Caledonia', 'flags/new_caledonia_medium.png', 'flags/new_caledonia_small.png'),
  (229, 1, 'NFK', 'NF', 'Norfolk Island', 'Norfolk Island', 'flags/norfolk_island_medium.png', 'flags/norfolk_island_small.png'),
  (230, 1, 'PYF', 'PF', 'French Polynesia', 'French Polynesia', 'flags/french_polynesia_medium.png', 'flags/french_polynesia_small.png'),
  (231, 1, 'SPM', 'PM', 'Saint Pierre And Miquelon', 'Saint Pierre And Miquelon', 'flags/saint_pierre_and_miquelon_medium.png', 'flags/saint_pierre_and_miquelon_small.png'),
  (232, 1, 'PCN', 'PN', 'Pitcairn', 'Pitcairn', 'flags/pitcairn_medium.png', 'flags/pitcairn_small.png'),
  (233, 1, 'PRI', 'PR', 'Puerto Rico', 'Puerto Rico', 'flags/puerto_rico_medium.png', 'flags/puerto_rico_small.png'),
  (234, 1, 'PSE', 'PS', 'Palestinian Territory, Occupied', 'Palestinian Territory, Occupied', 'flags/palestinian_territory_occupied_medium.png', 'flags/palestinian_territory_occupied_small.png'),
  (235, 1, 'REU', 'RE', 'Réunion', 'Réunion', 'flags/reunion_medium.png', 'flags/reunion_small.png'),
  (236, 1, 'SHN', 'SH', 'Saint Helena, Ascension And Tristan Da Cunha', 'Saint Helena, Ascension And Tristan Da Cunha', 'flags/saint_helena_ascension_and_tristan_da_cunha_medium.png', 'flags/saint_helena_ascension_and_tristan_da_cunha_small.png'),
  (237, 1, 'SJM', 'SJ', 'Svalbard And Jan Mayen', 'Svalbard And Jan Mayen', 'flags/svalbard_and_jan_mayen_medium.png', 'flags/svalbard_and_jan_mayen_small.png'),
  (238, 1, 'SXM', 'SX', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'flags/sint_maarten_dutch_part_medium.png', 'flags/sint_maarten_dutch_part_small.png'),
  (239, 1, 'TCA', 'TC', 'Turks And Caicos Islands', 'Turks And Caicos Islands', 'flags/turks_and_caicos_islands_medium.png', 'flags/turks_and_caicos_islands_small.png'),
  (240, 1, 'ATF', 'TF', 'French Southern Territories', 'French Southern Territories', 'flags/french_southern_territories_medium.png', 'flags/french_southern_territories_small.png'),
  (241, 1, 'TKL', 'TK', 'Tokelau', 'Tokelau', 'flags/tokelau_medium.png', 'flags/tokelau_small.png'),
  (242, 1, 'TWN', 'TW', 'Taiwan, Province Of China', 'Taiwan, Province Of China', 'flags/taiwan_province_of_china_medium.png', 'flags/taiwan_province_of_china_small.png'),
  (243, 1, 'UMI', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'flags/united_states_minor_outlying_islands_medium.png', 'flags/united_states_minor_outlying_islands_small.png'),
  (244, 1, 'USA', 'US', 'United States', 'United States of America', 'flags/united_states_medium.png', 'flags/united_states_small.png'),
  (245, 1, 'VAT', 'VA', 'Vatican City', 'State of the Vatican City', 'flags/holy_see_vatican_city_state_medium.png', 'flags/holy_see_vatican_city_state_small.png'),
  (246, 1, 'VGB', 'VG', 'Virgin Islands, British', 'Virgin Islands, British', 'flags/virgin_islands_british_medium.png', 'flags/virgin_islands_british_small.png'),
  (247, 1, 'VIR', 'VI', 'Virgin Islands, U.s.', 'Virgin Islands, U.s.', 'flags/virgin_islands_us_medium.png', 'flags/virgin_islands_us_small.png'),
  (248, 1, 'WLF', 'WF', 'Wallis And Futuna', 'Wallis And Futuna', 'flags/wallis_and_futuna_medium.png', 'flags/wallis_and_futuna_small.png'),
  (249, 1, 'MYT', 'YT', 'Mayotte', 'Mayotte', 'flags/mayotte_medium.png', 'flags/mayotte_small.png');


