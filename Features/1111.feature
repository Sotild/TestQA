﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@Закупки

Функционал: Создание документа Поступления Товаров

Как Менеджер по закупкам я хочу
создание документов поступления товаров
чтобы поставить товар на учет

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий


@Номенклатура
Сценарий: проверка наличия в справочнике номенклатуры Торт
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я выбираю текущую строку
	И я делаю эффект затемнения у элементов формы UI Automation 16160		
				| 'Имя'       | 'Тип' |
				| 'Наименование' | ''    |
				| 'Вид' | ''    |
				
				| 'Имя'      | 'Значение' |
				| 'text'     | 'Вводим наименование' |
	
	И Пауза 4

	И я рисую стрелку к элементам формы UI Automation 16160
				| 'Имя'       | 'Тип' |
				| 'Код' | 'Строка'    |

			| 'Имя'          | 'Значение' |
			| 'color'        | 2372      |
			| 'transparency' | 127        |
			| 'duration'     | 4000       |
			| 'thickness'    | 6          |
				| 'frameDelay'   | 20         |

	И Пауза 4