﻿
&НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
	Для Каждого СтрочкаСтудента из Объект.СписокСтудентов Цикл
		ЛичныеДанные = ПолучитьДанныеСтудента(СтрочкаСтудента.Студент);
		ЗаписатьИнформациюНаСтудента(СтрочкаСтудента.Студент, ЛичныеДанные);
	КонецЦикла;
КонецПроцедуры

&НаКлиенте
Функция ПолучитьДанныеСтудента(Студент)
	ДатаПоступления = Элементы.СписокСтудентов.ТекущиеДанные.ДатаПриказаОЗачислении;
	ГодПоступления = Формат(Год(ДатаПоступления),"ЧГ=100");
	
	ВидФинансирования = Элементы.СписокСтудентов.ТекущиеДанные.ВидФинансирования;
	
	ПрограммаОбучения = ПолучитьПрограммуОбучения(Объект.ЗачислениеВГруппу);
	СпециальностьИзПрограммыОбучения = ПолучитьСпециальностьИзПрограммыОбучения(ПрограммаОбучения);
	
	ЛичныеДанные = Новый Структура;
	ЛичныеДанные.Вставить("Отделение", Объект.Отделение);
	ЛичныеДанные.Вставить("ПрограммаОбучения", ПрограммаОбучения);
	ЛичныеДанные.Вставить("Специальность", СпециальностьИзПрограммыОбучения);
	ЛичныеДанные.Вставить("Курс", Объект.Курс);
	ЛичныеДанные.Вставить("ГодПоступления", ГодПоступления);
	ЛичныеДанные.Вставить("ВидФинансирования", ВидФинансирования);
	ЛичныеДанные.Вставить("ГруппаЗачисления", Объект.ЗачислениеВГруппу);
	
	Возврат ЛичныеДанные;
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьПрограммуОбучения(Группа)
	Возврат Группа.ПрограммаОбучения;
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьСпециальностьИзПрограммыОбучения(ПрограммаОбучения)
	Возврат ПрограммаОбучения.Специальность;
КонецФункции

&НаСервереБезКонтекста
Процедура ЗаписатьИнформациюНаСтудента(Студент, ЛичныеДанные)
	СтудентСсылка = Студент;
	СтудентОбъект = СтудентСсылка.ПолучитьОбъект();

	СтудентОбъект.Отделение = ЛичныеДанные.Отделение;
	СтудентОбъект.ЗачисленПрограммаОбучения = ЛичныеДанные.ПрограммаОбучения;
	СтудентОбъект.ТекущаяПрограммаОбучения = ЛичныеДанные.ПрограммаОбучения;
	СтудентОбъект.Специальность = ЛичныеДанные.Специальность;
	СтудентОбъект.Курс = ЛичныеДанные.Курс;
	СтудентОбъект.ГодПоступления = ЛичныеДанные.ГодПоступления;
	СтудентОбъект.ВидФинансирования = ЛичныеДанные.ВидФинансирования;
	СтудентОбъект.УчебнаяГруппа = ЛичныеДанные.ГруппаЗачисления;
	СтудентОбъект.СтатусСтудента = Перечисления.СтатусыСтудента.Студент;
	
	СтудентОбъект.Записать();
КонецПроцедуры

&НаКлиенте
Процедура ВидПриказаОбработкаВыбора(Элемент, ВыбранноеЗначение, СтандартнаяОбработка)
	ОткрытьФорму(ДвижениеКонтингента.ПолучитьФормуИзВидаПриказа(ВыбранноеЗначение));
КонецПроцедуры

// проверка того, что студент уже числится в группе
&НаКлиенте
Процедура СписокСтудентовСтудентПриИзменении(Элемент)
	Студент = Элементы.СписокСтудентов.ТекущиеДанные.Студент;
	ГруппаСтудентаИзРегистра = ДвижениеКонтингента.ПолучитьГруппуСтудента(Объект.Дата, Студент);
	
	ГруппаСтудента = ПолучитьГруппу(Элементы.СписокСтудентов.ТекущиеДанные.Студент);
	Если ЗначениеЗаполнено(ГруппаСтудента) Тогда
		Сообщить("Студенты " + Элементы.СписокСтудентов.ТекущиеДанные.Студент + " уже числится в группе " + ГруппаСтудента);
	ИначеЕсли ЗначениеЗаполнено(ГруппаСтудентаИзРегистра) Тогда
		Сообщить("Студенты " + Элементы.СписокСтудентов.ТекущиеДанные.Студент + " уже числится в группе " + ГруппаСтудентаИзРегистра + ". Данные взяты из регистра сведений");
	КонецЕсли;
	
	ЗаполнитьТекущуюДатуНомер();
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьТекущуюДатуНомер()
	Элементы.СписокСтудентов.ТекущиеДанные.НомерПриказаОЗачислении = Объект.Номер;
	Элементы.СписокСтудентов.ТекущиеДанные.ДатаПриказаОЗачислении = Объект.Дата;
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьГруппу(Студент)
	Возврат Студент.УчебнаяГруппа;
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьОтедениеГруппы(Группа)
	Возврат Группа.Отделение;
КонецФункции

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	Объект.ВидПриказа = ДвижениеКонтингента.ПолучитьВидыПриказов().Зачисление;
	Объект.СтатусСтудента = ДвижениеКонтингента.ПолучитьСтатусыСтудента().Студент;
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьКурсГруппы(Группа)
	Возврат Группа.Курс;
КонецФункции

&НаКлиенте
Процедура ЗачислениеВГруппуПриИзменении(Элемент)
	Объект.Курс = ПолучитьКурсГруппы(Объект.ЗачислениеВГруппу);
	Объект.Отделение = ПолучитьОтедениеГруппы(Объект.ЗачислениеВГруппу);
КонецПроцедуры


