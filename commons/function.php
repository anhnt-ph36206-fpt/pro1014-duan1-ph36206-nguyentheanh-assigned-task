<?php

// Kết nối CSDL qua PDO
function connectDB()
{
    // Kết nối CSDL
    $host = DB_HOST;
    $port = DB_PORT;
    $dbname = DB_NAME;

    try {
        $conn = new PDO("mysql:host=$host;port=$port;dbname=$dbname", DB_USERNAME, DB_PASSWORD);

        // cài đặt chế độ báo lỗi là xử lý ngoại lệ
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // cài đặt chế độ trả dữ liệu
        $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

        return $conn;
    } catch (PDOException $e) {
        echo ("Connection failed: " . $e->getMessage());
    }
}

// format date
function formatDate($date)
{
    return date("d-m-Y", strtotime($date));
}

function formatPrice($price)
{
    return number_format($price, 0, '.', ',') . ' VNĐ';
}

function deleteSessionError()
{
    if (isset($_SESSION['flash'])) {
        // Huỷ Session sau khi tải trang
        unset($_SESSION['flash']);
        unset($_SESSION['error']); // Xóa biến session 'error'
        session_unset();
        session_destroy();
    }
}
//  Hàm upload file ảnh
function uploadFile($file, $folderUpload) {
    $pathStorage = $folderUpload . time() . '-' . $file['name'];

    $from = $file['tmp_name'];
    $to = PATH_ROOT . $pathStorage;

    if (move_uploaded_file($from, $to)) {
        # return path storage
        return $pathStorage;
    }
    return null;
}

// Hàm xóa file ảnh
function deleteFile($file) {
    $pathDelete = PATH_ROOT . $file;
    if (file_exists($pathDelete)) {
        unlink($pathDelete);
    }
}

// Hàm upload album ảnh
function uploadFileAlbum($file, $folderUpload, $key) {
    $pathStorage = $folderUpload . time() . '-' . $file['name'][$key];

    $from = $file['tmp_name'][$key];
    $to = PATH_ROOT . $pathStorage;

    if (move_uploaded_file($from, $to)) {
        # return path storage
        return $pathStorage;
    }
    return null;
}

function checkLoginAdmin()
{
    if(!isset($_SESSION['user_admin'])){ // Không có session thì redirect về trang login
        // require_once './views/auth/formLogin.php';
        // var_dump('abc');die();
        // prettyPrint($_SESSION, 'user_admin');
        header('Location: ' . BASE_URL_ADMIN . '?act=login-admin');
        exit();

    }
}

function prettyPrint($data1, $data2)
{
    echo '<pre>';
    var_dump($data1, $data2);    
    echo '</pre>';
}
//thêm file
//xóa file 
//debug