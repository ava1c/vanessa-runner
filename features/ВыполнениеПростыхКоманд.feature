# language: ru

Функциональность: Выполнение команды продукта

Как разработчик
Я хочу иметь возможность выполнять команды продукта
Чтобы выполнять коллективную разработку приложения для OneScript

Контекст:
    Допустим Я очищаю параметры команды "oscript" в контексте 
    И я включаю отладку лога с именем "oscript.app.app-template"
    # И я включаю отладку лога с именем "bdd"

Сценарий: Получение версии продукта
    Когда Я выполняю команду "oscript" c параметрами "src/main.os version"
    Тогда Я сообщаю вывод команды "oscript"
    И Вывод команды "oscript" содержит "."
    И Вывод команды "oscript" не содержит "vanessa-runner v"
    И Код возврата команды "oscript" равен 0

Сценарий: Получение помощи продукта
    Когда Я выполняю команду "oscript" c параметрами "src/main.os --help"
    И Вывод команды "oscript" содержит "vanessa-runner v"
    И Вывод команды "oscript" содержит
    """
       Возможные команды:
        --help      - Вывод справки по параметрам
        version     - Выводить версию приложения
    """
    И Код возврата команды "oscript" равен 0

Сценарий: Вызов исполняемого файла без параметров
    Когда Я выполняю команду "oscript" c параметрами "src/main.os"
    Тогда Вывод команды "oscript" содержит "vanessa-runner v"
    И Вывод команды "oscript" содержит "ОШИБКА - Некорректные аргументы командной строки"
    И Вывод команды "oscript" содержит 
    """
       ОШИБКА - Некорректные аргументы командной строки
        Возможные команды:
        --help      - Вывод справки по параметрам
        version     - Выводить версию приложения
    """
    И Код возврата команды "oscript" равен 1

# TODO Сценарий: Вызов приложения с предварительно включенной отладкой
# проверить вывод отладочной инфы