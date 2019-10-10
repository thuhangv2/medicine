- clone repo ve
$ php artisan key:generate
$ php artisan serve

### make view cho authenticate
$ composer.phar require laravel/ui --dev
$ npm install && npm run dev
$ php artisan ui vue --auth

### mysql version mới nhất xảy ra vấn đề khi php artisan migrate
The server requested authentication method unknown to the client [caching_sha2_password]
$ brew info mysql (xem info về mywsl hiện tại đang dùng)
$ mysql -uroot
$ SHOW VARIABLES LIKE 'validate_password%';
$ SET GLOBAL validate_password.check_user_name = OFF;
...
$ alter user 'root'@'localhost' identified with mysql_native_password by 'root';
+--------------------------------------+-------+
| Variable_name                        | Value |
+--------------------------------------+-------+
| validate_password.check_user_name    | OFF   |
| validate_password.dictionary_file    |       |
| validate_password.length             | 4     |
| validate_password.mixed_case_count   | 0     |
| validate_password.number_count       | 0     |
| validate_password.policy             | LOW   |
| validate_password.special_char_count | 0     |
| validate_password_check_user_name    | OFF   |
| validate_password_dictionary_file    |       |
| validate_password_length             | 4     |
| validate_password_mixed_case_count   | 0     |
| validate_password_number_count       | 0     |
| validate_password_policy             | LOW   |
| validate_password_special_char_count | 0     |
+--------------------------------------+-------+
ket qua:
$ mysql -uroot -proot 
