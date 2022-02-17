﻿#language: ru

@tree

Функционал: Использование конструкций языка Геркен

Как участник курса по автотестированию я хочу
выполнить задание 5-го модуля курса
чтобы подтвердить усвоение урока

Сценарий: Проверка заполнения организации в заказе покупателя	
	Дано я активизирую окно текущего клиента тестирования	
	И я закрываю все окна клиентского приложения	
	И я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	И в таблице "List" я перехожу к строке:
		| 'Вид'     | 'Вид взаиморасчетов' | 'Код' | 'Наименование'                                                    |
		| 'Обычное' | 'По документам'      | '1'   | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' |
	И в таблице "List" я выбираю текущую строку
	Если элемент формы с именем "Company" стал равен '' Тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'           |
			| '2'   | 'Собственная компания 2' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы с именем "Company" стал равен 'Собственная компания 2'
	Иначе
		Тогда элемент формы с именем "Company" стал равен 'Собственная компания 1'