﻿// №3 Поиск минимальных, максимальных элементов в массиве случайный чисел
Процедура МинМакс()                  
	Числа = Новый Массив(100);                      //Создан массив на 100 элементов
	ГСЧ = Новый ГенераторСлучайныхЧисел;            //Создан генератор случайных чисел
	МинимальноеЧисло = 1000;
	МаксимальноеЧисло = 0;
	СуммаЧисел = 0;
	
	Для Шаг = 0 По 99 Цикл
		Числа[Шаг] = ГСЧ.СлучайноеЧисло(0, 1000);	//Заполнили массив случайными числами от 0 до 1000
		Если МинимальноеЧисло > Числа[Шаг] Тогда    //Отбираем минимальное число
			МинимальноеЧисло = Числа[Шаг];
		КонецЕсли;
		Если МаксимальноеЧисло < Числа[Шаг] Тогда   //Отбираем максимальное число
			МаксимальноеЧисло = Числа[Шаг];
		КонецЕсли;
		
		СуммаЧисел = СуммаЧисел + Числа[Шаг];
		
	КонецЦикла;
	
	СреднееАрифметическое = СуммаЧисел / Числа.Количество();
	Сообщить("Минимальное число: " + МинимальноеЧисло);
	Сообщить("Максимальное число: " + МаксимальноеЧисло);
	Сообщить("Среднее арифметическое: " + СреднееАрифметическое);  
КонецПроцедуры 

// №4 Сортировка массива методом пузырька
Процедура Пузырек()
	Числа = Новый Массив(100);                      //Создан массив на 100 элементов
	ГСЧ = Новый ГенераторСлучайныхЧисел;            //Создан генератор случайных чисел 
	
	Для Шаг = 0 По 99 Цикл 
		Числа[Шаг] = ГСЧ.СлучайноеЧисло(0, 1000);	//Заполнили массив случайными числами от 0 до 1000
	КонецЦикла;
	Для ВнешШаг = 1 По Числа.Количество() - 1 Цикл 
		Обмен = Ложь;
		Для ВнутрШаг = 1 По Числа.Количество() - 1 Цикл 
			Если Числа[ВнутрШаг - 1] > Числа[ВнутрШаг] Тогда
				Переменная = Числа[ВнутрШаг - 1];
				Числа[ВнутрШаг - 1] = Числа[ВнутрШаг];
				Числа[ВнутрШаг] = Переменная;
				Обмен = Истина;
			КонецЕсли;
		КонецЦикла;  
		Если Не Обмен Тогда   //Если не было обмена сортировка завершена
			Прервать;
		КонецЕсли;	
	КонецЦикла;
	
	Для Каждого Элемент Из Числа Цикл    
		Сообщить(Элемент);
	КонецЦикла;
КонецПроцедуры

//№5 Вычисление факториала
Процедура Факториал()
ГСЧ = Новый ГенераторСлучайныхЧисел;            //Создан генератор случайных чисел 
Число = ГСЧ.СлучайноеЧисло(1, 15);              //Сгенерировано случайное число
Факториал = 1;
Для Шаг = 1 По Число Цикл
	Факториал = Факториал * Шаг;
КонецЦикла;
Сообщить("Факториал " + Число + " равен: " + Факториал);
КонецПроцедуры 



//№6 Простые числа 
Функция ПростыеЧисла(Число)
	//Число = 0;
	//ВвестиЧисло(Число, "Введите натуральное число");
	Число = Цел(Число);
	
	ПростоеЧисло = Истина;
	//Если Число > 2 Тогда
		Для Шаг = 2 По Число - 1 Цикл
			Если Число%Шаг = 0 Тогда 
				ПростоеЧисло = Ложь;
				//ОткрытьЗначение("Число " + Число + " не является простым");
				Прервать;
			КонецЕсли;
		КонецЦикла;
	//КонецЕсли;
	//Если ПростоеЧисло Тогда
	//	ОткрытьЗначение("Число " + Число + " является простым");
	//КонецЕсли;
	Возврат ПростоеЧисло;
	
КонецФункции  

//№7а Вывод простых чисел от 1 дл 1000 
Процедура ВыводПростыхЧисел()
Для Шаг = 1 По 1000 Цикл
	Если ПростыеЧисла(Шаг) Тогда
		Сообщить(Шаг);
	КонецЕсли;
КонецЦикла;
КонецПроцедуры

//№7б Палиндром
Процедура Палиндром()
Стр ="";
ВвестиСтроку(Стр, "Введите слово"); 
ДлинаСлова = СтрДлина(Стр);
Стр = НРег(Стр);
ЯвляетсяПалиндромом = Истина;

Для Шаг = 1 По Цел(ДлинаСлова / 2) Цикл  
	Если Не КодСимвола(Стр, Шаг) = КодСимвола(Стр,ДлинаСлова - (Шаг - 1)) Тогда
		ОткрытьЗначение("Слово " + Стр + " не является палиндромом"); 
		ЯвляетсяПалиндромом = Ложь;
		Прервать;
	КонецЕсли;
КонецЦикла;

Если ЯвляетсяПалиндромом Тогда
	ОткрытьЗначение("Слово " + Стр + " является палиндромом");
КонецЕсли;
КонецПроцедуры

//№8 Подсчет колисества слов, пробелов и знаков препинания
Процедура ПодсчетСлов()
	Строка = "";
	ВвестиСтроку(Строка, "Введите строку");
	СчетчикСлов = 0;
	СчетчикПробелов = 0;
	СчетчикЗнаков = 0; 
	СпецСимволы = "!`~"";:?*()/|\'[]{}<>-_@#$%^&+.,";
	Для Шаг = 1 По СтрДлина(Строка) Цикл
		Символ = Сред(Строка, Шаг, 1); //получаем текущий символ 
		Если Символ = " " Тогда
			СчетчикПробелов = СчетчикПробелов + 1;
		ИначеЕсли 
			СтрНайти(СпецСимволы, Символ) > 0 Тогда
			СчетчикЗнаков = СчетчикЗнаков + 1;
		Иначе
			Если Шаг = 1 Тогда
				СчетчикСлов = СчетчикСлов + 1;
			ИначеЕсли Сред(Строка, Шаг - 1, 1) = " " Или СтрНайти(СпецСимволы, Сред(Строка, Шаг - 1, 1)) > 0 Тогда
				СчетчикСлов = СчетчикСлов + 1; //если предыдущий символ не буква, то началось слово
			КонецЕсли;
		КонецЕсли;
	КонецЦикла;
	ОткрытьЗначение("Количество слов: " + СчетчикСлов + ", количество пробелов: " + СчетчикПробелов + ", количество знаков препинания: " + СчетчикЗнаков);
КонецПроцедуры

//№9 Сортировка строки по длине слов
Процедура СортировкаСлов()
Строка = "";
ВвестиСтроку(Строка, "Введите строку");
ЗнакиПрепинания = "! `~"";:?*()/|\'[]{}<>-_@#$%^&+.,"; // знаки препинания, в том числе пробел
МыВСлове = Ложь;
Слова = Новый Массив; 
ТекущееСлово = "";

Для Шаг = 1 По СтрДлина(Строка) Цикл
	Символ = Сред(Строка, Шаг, 1);
	Если  СтрНайти(ЗнакиПрепинания, Символ) > 0 Тогда  // если встретили пробел или знак препинания
		Если МыВСлове Тогда //если мы внутри слова - оно закончилось
			Слова.Добавить(ТекущееСлово); //добавляем его в массив
			ТекущееСлово = "";            //и обнуляем
		КонецЕсли; 
		МыВСлове = Ложь;     
		
	Иначе  // иначе буква, т.е. мы в слове 
		МыВСлове = Истина;
		ТекущееСлово = ТекущееСлово + Символ;	
	КонецЕсли;
КонецЦикла;

	
Если МыВСлове Тогда //если после последнего слова не было знаков препинания
	Слова.Добавить(ТекущееСлово);
КонецЕсли; 

Для ВнешШаг = 1 По Слова.Количество() - 2 Цикл 
	Обмен = Ложь;
	Для ВнутрШаг = 1 По Слова.Количество() - 1 Цикл 
		Если СтрДлина(Слова[ВнутрШаг - 1]) > СтрДлина(Слова[ВнутрШаг]) Тогда
			Переменная = Слова[ВнутрШаг - 1];
			Слова[ВнутрШаг - 1] = Слова[ВнутрШаг];
			Слова[ВнутрШаг] = Переменная;
			Обмен = Истина;
		КонецЕсли;
	КонецЦикла;  
	Если Не Обмен Тогда   //Если не было обмена сортировка завершена
		Прервать;
	КонецЕсли;	
КонецЦикла;

Для Каждого Элемент Из Слова Цикл
	ОткрытьЗначение(Элемент); 
	КонецЦикла;
Конецпроцедуры

//№10 Шифрование
Процедура Шифрование()
Документ = Новый ТекстовыйДокумент;       //чтение текстового файла
Документ.Прочитать("d:\1C_REP\in.txt");
Текст = Документ.ПолучитьТекст();
Сообщить (Текст);  
ЗашифрованныйТекст = "";

Для Шаг = 1 По СтрДлина(Текст) Цикл      //посимвольное шифрование
	Символ = Сред(Текст, Шаг, 1);
	ШифрСимвол = Символ(КодСимвола(Символ, 1) * 2); // (Текст, Шаг)
	ЗашифрованныйТекст = ЗашифрованныйТекст + ШифрСимвол;
КонецЦикла;

Документ.УстановитьТекст(ЗашифрованныйТекст);
Документ.Записать("d:\1C_REP\out.txt"); 
КонецПроцедуры

//№11 Дешифрование 
Процедура Дешифрование()
Документ = Новый ТекстовыйДокумент;       //чтение текстового файла
Документ.Прочитать("d:\1C_REP\out.txt");
ЗашифрованныйТекст = Документ.ПолучитьТекст(); 
ДешифрованныйТекст  = "";

Для Шаг = 1 По СтрДлина(ЗашифрованныйТекст) Цикл
	ШифрованныйСимвол = Сред(ЗашифрованныйТекст, Шаг, 1);
	Символ = Символ(КодСимвола(ШифрованныйСимвол, 1) / 2);
	ДешифрованныйТекст = ДешифрованныйТекст + Символ;
КонецЦикла;

Документ.УстановитьТекст(ДешифрованныйТекст);
Документ.Записать("d:\1C_REP\res.txt");
КонецПроцедуры

//№12 Создание паролей
Процедура ГенераторПаролей()
СтрокаСимволов = "1234567890_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
Пароли = Новый Массив;
ДлинаПароля = 0;
КоличествоПаролей = 0;
ВвестиЧисло(ДлинаПароля, "Введите длину пароля");
ВвестиЧисло(КоличествоПаролей, "Введите количество паролей");
ГСЧ = Новый ГенераторСлучайныхЧисел();

Для Шаг = 0 По КоличествоПаролей - 1 Цикл	
	Пароль = "";
	Для К = 1 По ДлинаПароля Цикл
		НомерВСтроке = ГСЧ.СлучайноеЧисло(1, СтрДлина(СтрокаСимволов));
		Символ = Сред(СтрокаСимволов, НомерВСтроке, 1);
		Пароль = Пароль + Символ;
	КонецЦикла;
	Пароли.Добавить(Пароль); 
КонецЦикла;

Для Каждого Элемент Из Пароли Цикл 
	ОткрытьЗначение(Элемент);
КонецЦикла;
КонецПроцедуры

//№13А Коллекции
Процедура Коллекции()
Предпочтения = Новый Структура("ЛюбимыйЦвет, ЛюбимыйФильм, ВремяГода");     //структура
ВвестиСтроку(Предпочтения.ЛюбимыйЦвет, "Введите любимый цвет");
ВвестиСтроку(Предпочтения.ЛюбимыйФильм, "Введите любимый фильм");
ВвестиСтроку(Предпочтения.ВремяГода, "Введите любимое время года");
//Для Каждого Элемент Из Предпочтения Цикл
//	ОткрытьЗначение(Элемент.Ключ + " " + Элемент.Значение); 
//КонецЦикла;

МассивПредпочтений = Новый Массив;                                        //массив
МассивПредпочтений.Добавить(Предпочтения.ЛюбимыйЦвет);
МассивПредпочтений.Добавить(Предпочтения.ЛюбимыйФильм);
МассивПредпочтений.Добавить(Предпочтения.ВремяГода);

//Для Каждого Элемент Из МассивПредпочтений Цикл
//	ОткрытьЗначение(Элемент);
//КонецЦикла;

Список = Новый СписокЗначений;                                          //список значений
Список.Добавить(МассивПредпочтений[0], "любимый цвет");
Список.Добавить(Предпочтения.ЛюбимыйФильм, "любимый фильм");
Список.Добавить(Предпочтения.ВремяГода, "любимое время года");

Для Каждого Элемент Из Список Цикл
	ОткрытьЗначение(Элемент.Представление + ": " + Строка(Элемент.Значение));
КонецЦикла;
КонецПроцедуры

//№13Б События
Процедура События()
//Структура
СобытияСтруктура = Новый Структура("ПолетГагарина, ОтменаКрепостногоПрава, КрещениеРуси, РаспадСССР, ОкончаниеВОВ, ОснованиеРуси", 1961, 1861, 988, 1991, 1945, 862); 
Год = 0;
ВвестиЧисло(Год, "Введите год");
Флаг = Ложь;
//Для Каждого Элемент Из СобытияСтруктура Цикл 
//	Если Год = Элемент.Значение Тогда
//		ОткрытьЗначение("В " + Год + " году произошло событие: " + Элемент.Ключ);
//		Флаг = Истина;
//		Прервать;
//	КонецЕсли;
//КонецЦикла;
//Если Не Флаг Тогда
//	ОткрытьЗначение("В " + Год + " году не было событий");
//КонецЕсли; 

//Массив
СобытияМассив = Новый Массив(6, 2); 
СобытияМассив[0][0] = СобытияСтруктура.ПолетГагарина;
СобытияМассив[0][1] = "Полет Гагарина";
СобытияМассив[1][0] = 1861;
СобытияМассив[1][1] = "Отмена крепостного права в России";
СобытияМассив[2][0] = 988;
СобытияМассив[2][1] = "Крещение Руси";
СобытияМассив[3][0] = 1991;
СобытияМассив[3][1] = "Распад СССР";
СобытияМассив[4][0] = 1945;
СобытияМассив[4][1] = "Окончание Великой Отечественной войны";
СобытияМассив[5][0] = 862;
СобытияМассив[5][1] = "Основание Руси";

Сообщение = "Событие, связанное с этой датой отсутствует";
Для Шаг = 0 По СобытияМассив.Количество() - 1 Цикл
	Если Год = СобытияМассив[Шаг][0] Тогда
		Сообщение = СобытияМассив[Шаг][1];
		Прервать;
	КонецЕсли;
КонецЦикла; 

//ОткрытьЗначение(Сообщение);

//Список значений
Список = Новый СписокЗначений;
Список.Добавить(СобытияСтруктура.ПолетГагарина, "полет Гагарина");
Список.Добавить(СобытияСтруктура.ОтменаКрепостногоПрава, "отмена крепостного права");
Список.Добавить(СобытияСтруктура.КрещениеРуси, "крещение Руси");
Список.Добавить(СобытияСтруктура.РаспадСССР, "распад СССР");
Список.Добавить(СобытияСтруктура.ОкончаниеВОВ, "окончание Великой Отечественной войны");
Список.Добавить(СобытияСтруктура.ОснованиеРуси, "основание Руси");

Элемент =  Список.НайтиПоЗначению(Год);
Если Элемент  = Неопределено Тогда 
	ОткрытьЗначение("В " + Год + " году не было событий");
Иначе
	ОткрытьЗначение("Событие: " + Элемент.Представление + " было в " + Элемент.Значение + " году");
КонецЕсли;
КонецПроцедуры

//№14 Скобки
Процедура Скобки()
Строка = "";
ВвестиСтроку(Строка);
Ошибка = 0;
Для Шаг = 1 По СтрДлина(Строка) Цикл
	Символ = Сред(Строка, Шаг, 1);
	Если Символ = "(" Тогда
		Ошибка = Ошибка + 1;
	ИначеЕсли Символ = ")" Тогда
		Ошибка = Ошибка - 1;
	КонецЕсли;
	Если Ошибка < 0 Тогда
		Прервать;
	КонецЕсли;
КонецЦикла;
Если Ошибка = 0 Тогда
	ОткрытьЗначение("Правильная последовательность"); 
Иначе
	ОткрытьЗначение("Есть ошибка"); 
КонецЕсли;
КонецПроцедуры

//№15 Возраст
Процедура Возраст()
Строка = "";
ВвестиСтроку(Строка, "Сколько вам лет?");
Цифры = "1234567890";
Возраст = ""; 
Для Шаг = 1 По СтрДлина(Строка) Цикл
	Символ = Сред(Строка, Шаг, 1);
	Если СтрНайти(Цифры, Символ)>0 Тогда
		Возраст = Возраст + Символ;
	КонецЕсли;
КонецЦикла;
ОткрытьЗначение(Возраст);
КонецПроцедуры

//№16 Светофор
Процедура Светофор()
Секунды = 0;
ВвестиЧисло(Секунды, "Введите количество секунд");
Промежутки = Новый Массив(3, 2);
Промежутки[0][0] = 3 * 60; 
Промежутки[0][1] = "Зеленый";

Промежутки[1][0] = 60;
Промежутки[1][1] = "Желтый";

Промежутки[2][0] = 2 * 60;
Промежутки[2][1] = "Красный";

Время = 0;             //текущее время
НомерПромежутка = 0;   //текущий номер промежутка

Пока Время < Секунды Цикл 
	Время = Время + Промежутки[НомерПромежутка][0];
	Если Секунды <= Время Тогда
		ОткрытьЗначение("Цвет светофора на " + Секунды + " секунде " + Промежутки[НомерПромежутка][1]);
		Прервать;
	КонецЕсли;
	НомерПромежутка = НомерПромежутка + 1;
	Если НомерПромежутка > Промежутки.Количество() - 1 Тогда
		НомерПромежутка = 0;
	КонецЕсли;
КонецЦикла;
Конецпроцедуры

//№17 ФИО
Процедура ФИО()
Строка = "";
ВвестиСтроку(Строка, "Введите ФИО"); 
ФИО=""; 
Строка = СтрЗаменить(Строка, " ", Символы.ПС);

Для Шаг = 1 По СтрЧислоСтрок(Строка) Цикл
		
	Если Шаг = 1 Тогда
		ФИО = СтрПолучитьСтроку(Строка,Шаг); // Фамилия
	ИначеЕсли Шаг > 1 Тогда
		Инициалы = СтрПолучитьСтроку(Строка,Шаг);
		Инициалы = Лев(Инициалы, 1) + ".";
		ФИО = ФИО + " " + Инициалы;
	КонецЕсли; 
КонецЦикла; 

ОткрытьЗначение(ФИО);
КонецПроцедуры

//№18 Формат
Процедура Форматы()
//Сообщить (Формат(250.99, "ЧРД=="));  
//Сообщить (Формат(5000,"ЧГ=0"));
//Сообщить(Формат(256193, "ЧРГ=*")); 
//Сообщить(Формат(3, "ЧЦ=2; ЧВН="));
//Сообщить(Формат(0, "ЧН=ноль"));
//Сообщить(Формат(1, "ЧС=3"));
//Сообщить(Формат(10.567,"ЧДЦ=2"));
//Сообщить(ЧислоПрописью(25.99,,"рубль, рубля, рублей, м, копейка, копейки, копеек, ж, 2"));
//Сообщить(ПредставлениеПериода(НачалоКвартала('20140101'), КонецКвартала('20140101'), "ФП=Истина"));	
Сообщить(Формат('20140101', "ДЛФ=ДД")); 
Сообщить(Формат('20140101', "ДФ=дддд"));
Сообщить(Формат('20140101', "ДФ=ддд")); 
Сообщить(Формат('20140101', "ДФ=ММММ"));
Сообщить(Формат('20140101', "ДФ=МММ"));
Сообщить(Формат('20140101', "ДЛФ=Д"));
КонецПроцедуры

//№19 Процедуры 
Процедура ОперацииСМассивом()
	Числа = Новый Массив(10); 
	ГСЧ = Новый ГенераторСлучайныхЧисел(); 
	Для Шаг = 0 По 9 Цикл                      //заполнение массива числами, от 1 до 10
		Числа[Шаг] = ГСЧ.СлучайноеЧисло(1, 10);
	КонецЦикла; 
	
	Задачки.ВыводМассива(Числа);
	
	Задачки.Перемешать(Числа);
	Задачки.ВыводМассива(Числа); 
	
	Задачки.Сортировка(Числа);
	Задачки.ВыводМассива(Числа);
	
КонецПроцедуры

//№20 Функции
Процедура ПеремножениеМассива()
	Числа = Новый Массив(10); 
	ГСЧ = Новый ГенераторСлучайныхЧисел(); 
	Для Шаг = 0 По 9 Цикл                      //заполнение массива числами, от 1 до 100
		Числа[Шаг] = ГСЧ.СлучайноеЧисло(1, 100);
	КонецЦикла;
	Результат = Новый Массив;
	Результат = Задачки.УмножениеМассива(Числа); 
	Задачки.ВыводМассива(Числа);
	Задачки.ВыводМассива(Результат);
КонецПроцедуры

//№21 Книга событий

СписокСобытий = Новый СписокЗначений;
СписокСобытий.Добавить(1961, "Первый полёт в космос");
СписокСобытий.Добавить(988, "Крещение Руси");

Пока Истина Цикл
	Текст = События.ВыводСобытий(СписокСобытий); 
	Ответ = Вопрос(Текст + Символы.ПС + Символы.ПС + 
	"========================================"
	"[1] - Ввести новое событие"
	"[2] - Очистить список событий"
	"[3] - Сортировать события по году"
	"[4] - Вывести все события на определенную дату"
	"========================================"
	"Введите номер команды или нажмите ""Отмена"" для"
	"выхода из книги.",  
	РежимДиалогаВопрос.ОКОтмена);
	Если Ответ = КодВозвратаДиалога.Отмена Тогда
		Прервать;
	ИначеЕсли Ответ = КодВозвратаДиалога.ОК Тогда 
		Команда = 0; 
		Если Не ВвестиЧисло(Команда, "Введите номер команды") Тогда
			Прервать
		Иначе
			
			Если Команда = 1 Тогда
				События.ДобавитьСобытие_1(СписокСобытий);
			ИначеЕсли Команда = 2 Тогда
				События.ОчиститьСобытия_2(СписокСобытий); 
			ИначеЕсли Команда = 3 Тогда
				События.СортироватьСобытия_3(СписокСобытий);
			ИначеЕсли Команда = 4 Тогда
				События.ВывестиПоГоду_4(СписокСобытий);
			КонецЕсли;
		КонецЕсли; 
	КонецЕсли;
КонецЦикла;








		
	
	


	
	



	



	
	
	





		
	
		
	





	
	
		
			
			
		
			
	




	
		
		
		
	
		
		
		
	








		

	





