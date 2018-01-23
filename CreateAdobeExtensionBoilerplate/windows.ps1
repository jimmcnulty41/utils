function Set-CodeRootPath () {
    if (!$ENV:CODE_ROOT_PATH) {
        $code_root_path = Read-Host "Code_Root_Path: "
        $ENV:CODE_ROOT_PATH = Resolve-Path $code_root_path
    }
}

$test_location = Join-Path $ENV:CODE_ROOT_PATH "Adobe-CEP/Samples/CEP_HTML_Test_Extension"
$invisible_location = Join-Path $ENV:CODE_ROOT_PATH "Adobe-CEP/Samples/CEP_HTML_Invisible_Extension"

function Copy-DefaultToDestination() {
    $destinationStr = Read-Host "Destination"
    $destination = Join-Path $ENV:CODE_ROOT_PATH $destinationStr

    if (!(Test-Path $destination)) {
        mkdir $destination
    }

    $nameStr = Read-Host "Name"
    $name = Join-Path $destination $nameStr

    $templateLetter = Read-Host "(T)est or (I)nvisible?"
    If ($templateLetter -eq "T") {
        Copy-Item $test_location -Destination $name -Recurse
    }
    else {
        Copy-Item $invisible_location -Destination $name -Recurse
    }
}

Set-CodeRootPath
Copy-DefaultToDestination