<?php
require_once "lib/dbCon.php";
require_once "lib/lib.php";

if( isset($_POST["uploadHinh"]) ){
    // hinh nho
    // {"kq":true,"file":"upload\/nho\/Bd5ad66BBa-1pice.jpg"}
    $jsonNho = json_decode( UploadFile( "hinhnho", "upload/nho/", 1, 10, "uploadHinh" ) );
    $jsonLon = json_decode( UploadFile( "hinhlon", "upload/lon/", 1, 10, "uploadHinh" ) );
    $mota = $_POST["tieude"];

    if( $jsonNho->kq && $jsonLon->kq ){
        $hinhnho = $jsonNho->file;
        $hinhlon = $jsonLon->file;

        $qr = "INSERT INTO gallery VALUES(
            null,
            '$hinhnho',
            '$hinhlon',
            '$mota'
        )";

        if( mysqli_query($con, $qr) ){
            echo "<h2>Insert thanh cong.</h2>";
        }else{
            echo "<h2>Insert that bai</h2>";
        }
    }else{
        echo "<h2>Upload loi</h2>";
    }
    
}

?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="layout/layout.css" rel="stylesheet" type="text/css" />

    <!-- Highslide -->
    <script type="text/javascript" src="lib/highslide/highslide-with-gallery.js"></script>
    <link rel="stylesheet" type="text/css" href="lib/highslide/highslide.css" />
    <script type="text/javascript">
    hs.graphicsDir = 'lib/highslide/graphics/';
    hs.align = 'center';
    hs.transitions = ['expand', 'crossfade'];
    hs.outlineType = 'glossy-dark';
    hs.wrapperClassName = 'dark';
    hs.fadeInOut = true;
    //hs.dimmingOpacity = 0.75;

    // Add the controlbar
    if (hs.addSlideshow) hs.addSlideshow({
        //slideshowGroup: 'group1',
        interval: 5000,
        repeat: false,
        useControls: true,
        fixedControls: 'fit',
        overlayOptions: {
            opacity: .6,
            position: 'bottom center',
            hideOnMouseOut: true
        }
    });

    </script>

</head>
<body>

<form action="" method="POST" enctype="multipart/form-data">
    <input type="file" name="hinhnho" /> <br/>
    <input type="file" name="hinhlon"> <br/>
    <input type="text" name="tieude" /> <br/>
    <input type="submit" name="uploadHinh" value="Upload" />
</form>

<div class="highslide-gallery">

<?php
$qr2 = "SELECT * FROM gallery";
$rows = mysqli_query($con, $qr2);
while($row = mysqli_fetch_array($rows)){
?>
<a href="<?php echo $row["hinhlon"]; ?>" class="highslide" onclick="return hs.expand(this)">
	<img height="100" class="nho" src="<?php echo $row["hinhnho"]; ?>" alt="Highslide JS"
		title="<?php echo $row["mota"]; ?>" />
</a>
<div class="highslide-caption"><?php echo $row["mota"]; ?></div>
<?php } ?>



</div>

    
</body>
</html>