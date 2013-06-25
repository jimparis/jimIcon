<?

require_once "floIcon.php";

$ico = new floIcon();
@$ico->readICO($argv[1]);

if(count($ico->images)==0) {
        print "no images\n";
} else {
        $img = @$ico->images[count($ico->images)-1]->getImageResource();
}

if ($img) {
        imagepng($img, $argv[1] . ".png");
} else {
        exit("bad image $argv[1]\n");
}

?>
