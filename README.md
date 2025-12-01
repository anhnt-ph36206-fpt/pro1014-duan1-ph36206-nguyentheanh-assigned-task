# pro1014-duan1-ph36206-nguyentheanh-assigned-task

- Clone project từ github về gốc www laragon:
```
git clone https://github.com/nguyentheanh123456789/pro1014-duan1-ph36206-nguyentheanh-assigned-task.git
```

-   Đổi tên thủ công hoặc chạy lệnh để đổi tên thư mục dự án vừa clone về:
```
    mv pro1014-duan1-ph36206-nguyentheanh-assigned-task du_an1
```

-   Ta sẽ có path như sau:
```
    /www/du_an1
    /htdocs/du_an1
```

-   Trong thư mục dự án sẽ chứa các file và folder như sau:
```
    /www/du_an1/du_an1/
    ├── .git/
    ├── admin
    ├── assets/
    ├── controllers/
    ├── models
    ├── databases/
    ├── uploads/
    ├── views/
    ├── doc.md
    ├── index.php
    ├── README.MD
```

-   Vào /commons/.env để cấu hình database:
    + Tạo database mới có tên là ``du_an1`` trong phpmyadmin
    + define('DB_NAME'    , 'du_an1');  // Tên database

-   Lưu ý:
    + Bật laragon và truy cập vào đường dẫn http://localhost/du_an1/
    + Mặc định apache cổng ```80```
    + Mysql cổng ```3306```