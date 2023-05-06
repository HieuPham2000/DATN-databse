USE pvo_v1_2023;
INSERT INTO sys_concept_link(sys_concept_link_id, concept_link_name, concept_link_type, sort_order, created_date, modified_date) VALUES
('a84e3892-dbfc-11ed-a1e6-a44cc8756a37', 'No link', 1, 1, '2023-04-16 09:15:50', NULL),
('a84e6654-dbfc-11ed-a1e6-a44cc8756a37', 'Association', 2, 2, '2023-04-16 09:15:50', NULL),
('a84e6885-dbfc-11ed-a1e6-a44cc8756a37', 'Type of', 3, 3, '2023-04-16 09:15:50', NULL);

INSERT INTO sys_example_link(sys_example_link_id, example_link_name, example_link_type, sort_order, created_date, modified_date) VALUES
('2d1bbd1d-dbfd-11ed-a1e6-a44cc8756a37', 'No link', 1, 1, '2023-04-16 09:19:32', NULL),
('2d1bc576-dbfd-11ed-a1e6-a44cc8756a37', 'Idiom', 2, 2, '2023-04-16 09:19:32', NULL),
('2d1bc640-dbfd-11ed-a1e6-a44cc8756a37', 'Nominal', 3, 3, '2023-04-16 09:19:32', NULL),
('2d1bc69a-dbfd-11ed-a1e6-a44cc8756a37', 'Agent', 4, 4, '2023-04-16 09:19:32', NULL),
('2d1bc6d7-dbfd-11ed-a1e6-a44cc8756a37', 'Patient', 5, 5, '2023-04-16 09:19:32', NULL),
('2d1bc70f-dbfd-11ed-a1e6-a44cc8756a37', 'Action', 6, 6, '2023-04-16 09:19:32', NULL),
('2d1bc745-dbfd-11ed-a1e6-a44cc8756a37', 'Described by', 7, 7, '2023-04-16 09:19:32', NULL),
('2d1bc783-dbfd-11ed-a1e6-a44cc8756a37', 'Describing', 8, 8, '2023-04-16 09:19:32', NULL),
('2d1bc88c-dbfd-11ed-a1e6-a44cc8756a37', 'Other phrase', 9, 9, '2023-04-16 09:19:32', NULL);

INSERT INTO sys_tone(sys_tone_id, tone_name, tone_type, sort_order, created_date, modified_date) VALUES
('53f4ef4e-dbfd-11ed-a1e6-a44cc8756a37', 'Neutral', 1, 1, '2023-04-16 09:20:38', NULL),
('53f4f6a1-dbfd-11ed-a1e6-a44cc8756a37', 'Informal', 2, 2, '2023-04-16 09:20:38', NULL),
('53f4f751-dbfd-11ed-a1e6-a44cc8756a37', 'Formal', 3, 3, '2023-04-16 09:20:38', NULL),
('53f4f77f-dbfd-11ed-a1e6-a44cc8756a37', 'Slightly informal', 4, 4, '2023-04-16 09:20:38', NULL),
('53f4f7b3-dbfd-11ed-a1e6-a44cc8756a37', 'Slightly formal', 5, 5, '2023-04-16 09:20:38', NULL);

INSERT INTO sys_mode(sys_mode_id, mode_name, mode_type, sort_order, created_date, modified_date) VALUES
('6799339c-dbfd-11ed-a1e6-a44cc8756a37', 'Neutral', 1, 1, '2023-04-16 09:21:11', NULL),
('67993cef-dbfd-11ed-a1e6-a44cc8756a37', 'Spoken', 2, 2, '2023-04-16 09:21:11', NULL),
('67993dd2-dbfd-11ed-a1e6-a44cc8756a37', 'Written', 3, 3, '2023-04-16 09:21:11', NULL);

INSERT INTO sys_register(sys_register_id, register_name, register_type, sort_order, created_date, modified_date) VALUES
('aafb738e-dbfd-11ed-a1e6-a44cc8756a37', 'Neutral', '1', 1, '2023-04-16 09:23:04', NULL),
('aafb845c-dbfd-11ed-a1e6-a44cc8756a37', 'Academic', '2', 2, '2023-04-16 09:23:04', NULL),
('aafb862d-dbfd-11ed-a1e6-a44cc8756a37', 'Literature', '3', 3, '2023-04-16 09:23:04', NULL),
('aafb86cd-dbfd-11ed-a1e6-a44cc8756a37', 'Business', '4', 4, '2023-04-16 09:23:04', NULL),
('aafb8745-dbfd-11ed-a1e6-a44cc8756a37', 'Law', '5', 5, '2023-04-16 09:23:04', NULL),
('aafb87b8-dbfd-11ed-a1e6-a44cc8756a37', 'Journalism', '6', 6, '2023-04-16 09:23:04', NULL),
('aafb8832-dbfd-11ed-a1e6-a44cc8756a37', 'Medicine', '7', 7, '2023-04-16 09:23:04', NULL),
('aafb88dd-dbfd-11ed-a1e6-a44cc8756a37', 'IT', '8', 8, '2023-04-16 09:23:04', NULL),
('aafb896f-dbfd-11ed-a1e6-a44cc8756a37', 'Other', '9', 9, '2023-04-16 09:23:04', NULL);

INSERT INTO sys_nuance(sys_nuance_id, nuance_name, nuance_type, sort_order, created_date, modified_date) VALUES
('c59eaacb-dbfd-11ed-a1e6-a44cc8756a37', 'Neutral', 1, 1, '2023-04-16 09:23:48', NULL),
('c59eb46d-dbfd-11ed-a1e6-a44cc8756a37', 'Old fashioned', 2, 2, '2023-04-16 09:23:48', NULL),
('c59eb542-dbfd-11ed-a1e6-a44cc8756a37', 'Humorous', 3, 3, '2023-04-16 09:23:48', NULL),
('c59eb58d-dbfd-11ed-a1e6-a44cc8756a37', 'Oft positive', 4, 4, '2023-04-16 09:23:48', NULL),
('c59eb5be-dbfd-11ed-a1e6-a44cc8756a37', 'Oft negative', 5, 5, '2023-04-16 09:23:48', NULL);

INSERT INTO sys_dialect(sys_dialect_id, dialect_name, dialect_type, sort_order, created_date, modified_date) VALUES
('d9016880-dbfd-11ed-a1e6-a44cc8756a37', 'Neutral', 1, 1, '2023-04-16 09:24:21', NULL),
('d901737b-dbfd-11ed-a1e6-a44cc8756a37', 'American', 2, 2, '2023-04-16 09:24:21', NULL),
('d9017459-dbfd-11ed-a1e6-a44cc8756a37', 'British', 3, 3, '2023-04-16 09:24:21', NULL),
('d90174af-dbfd-11ed-a1e6-a44cc8756a37', 'Other', 4, 4, '2023-04-16 09:24:21', NULL);