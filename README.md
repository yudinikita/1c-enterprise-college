# 🎓 1С - Управление отделением учебного заведения

<p>
 <img alt="Справочников" src="https://img.shields.io/badge/%D0%A1%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%87%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2-18-blue?style=for-the-badge"/>
 <img alt="Документов" src="https://img.shields.io/badge/%D0%94%D0%BE%D0%BA%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-14-blue?style=for-the-badge"/>
 <img alt="Регистров" src="https://img.shields.io/badge/%D0%A0%D0%B5%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%BE%D0%B2-7-blue?style=for-the-badge"/>
 <img alt="Отчетов" src="https://img.shields.io/badge/%D0%9E%D1%82%D1%87%D0%B5%D1%82%D0%BE%D0%B2-24-blue?style=for-the-badge"/>
</p>

Данная система позволяет автоматизировать работу учебного заведения в рамках управления отделением, кадровым учетом, посещаемости и успеваемости. Решение адаптировано для следующих пользователей: директор, заведущий отделением и преподаватель. Версия 1С:Предприятия на момент разработки: <i>8.3.15.1700</i>.

![Начальная страница](https://user-images.githubusercontent.com/36636599/146053595-9918cfcf-87ee-4973-af5e-17e68cfd9f6d.png)

Начальный интерфейс для директора называется **«Рабочий стол директора»**. На нем представлены две диаграммы и список всех студентов. В первой диаграмме наглядно отображается количество студентов по виду финансирования. Во второй диаграмме наглядно показано соотношение студентов по форме обучения. Ниже диаграмм находится список студентов, сгруппированный по отделениям и учебным группам.


<details>
 <summary>Начальная страница зав.отделения</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146053680-f00073a2-069d-4fbf-8b79-4b3b4c092c1b.png)
 
 Начальный интерфейс для заведующего отделением называется **«Рабочий стол заведующего отделением»**. Здесь показаны шаги работы зав. отделением в информационной системе. Первым делом заполняются справочники, вторым шагом создаются приказы, и на третьем шаге составляются отчеты.
</details>

<details>
 <summary>Начальная страница преподавателя</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146053700-69e7dc4a-ab87-4b47-8904-390aa0a1bc6e.png)
 
 Начальный интерфейс для преподавателя называется **«Рабочий стол преподавателя»**. На него выведены и проиллюстрированы 3 главных действия для работы преподавателя: ввод пропусков занятий, заполнение ведомости и создание направления на пересдачу. 
</details>

## 🎯 Основные функции

- Хранение данных о студентах, учебных группах, отделениях, дисциплинах и сотрудниках
- Формирование приказов о движении контингента и создание справок об обучении
- Создание ведомостей и направлений на пересдачу
- Заполнение кадровых документов: прием на работу, увольнение и перемещение сотрудников
- Реализована регистрация пропусков занятий
- Формирование множество отчетов из каждой подсистемы

<details>
 <summary>Список отчетов</summary>
 
 - анализ движения контингента — показывает количество студентов распределенным по приказам;
 - анализ контингента — показывает количество студентов и групп на каждом курсе;
 - анализ контингента по возрасту — отображает количество студентов по полу и возрасту;
 - анализ контингента по финансированию — в виде диаграммы наглядно представляет данные о распределении студентов по видам финансирования на каждой специальности;
 - динамика движения контингента — в виде диаграммы показывает на каждый день количество приказов по движению контингента сгруппированным по специальностям;
 - кадровая история студентов — полный список документов по приказам на каждого студента, отслеживая статус студента, его группу и вид финансирования;
 - контингент студентов — показывает количество студентов в группе, отделении и сгруппированы по виду финансирования и форме обучения;
 - список учебных групп — выводит группу и список студентов в этой группе;
 - список сотрудников — выводит табельный номер сотрудника, ФИО, ученое звание, ученую степень, подразделение и статус;
 - анализ посещаемости — для каждой группы показывает количество студентов и количество пропусков: по уважительной, не уважительной причине, по болезни, опозданий и общее количество пропущенных часов;
 - графический рейтинг опозданий — в виде диаграммы показывает количество опозданий у студента;
 - посещаемость по дням — показывает посещаемость студента на каждый день в месяце, группируется по группе и периоду;
 - рейтинг групп по посещаемости — в порядке возрастания показывает группы с наибольшим и наименьшим количеством пропущенных часов;
 - сводная ведомость по посещаемости — подробный список пропущенных часов для каждой группы, отделения и студента;
 - анализ задолженностей — для каждого студента группы выводит количество задолженностей;
 - анализ оценок — выводит список оценок для каждого ученика;
 - графический рейтинг успеваемости — наглядная диаграмма, показывающая средний бал каждого студента;
 - журнал регистрации документов по успеваемости — список всех документов, которые влияют на успеваемость студентов;
 - сводная ведомость по успеваемости — отображает список всех оценок по предметам, периоду обучения, и виду контроля.
</details>

## 👀 Обзор

Демонстрация работы:

https://user-images.githubusercontent.com/36636599/146062034-67a5d9b2-3da3-4c86-b243-8402e4893eb1.mp4

Подсистемы:

### 🏫 Подсистема «Отделение»

![Отделение](https://user-images.githubusercontent.com/36636599/146055537-39656c7a-e3b3-4434-9750-bde8d570fa03.png)

Состоит из основных справочников: отделений, учебных групп и студентов. Дополнительные справочники: специальности, список квалификаций, физические лица, программы обучения, периоды обучения и должности. Основной документ — это приказ о движении контингента, который состоит из нескольких форм: зачисление, отчисление, восстановление, выпуск, перевод на другой курс и перевод в другую группу. Также, есть возможность создать документ справки об обучении. Отчеты: анализ движения контингента, анализ контингента, анализ контингента по возрасту и финансированию, динамика движения контингента, кадровая история студентов, контингент студентов и список учебных групп;

### 👩‍🏫 Подсистема «Кадровый учет»

![Кадровый учет](https://user-images.githubusercontent.com/36636599/146055585-fd4b4f9e-8aba-4a4d-ab48-e4702ed8f2e9.png)

Вспомогательная подсистема, у которой главный справочник — сотрудники, а дополнительными являются должности, подразделения, организации, ученые степени и звания. Есть возможность создать документ о приеме на работу, увольнении и кадровом перемещении. Формируются следующие отчеты: кадровые изменения, квалификация сотрудников, контактная информация сотрудников, план аттестаций и список сотрудников;

### 📆 Подсистема «Посещаемость»

![Посещаемость](https://user-images.githubusercontent.com/36636599/146055613-663f1430-942b-4d6d-9dcf-427143a2e1f2.png)

Имеет главный документ о регистрации пропусков занятий, а также дополнительные подсистемы: причины пропусков и дисциплины. Формируются следующие отчеты: анализ посещаемости, графический рейтинг опозданий, посещаемость по дням, рейтинг групп по посещаемости, сводная ведомость по посещаемости;

### 📈 Подсистема «Успеваемость»

![Успеваемость](https://user-images.githubusercontent.com/36636599/146055634-0f8a29d0-e40c-4197-855f-1924bc08bbb3.png)

Имеет два важных документа: ведомость и направление на пересдачу. Дополнительные справочники: виды контроля и типы контрольных мероприятий, а также, регистр сведений оценки студентов. Формируются следующие отчеты: анализ задолженностей, анализ оценок, графический рейтинг успеваемости, журнал регистрации документов по успеваемости, сводная ведомость по успеваемости.

## 📝 Начало работы

### Вариант №1

1) Скачайте информационную базу из [Release](https://github.com/nblackninja/1c-enterprise-college/releases/)
2) Создайте свою конфигурацию
3) В разделе «Администрирование» нажмите «Загрузить информационную базу»
4) Выберите скачанную базу для загрузки

### Вариант №2

1) Сохраните исходники к себе на компьютер командной ниже или удобным вам способом

```shell
git clone https://github.com/nblackninja/1c-enterprise-college
```

2) Создайте свою конфигурацию
3) В разделе «Конфигурация» нажмите «Загрузить конфигурацию из файлов»
5) Укажите путь к скачанной конфигурации

Пароль для всех пользователей: **1**

## 📌 Примеры

<details>
 <summary>Список студентов</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058138-0379ec30-c3bf-4b4b-95be-4bd90580e578.png)
</details>

<details>
 <summary>Печать студенческого билета</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058241-ee04c6f7-9a3c-4677-870f-05c127d09107.png)
</details>

<details>
 <summary>Данные студента</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058562-0b4f4d91-6e05-467d-a082-bc88a65fa039.png)
</details>

<details>
 <summary>Список сотрудников</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058707-7a6cc058-0443-44de-b9e2-6e3717cc994b.png)
</details>

<details>
 <summary>Данные сотрудника</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058779-b1b2ec9f-6ade-4b32-b97e-b6e424eaf2ac.png)
</details>

<details>
 <summary>Регистрация пропусков занятий</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058859-632c17f2-e8b9-4767-a387-a19285f3ddea.png)
</details>

<details>
 <summary>Ведомость</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058951-fcf6388b-bfaf-4cbe-b0af-10a610be288f.png)
</details>

<details>
 <summary>Печать ведомости</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146058998-b08b235a-ced9-478c-82d7-c7292f4757fd.png)
</details>

<details>
 <summary>Направление на пересдачу</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146059049-b1da3394-1c55-4316-bfe3-35d8dd9791da.png)
</details>

<details>
 <summary>Отчеты</summary>
 
 ![image](https://user-images.githubusercontent.com/36636599/146059296-3004eda7-30d7-4308-b01b-f0eb72b625f3.png)

 ![image](https://user-images.githubusercontent.com/36636599/146059461-42cda933-ad56-422b-ae7f-e786c7fba000.png)
 
 ![image](https://user-images.githubusercontent.com/36636599/146059506-25fd192b-a5cd-4a89-b198-735d2a206547.png)
 
 ![image](https://user-images.githubusercontent.com/36636599/146059598-85ac3848-cf7e-491b-900d-2844499fe582.png)

 ![image](https://user-images.githubusercontent.com/36636599/146059663-feca77c3-f0ec-4be7-8c82-a06f7ce48ab6.png)

 ![image](https://user-images.githubusercontent.com/36636599/146059687-f4db9df2-4d5d-49e8-a442-43ef115e73fd.png)
 
 ![image](https://user-images.githubusercontent.com/36636599/146059727-a0fb3574-35a7-4b55-a86a-65b7782bd3e7.png)
 
 ![image](https://user-images.githubusercontent.com/36636599/146059774-377dfe27-79b7-4df6-a2f8-aebe4c1ef12a.png)
</details>

## ✍️ Инструкция

<details>
 <summary>Директор</summary>
 
 ### Основные задачи
 
 - управление сотрудниками учебного заведения
 - создание 
   - отделений
   - подразделений
   - дисциплин
   - специальностей
   - программ обучения
   - периодов обучения
 - просмотр различных отчетов
 
 ### Шаг 1. Создать физическое лицо сотрудника
 
В подсистеме «Кадровый учет», в разделе «см. также», выбрать справочник «Физические лица», нажать на кнопку «Создать». Указать ФИО физ. лица сотрудника, выбрать пол, установить дату рождения, место проживания, адреса, email, телефон и дополнительная информация, если имеется. На странице «Документы» ввести ИНН, СНИЛС, номер и серия медицинского полиса, данные паспорта.
 
 ### Шаг 2. Создать сотрудника
 
 В подсистеме «Кадровый учет» выбрать справочник «Сотрудники», нажать на кнопку «Создать». Выбрать созданное ранее физическое лицо, чтобы данные оттуда автоматически заполнились в новом сотруднике. Выбрать образование сотрудника, если это учитель, то поставить галочку в реквизите «Преподаватель» и указать номер основной аудитории. Дальше указать дополнительную информацию в страницах сотрудника: преподаваемые дисциплины, ученые звания и степени, категории и аттестации, повышение квалификации. 

 ### Шаг 3. Создать приказ о приеме на работу
 
 В подсистеме «Кадровый учет», в разделе «Кадровые документы», выбрать документ «Приемы на работу», нажать на кнопку «Создать». Выбрать руководителя, который принимает на работу, также можно написать комментарий к этому документу в соответствующем поле. Дальше выбираются сотрудники, которых нужно принять на работу, с помощью кнопки «Добавить». Указывается сотрудник из справочника, выбирается подразделение, выбирается должность, дата приема ставится текущее число, но его можно изменить вручную, и указывается количество занимаемых ставок. 
 
 ### Шаг 4. Создать отделение
 
 В подсистеме «Отделение», выбрать справочник «Отделения», нажать на кнопку «Создать». Откроется форма по созданию отделения. Требуется указать наименования отделения и выбрать заведующего отделения из справочника сотрудников. Также, можно указать дополнительную информацию о времени работы отделения, время обеда, адрес, телефон и электронный адрес. 
 
 ### Шаг 5. Создать специальность
 
 В подсистеме «Отделение», выбрать справочник «Специальности», нажать на кнопку «Создать». Ввести наименования специальности, выбрать отделение, и написать шифр (сокращение) специальности. 
 
 ### Шаг 6. Создать периоды обучения
 
 В подсистеме «Отделение», выбрать справочник «Периоды обучения», нажать на кнопку «Создать». Первым делом вводится года обучения, например, «2020-2021 уч.г.», дальше в этот год записываются семестры обучения, где указывается наименование, например, «1 семестр 2020-2021» и выбирается период, привязанный к реальной дате.
 
 ### Шаг 7. Создать программы обучения
 
 В подсистеме «Отделение», выбрать справочник «Программы обучения», нажать на кнопку «Создать». Ввести наименование, которое может указываться, как шифр специальности, форма обучения и количество классов для поступления. Дальше выбрать специальность, форму обучения (очная, заочная или очно-заочная), из предопределенного списка выбрать базовое образование, необходимое для поступления на данную программу обучения. Указать срок обучения, который можно указывать двумя вариантами, в полях где требуется только число, или написать в строку, например, «3 года 10 месяцев». Если написать только число, то надпись в строку заполнится автоматически, может потребоваться указать правильное окончание. Дальше следует выбрать квалификацию, поставить галочку и установить дату, если программу уже действует. 
 
 На этом инструкция к пользователю «Директор» заканчивается, дальше можно просматривать отчеты. Также, доступен просмотр приказов, ведомостей и пропусков, без возможности их создания.
</details>

<details>
 <summary>Заведующий отделением</summary>
 
 ### Основные задачи
 
 - заполнение дополнительной информации об отделении
 - заполнение учебных групп и студентов
 - создание различных приказов: 
   - отчисление
   - перевод на другой курс
   - перевод в другую группу
   - восстановление
   - выпуск
   - отчисление
 - формирование отчетов для директора
 
 ### Шаг 1. Создать учебную группу
 
 В подсистеме «Отделение», выбрать справочник «Программы обучения», нажать на кнопку «Создать». По группам можно произвести отбор по статусу, специальности, отделению и курсу. Если у группы не выбрано куратора, то эта ячейка подсвечивается красным цветом. Если группа имеет статус «Выпустилась», тогда вся строчка с группой подсвечивается желтым цветом.

 В форме создания учебной группы нужно заполнить наименование группы, курс, форму обучения, отделение, программу обучения, основной вид финансирования, год поступления и дату окончания поступления. В дополнительной информации можно выбрать куратора группы и указать семестры обучения связав их с реальными семестрами обучения. После заполнения группы студентами, на вкладке «Состав группы» можно увидеть всех студентов, которые обучаются в данной группе. 
 
 ### Шаг 2. Создать студентов
 
 Создание студентов находится в подсистеме «Отделение», в справочнике «Студенты». По студентам можно произвести отбор по статусу студента, по виду финансирования, по специальности, по учебной группе, по отделению, по курсу и по форме обучения. Также, при выборе студента, справа открывается форма быстрого просмотра о студенте, с возможностью создать печатную форму студенческого билета, справки об обучении, изменить данные студента или удалить студента.

Во время создания студента следует указать ФИО, или выбрать физическое лицо, чтобы данные перенеслись из него. Вручную заполняется номер билета и номер зачетки, все остальное переносится автоматически при создании приказа о зачислении.
 
 ### Шаг 3. Создать приказ о движении контингента
 
 Всего на выбор 6 видов приказов о движении контингента: зачисление, перевод на другой курс, перевод в другую группу, восстановление, выпуск и отчисление. Я покажу, как заполнить приказ о зачислении, остальные заполняются аналогичным образом.

 В подсистеме «Отделение», в разделе «Контингент», находим документ «Приказы о движении контингента», заходим в него и нажимаем кнопку «Создать». Выбираем отделение, вид приказа, в данном случае «Зачисление», заполняем заголовок приказа, выбираем группу куда хотим зачислить студентов, курс подставляется автоматически. В формулировки пишем, что приказываем сделать. Дальше выбираем студентов или студента, указываем вид финансирования, номер приказа о зачислении. Дата приказа берется автоматически из текущей даты, но ее можно изменить. Если студент уже находится в какой-либо группе, то система выдаст сообщение, где будет указано, что студент находится в группе и наименование этой группы.
 
 Переходим на вкладку дополнительно, заполняем основание, по которому происходит зачисление студентов, дальше выбираем, кто будет подписывать данный приказ. Когда приказ проведен его можно распечатать.

 ### Шаг 4. Создать справку об обучении
 
 В подсистеме «Отделение», в разделе «Контингент», находим документ «Справка об обучении», заходим в него и нажимаем кнопку «Создать». Выбираем учебную группу и студента. Дальше все данные заполнятся автоматически. Только нужно указать ФИО в дательном падеже и выбрать, кто будет подписывать документ. 
 
 На этом инструкция к пользователю «Заведующий отделением» заканчивается, дальше можно формировать отчеты.
</details>

<details>
 <summary>Преподаватель</summary>
 
 ### Основные задачи
 
 - ввод пропусков занятий
 - заполнение ведомостей
 - создание направлений на пересдачу
 - формирование отчетов об успеваемости и посещаемости студентов
 
 ### Шаг 1. Создать документ о регистрации пропусков занятий
 
 В подсистеме «Посещаемость», выбрать документ «Регистрация пропусков занятий», нажать на кнопку «Создать». Выбрать период регистрации, который равен первому дню месяца заполнения. Дальше нужно выбрать учебную группу, дисциплину, преподавателя, а список студентов заполнится автоматически при выборе группы. Если студенты не заполнились сами, то следует нажать на кнопку «Заполнить группу». Для каждого студента выбрать дни, когда студент пропустил или опоздал на занятие. Виды пропусков бывает несколько: пропустил по уважительной причине (п), пропустил по не уважительной причине (н), пропустил по болезни (б), опоздал (о). В конце списка при горизонтальной прокрутке можно указать причину пропусков, а также, увидеть итог по количеству пропусков. После регистрации пропусков можно формировать отчеты.
 
 ### Шаг 2. Создать ведомость
 
 В подсистеме «Успеваемость», выбрать документ «Ведомости», нажать на кнопку «Создать». В списке ведомостей можно сделать отбор по учебному периоду, преподавателю, учебной группе, виду контроля, ответственному и дисциплине.
 
 Во время создания ведомости следует выбрать учебный период, группу, после чего список студентов автоматически заполнится студентами выбранной группы. Дальше нужно указать дисциплину, вид контроля, преподавателя и ответственного. Ключевую роль играет вид контроля, из-за этого зависит, будет оценка в виде баллов или зачета. Для каждого студента устанавливается допуск, оценка/зачет, явка и примечание при необходимости. На странице ранжирование можно отследить количество учеников по баллам и сдаче/явке.
 
 ### Шаг 3. Создать направление на пересдачу
 
 В подсистеме «Успеваемость», выбрать документ «Направления на пересдачу», нажать на кнопку «Создать». Выбрать вид направления (задолженность или на повышенную оценку), указать учебный период. После выбора группы, поле студента будет автоматически заполнено студентами выбранной группы. Дальше нужно выбрать дисциплину, преподавателя, вид контроля, исходную ведомость, заполнить информацию о пересдаче при необходимости, установить дату пересдачи, исходную оценку и новую оценку. После этого, направление можно распечатать. 
 
 Особенностью направления на пересдачу является то, что этот документ замещает оценку из ведомости, и в отчет выводится новая оценка, а старую можно отследить по регистру сведений об оценках студентов.
 
 После заполнения всех документов, можно формировать отчеты.
</details>

## 🔐 Лицензия

[MIT](https://github.com/nblackninja/1c-enterprise-college/blob/main/LICENSE)

---

> Site [yudinikita.ru](https://yudinikita.ru) &nbsp;&middot;&nbsp;
> Email <mail@yudinikita.ru> &nbsp;&middot;&nbsp;
> GitHub [@yudinikita](https://github.com/yudinikita)
