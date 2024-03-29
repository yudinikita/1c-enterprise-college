﻿
Процедура ПечатьСправкиОбОбучении(ТабДок, Ссылка) Экспорт
	//{{_КОНСТРУКТОР_ПЕЧАТИ(ПечатьСправкиОбОбучении)
	Макет = Документы.СправкаОбОбучении.ПолучитьМакет("ПечатьСправкиОбОбучении");
	Запрос = Новый Запрос;
	Запрос.Текст =
	"ВЫБРАТЬ
	|	СправкаОбОбучении.ДатаОкончанияОбучения КАК ДатаОкончанияОбучения,
	|	СправкаОбОбучении.УчебнаяГруппа КАК ГруппаСтудента,
	|	СправкаОбОбучении.Номер КАК Номер,
	|	СправкаОбОбучении.Дата КАК Дата,
	|	СправкаОбОбучении.ВидФинансирования КАК ВидФинансирования,
	|	СправкаОбОбучении.ГодПоступления КАК ГодПоступления,
	|	СправкаОбОбучении.ДатаРождения КАК ГодРождения,
	|	СправкаОбОбучении.ДолжностьПодписывающего КАК Должность,
	|	СправкаОбОбучении.КурсСтудента КАК Курс,
	|	СправкаОбОбучении.Организация КАК НаименованиеОрганизации,
	|	СправкаОбОбучении.ПодписывающийСотрудник КАК ФИОПодписывающего,
	|	СправкаОбОбучении.Приказ КАК НомерПриказа,
	|	СправкаОбОбучении.СпециальностьСтудента КАК Специальность,
	|	СправкаОбОбучении.ФормаОбучения КАК ФормаОбучения,
	|	СправкаОбОбучении.ФИОДтПд КАК ФИО
	|ИЗ
	|	Документ.СправкаОбОбучении КАК СправкаОбОбучении
	|ГДЕ
	|	СправкаОбОбучении.Ссылка В(&Ссылка)";
	Запрос.Параметры.Вставить("Ссылка", Ссылка);
	Выборка = Запрос.Выполнить().Выбрать();

	ОбластьЗаголовок = Макет.ПолучитьОбласть("Заголовок");
	ОбластьТелоСправки = Макет.ПолучитьОбласть("ТелоСправки");
	ОбластьПодписи = Макет.ПолучитьОбласть("Подписи");
	ТабДок.Очистить();

	ВставлятьРазделительСтраниц = Ложь;
	Пока Выборка.Следующий() Цикл
		Если ВставлятьРазделительСтраниц Тогда
			ТабДок.ВывестиГоризонтальныйРазделительСтраниц();
		КонецЕсли;
		
		ОбластьЗаголовок.Параметры.Заполнить(Выборка);
		ОбластьЗаголовок.Параметры.Дата = Формат(Выборка.Дата, "ДЛФ=D");
		ТабДок.Вывести(ОбластьЗаголовок, Выборка.Уровень());
		
		ОбластьТелоСправки.Параметры.Заполнить(Выборка);
		ОбластьТелоСправки.Параметры.НомерПриказа = Выборка.НомерПриказа.Номер + " от " + Формат(Выборка.НомерПриказа.Дата, "ДЛФ=DD");
		ОбластьТелоСправки.Параметры.ГодРождения = Формат(Выборка.ГодРождения, "ДФ=yyyy");
		ОбластьТелоСправки.Параметры.Образование = НРег(Выборка.ГруппаСтудента.ПрограммаОбучения.БазовоеОбразование);
		
		Если Выборка.ФормаОбучения = Перечисления.ФормыОбучения.Очная Тогда
			ОбластьТелоСправки.Параметры.ФормаОбучения = "очного";
		ИначеЕсли Выборка.ФормаОбучения = Перечисления.ФормыОбучения.Заочная Тогда
			ОбластьТелоСправки.Параметры.ФормаОбучения = "заочного";
		ИначеЕсли Выборка.ФормаОбучения = Перечисления.ФормыОбучения.ОчноЗаочная Тогда
			ОбластьТелоСправки.Параметры.ФормаОбучения = "очно-заочного";
		КонецЕсли;

		Если Выборка.ВидФинансирования = Перечисления.ВидыФинансирования.БюджетноеФинансирование Тогда
			ОбластьТелоСправки.Параметры.ВидФинансирования = "бюджетной";
		ИначеЕсли Выборка.ВидФинансирования = Перечисления.ВидыФинансирования.КоммерческоеФинансирование Тогда
			ОбластьТелоСправки.Параметры.ВидФинансирования = "коммерческой";
		КонецЕсли;
		
		Если ЗначениеЗаполнено(Выборка.ДатаОкончанияОбучения) Тогда
			ОбластьТелоСправки.Параметры.ОкончаниеОбучения = "Предполагаемая дата окончания обучения " + Формат(Выборка.ДатаОкончанияОбучения, "ДЛФ=DD");
		КонецЕсли;
		

		ОбластьТелоСправки.Параметры.Специальность = Выборка.Специальность;

		ТабДок.Вывести(ОбластьТелоСправки, Выборка.Уровень());

		ОбластьПодписи.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(ОбластьПодписи, Выборка.Уровень());

		ВставлятьРазделительСтраниц = Истина;
	КонецЦикла;
	//}}
	
КонецПроцедуры
