﻿
&НаКлиенте
Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
	Для Каждого СтрочкаСтудента из Объект.СписокСтудентов Цикл
		ЗаписатьИнформациюНаСтудента(СтрочкаСтудента.Студент);
	КонецЦикла;
КонецПроцедуры

&НаСервере
Процедура ЗаписатьИнформациюНаСтудента(Студент)
	СтудентСсылка = Студент;
	СтудентОбъект = СтудентСсылка.ПолучитьОбъект();
	
	СтудентОбъект.Отделение = "";
	СтудентОбъект.ВидФинансирования = "";
	СтудентОбъект.ТекущаяПрограммаОбучения = "";
	СтудентОбъект.УчебнаяГруппа = "";
	СтудентОбъект.Специальность = "";
	СтудентОбъект.Курс = "";
	СтудентОбъект.СтатусСтудента = Перечисления.СтатусыСтудента.Отчислен;
	
	СтудентОбъект.Записать();
КонецПроцедуры

&НаКлиенте
Процедура ВидПриказаОбработкаВыбора(Элемент, ВыбранноеЗначение, СтандартнаяОбработка)
	ОткрытьФорму(ДвижениеКонтингента.ПолучитьФормуИзВидаПриказа(ВыбранноеЗначение));
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	Объект.ВидПриказа = ДвижениеКонтингента.ПолучитьВидыПриказов().Отчисление;
	Объект.СтатусСтудента = ДвижениеКонтингента.ПолучитьСтатусыСтудента().Отчислен;
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	СтандартнаяОбработка = Истина;
КонецПроцедуры

