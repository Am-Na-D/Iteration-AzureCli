Param([string] $Path)
$env = Get-Content $Path

$YEAR = 1400;
$SUBYEAR = "$Year - ";
$SPRINT1 = 10;
$SPRINT2 = 21;
$SPRINT3 = 15;
$SPRINT4 = 20;
$SPRINT5 = 10;
$SPRINT6 = 15;
$SPRINT7 = 25;
$SPRINT8 = 24;
$SPRINT9 = 23;
$SPRINT10 = 21;
$SPRINT11 = 26;
$StartDate = [DateTime] "04/04/2022";

foreach($item in $env)
{
    $split = $item.split('=');
    $key = $split[0];
    $value = $split[1];
    if($key -eq 'YEAR') { $YEAR = $value; }
    if($key -eq 'SUBYEAR') { $SUBYEAR = $value; }
    if($key -eq 'StartDate') { $StartDate = $value; }
    if($key -eq 'SPRINT1') { $SPRINT1 = $value; }
    if($key -eq 'SPRINT2') { $SPRINT2 = $value; }
    if($key -eq 'SPRINT3') { $SPRINT3 = $value; }
    if($key -eq 'SPRINT4') { $SPRINT4 = $value; }
    if($key -eq 'SPRINT5') { $SPRINT5 = $value; }
    if($key -eq 'SPRINT6') { $SPRINT6 = $value; }
    if($key -eq 'SPRINT7') { $SPRINT7 = $value; }
    if($key -eq 'SPRINT8') { $SPRINT8 = $value; }
    if($key -eq 'SPRINT9') { $SPRINT9 = $value; }
    if($key -eq 'SPRINT10') { $SPRINT10 = $value; }
    if($key -eq 'SPRINT11') { $SPRINT11 = $value; }

}

return @{
    YEAR = $YEAR
    SUBYEAR = $SUBYEAR
    StartDate = $StartDate
    SPRINT1 = $SPRINT1
    SPRINT2 = $SPRINT2
    SPRINT3 = $SPRINT3
    SPRINT4 = $SPRINT4
    SPRINT5 = $SPRINT5
    SPRINT6 = $SPRINT6
    SPRINT7 = $SPRINT7
    SPRINT8 = $SPRINT8
    SPRINT9 = $SPRINT9
    SPRINT10 = $SPRINT10
    SPRINT11 = $SPRINT11
}