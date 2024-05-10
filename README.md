### Сборка и запуск контейнеров

```shell 
docker compose build
docker compose up
```

### Запуск тестов

Перед запуском тестов необходимо настроить `.env` файл. В нем необходимо указать необходимые этапы тестирования в следующем виде:
- `STYLE=1` - для запуска форматирования `pindent`
- `STATIC=1` - для запуска `pylint`
- `INTEGRATION=1` - для запуска интеграционных тестов (проверка на загрузку файла)

Если не будет установлено ни одного этапа, то запустятся все.

Для запуска тестов необходимо выполнить команду: `docker exec tester bash ./run_tests.sh`

### Подключение по ssh

Перед сборкой и запуском контейнеров необходимо выполнить следующие действия:

1. Сгенерировать ssh ключи: `ssh-keygen -t rsa`
2. Поместить сгенерированные ключи `id_rsa.pub` и `id_rsa` в папку `tests/ssh_keys`

После сборки и запуска контейнеров подключение можно осуществить при помощи команды `ssh root@127.0.0.1 -p 3222 -i .\tests\ssh_keys\id_rsa`
