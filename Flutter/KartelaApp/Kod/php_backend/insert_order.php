<?php
// Config dosyasını dahil et
include('config.php');


if(isset($_POST["CompanyName"]) && isset($_POST["Email"]) && isset($_POST["Phone"])
    && isset($_POST["KartelaBar"])  && isset($_POST["orderCount"]) && isset($_POST["ODate"])  && isset($_POST["OHour"])){

    // Veritabanı bağlantısını kur
    try {

        $companyName = $_POST["CompanyName"];
        $email = $_POST["Email"];
        $phone = $_POST["Phone"];
        $kartelaBar = $_POST["KartelaBar"];
        $orderCount = $_POST["orderCount"];
        $oDate = $_POST["ODate"];
        $oHour = $_POST["OHour"];

        $conn = new PDO("sqlsrv:server=" . DB_SERVER . ";Database=" . DB_DATABASE, DB_USERNAME, DB_PASSWORD);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // SQL INSERT sorgusu
        $sql = "INSERT INTO Orders (CompanyName, Email, Phone, KartelaBar,orderCount, ODate, OHour) VALUES (:v1, :v2, :v3, :v4, :v5, :v6, :v7)";
        $stmt = $conn->prepare($sql);

        // Bind parametreleri
        $stmt->bindParam(':v1', $companyName);
        $stmt->bindParam(':v2', $email);
        $stmt->bindParam(':v3', $phone);
        $stmt->bindParam(':v4', $kartelaBar);
        $stmt->bindParam(':v5', $orderCount);
        $stmt->bindParam(':v6', $oDate);
        $stmt->bindParam(':v7', $oHour);

        // Sorguyu çalıştır
        $stmt->execute();

        $response['Message'] = "Veriler Başarıyla Aktarıldı.";
        $response['Result'] = "1";

        // Başarı mesajı
        echo json_encode($response);
    } catch (PDOException $e) {
        $response['Message'] = "Bir Hata Meydana Geldi";
        $response['Result'] = "0";
        echo json_encode($response);
    }

}else{
    $response['Message'] = "Bir Hata Meydana Geldi";
    $response['Result'] = "0";
    echo json_encode($response);
}

// Bağlantıyı kapat
$conn = null;

?>
