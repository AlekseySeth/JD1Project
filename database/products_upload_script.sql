USE nutrition_store;

INSERT INTO categories(id, name, description) VALUES (1, 'Протеин', 'Протеин — это концентрированный белок, который является
основным строительным элементом для нашего тела. Без протеинов невозможно продвижение в спорте, он содержит аминокислоты,
необходимые для развития организма человека');

INSERT INTO categories(id, name, description) VALUES (2, 'Гейнеры', 'Гейнер — вид продукта для питания спортсменов, который
представляет собой белково-углеводную смесь. Также может содержаться небольшое количество жиров. Гейнеры предназначены
для набора массы тела, а также для восполнения энергетических запасов организма');

INSERT INTO categories(id, name, description) VALUES (3, 'Аминокислоты', 'Аминокислоты — это элементы, из которых состоят белки.
Белки, поступающие с пищей в организм,  расщепляются на аминокислоты, которые выполняют многочисленные жизненно
необходимые функции, в том числе и восстановление мышц после тренировки и образование новых мышечных тканей');

INSERT INTO categories(id, name, description) VALUES (4, 'BCAA', 'ВСАА — это комплекс из трёх аминокислот с разветвлённой
цепью – валин, лейцин и изолейцин. Они являются важными компонентами белков. В отличие от других аминокислот они не
синтезируются организмом, а потому их необходимо получать с пищей. BCAA - основной материал для построения новых мышц,
эти незаменимые аминокислоты составляют 35% всех аминокислот в мышцах и принимают важное участие в процессах анаболизма
и восстановления, обладают антикатаболическим действием');

INSERT INTO categories(id, name, description) VALUES (5, 'Креатин', 'Креатин — азотсодержащая карбоновая кислота, которая
участвует в энергетическом обмене в мышечных и нервных клетках. В мире бодибилдинга, креатин широко используется как
спортивная добавка, для увеличения силы, мышечной массы и кратковременной аэробной выносливости с доказанной безопасностью');

INSERT INTO categories(id, name, description) VALUES (6, 'Витамины', 'Витамины — это биологически активные вещества, участвующие
в процессах жизнедеятельности организма и поступающие с пищей. Не все витамины синтезируются организмом, а количество тех,
которые поступают с пищей, бывает недостаточным. Вследствие этого витамины для спортсменов выпускаются в виде витаминных комплексов.
Минеральные вещества — микро и макроэлементы, также участвуют в биосинтезе белка, регулируют процессы обмена веществ
внутри клеток и в организме в целом, мышечной деятельности и др. Так же, как и витамины, минеральные вещества поступают
с пищей, но чтобы обеспечить организм достаточным их количеством, необходимо принимать минеральные комплексы');

INSERT INTO categories(id, name, description) VALUES (7, 'Жиросжигатели', 'Жиросжигатели — это специальные препараты или смеси,
которые способствуют эффективному снижению массы тела за счет редукции жировых отложений спортсмена. Кроме того с их
помощью легче концентрироваться на выполнении упражнений и облегчаются тренировки.');

INSERT INTO categories(id, name, parent_id) VALUES (11, 'Biotech', 1);
INSERT INTO categories(id, name, parent_id) VALUES (12, 'QNT', 1);
INSERT INTO categories(id, name, parent_id) VALUES (13, 'Olimp', 1);
INSERT INTO categories(id, name, parent_id) VALUES (14, 'ActivLab', 1);
INSERT INTO categories(id, name, parent_id) VALUES (15, 'IronMaxx', 1);

INSERT INTO categories(id, name, parent_id) VALUES (21, 'Biotech', 2);
INSERT INTO categories(id, name, parent_id) VALUES (22, 'QNT', 2);
INSERT INTO categories(id, name, parent_id) VALUES (23, 'Olimp', 2);

INSERT INTO categories(id, name, parent_id) VALUES (31, 'Biotech', 3);
INSERT INTO categories(id, name, parent_id) VALUES (32, 'QNT', 3);
INSERT INTO categories(id, name, parent_id) VALUES (33, 'Olimp', 3);
INSERT INTO categories(id, name, parent_id) VALUES (34, 'IronMaxx', 3);

INSERT INTO categories(id, name, parent_id) VALUES (41, 'Biotech', 4);
INSERT INTO categories(id, name, parent_id) VALUES (42, 'QNT', 4);
INSERT INTO categories(id, name, parent_id) VALUES (43, 'Olimp', 4);
INSERT INTO categories(id, name, parent_id) VALUES (44, 'IronMaxx', 4);

INSERT INTO categories(id, name, parent_id) VALUES (51, 'Biotech', 5);
INSERT INTO categories(id, name, parent_id) VALUES (52, 'QNT', 5);
INSERT INTO categories(id, name, parent_id) VALUES (53, 'Olimp', 5);
INSERT INTO categories(id, name, parent_id) VALUES (54, 'IronMaxx', 5);

INSERT INTO categories(id, name, parent_id) VALUES (61, 'Biotech', 6);
INSERT INTO categories(id, name, parent_id) VALUES (62, 'QNT', 6);
INSERT INTO categories(id, name, parent_id) VALUES (63, 'Olimp', 6);

INSERT INTO categories(id, name, parent_id) VALUES (71, 'Biotech', 7);
INSERT INTO categories(id, name, parent_id) VALUES (72, 'QNT', 7);
INSERT INTO categories(id, name, parent_id) VALUES (73, 'Olimp', 7);

INSERT INTO products(name, description, price, qty, category_id) VALUES ('Protein Power Biotech USA 1000', 'Protein Power – превосходный протеиновый порошок для целеустремлённых атлетов, которым необходимы продукты с высоким содержанием белка.

Как и вся продукция BioTech USA, Protein Power содержит только безопасные для здоровья и тщательно отобранные ингредиенты.

Изготовленный с добавлением высококачественного сывороточного протеина, Protein Power снабжает организм ВСАА, L-глутамином и другими заменимыми и незаменимыми аминокислотами.

Его белковая составляющая способствует наращиванию мышечной массы и поддержанию формы мышц.

Protein Power пользуется популярностью среди продукции BioTech USA, выделяясь на рынке протеиновых добавок выгодным соотношением цены и качества.', 47.70, 100, 11);


INSERT INTO products(name, description, price, qty, category_id) VALUES ('Iso Whey Zero Biotech USA 908', 'Some description for Iso Whey Zero Biotech', 45.99, 10, 10);

INSERT INTO products(name, description, price, qty, category_id) VALUES ('Biotech Iso Whey Zero lact free 500g', 'Some description for Iso Whey Zero lact free', 24.99, 10, 10);
