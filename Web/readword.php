<?php
$filename = "2.doc";
$contents = file_get_contents($filename);
echo $contents;
echo strip_tags($contents);
?>