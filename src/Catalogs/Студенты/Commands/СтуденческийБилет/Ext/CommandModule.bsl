﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//{{_КОНСТРУКТОР_ПЕЧАТИ(СтуденческийБилет)
	ТабДок = Новый ТабличныйДокумент;
	СтуденческийБилет(ТабДок, ПараметрКоманды);

	ТабДок.ОтображатьСетку = Истина;
	ТабДок.Защита = Ложь;
	ТабДок.ТолькоПросмотр = Истина;
	ТабДок.ОтображатьЗаголовки = Истина;
	ТабДок.Показать("Студенческий билет", "Студенческий билет");
	//}}
КонецПроцедуры

&НаСервере
Процедура СтуденческийБилет(ТабДок, ПараметрКоманды)
	Справочники.Студенты.СтуденческийБилет(ТабДок, ПараметрКоманды);
КонецПроцедуры
