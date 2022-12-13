$TeamProject = "Sprint1","Sprint2","Sprint3"
#There are 2 files for running this file correctly the first one store all of the vriables and the other is a bridege for using those variables
$DockerWorkspacePath = "D:\Powershell";
$Env = Invoke-Expression "$DockerWorkspacePath\Get_Env.ps1 -Path $DockerWorkspacePath\.env";
$SubY = $Env.SubYear
$Year = $Env.Year

for($j=0;$j -le 2;$j++){
    $forTeam = $TeamProject[$j]
    $StartDate = $Env.StartDate
    az boards iteration project create --name ""$Year"" --org https://dev.azure.com/aminnazari0079 --project aminnazari --path "\aminnazari\Iteration\$forTeam"
    for ($i=1;$i -le 11;$i++){
        $S ='{0:d2}' -f [int]$i
        $Enddate = $Startdate.AddDays($Env."SPRINT$i")
        $Startdatestring = $Startdate.ToString("yyyy-MM-dd")
        $EnddateString = $Enddate.ToString("yyyy-MM-dd")
        az boards iteration project create --name "$SubY$S" --org https://dev.azure.com/aminnazari0079 --project aminnazari --path "\aminnazari\Iteration\$forTeam\$Year" --start-date "$Startdatestring" --finish-date "$EnddateString"
        $Startdate = $Enddate.add("1")
        $TeamProject[$j]
    }
}