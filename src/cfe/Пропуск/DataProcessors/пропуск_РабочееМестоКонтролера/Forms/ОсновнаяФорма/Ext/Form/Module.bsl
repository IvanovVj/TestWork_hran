﻿
#Область ОбработчикиСобытийКомандФормы

&НаКлиенте
Процедура КомандаОткрытьТурникет(Команда)
	
	пропуск_РаботаСКонтролллеромТурникетаКлиент.ОткрытьТурникет();
	
КонецПроцедуры

&НаКлиенте
Процедура КомандаОткрытьТурникетСотруднику(Команда)
	
	ТекущиеДанные = Элементы.СписокСотрудников.ТекущиеДанные;
	
	Если ТекущиеДанные = Неопределено Тогда
		
		пропуск_РаботаСКонтролллеромТурникетаКлиент.СообщитьОбИнциденте(
			ПредопределенноеЗначение("Перечисление.пропуск_ТипыСообщений.Сообщение_СотрудникВТаблицеНеВыбран"));
		
		Возврат;
		
	КонецЕсли;
	
	пропуск_РаботаСКонтролллеромТурникетаКлиент.ОткрытьТурникет(ТекущиеДанные.пропуск_ИдентификаторПропуска);
	
КонецПроцедуры

&НаКлиенте
Процедура КомандаОтправитьОшибку(Команда)
	
	КомандаОтправитьОшибкуНаСервере();
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовФормы

&НаКлиенте
Процедура СписокСотрудниковПередНачаломИзменения(Элемент, Отказ)
	
	Отказ = Истина;
	
КонецПроцедуры

&НаСервере
Процедура КомандаОтправитьОшибкуНаСервере()
	// Вставить содержимое обработчика.
КонецПроцедуры

#КонецОбласти

#Область СлужебныйИнтерфейс

#КонецОбласти
