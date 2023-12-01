# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

  - Ruby

    - Run below command in mingw64(MSYS2 MINGW64 shell launcher). In mine, I found inside C:\Ruby31-x64\msys64.

    ```
    rm -r /etc/pacman.d/gnupg/

    pacman-key --init

    pacman-key --populate msys2
    ```

- Postgres \* Add superuser password to dev/test in config/database.yml
  `rake db:create`
- [UUID setup](https://danielabaron.me/blog/rails-uuid-primary-key-postgres/)

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
