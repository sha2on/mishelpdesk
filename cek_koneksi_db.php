<?php
    // Definisikan variabel koneksi database
    define("DBHOST","localhost");
    define("DBUSER","root");
    define("DBPASS","4rth4t3l");
    define("DBNAME","mishelpdesk");

    // Koneksi Ke Server Database
    $dbcon = @mysql_connect(DBHOST,DBUSER,DBPASS);

    // Cek Koneksi Ke Server Database
    if ($dbcon) // Jika Ada Koneksi
    {
        echo "Koneksi Database Sukses";
    }
    else
    {
        echo "Koneksi Database Gagal".mysql_error();
    }

    // Akses Basis Data
    if (!@mysql_select_db (DBNAME))
    {
        die ('<p>Gagal Akses Basis Data Karena : '.mysql_error().'</p>');
    }
    else
    {
        echo "<p>Sukses Akses Basis Data ".DBNAME."</p>";
    }
?>