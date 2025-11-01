del "..\Build\Project+\NETPLAY.txt" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
del "..\Build\Project+\NETBOOST.txt" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
del "..\Build\Project+\pf\menu3\dnet.cmnu" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
del "..\Build\Project+\pf\movie" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
del "..\Build\Project+\pf\stage\switch\SwitchFF.rss" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
del "..\Build\Project+\pf\sound\netplaylist" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
del "..\Build\Project+\Source\Netplay" -Confirm:$false -Recurse -erroraction 'silentlycontinue'
Move-Item "../stBackup/" -Destination "../Build/Project+/st/" -Force
copy "../zssBackup/FitSZerosuit00.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit01.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit02.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit03.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit04.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit05.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit20.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit23.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit27.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit30.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit31.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit32.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit33.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit35.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit36.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
copy "../zssBackup/FitSZerosuit37.pac" -Destination "../Build/Project+/pf/fighter/szerosuit" -Force
del "../zssBackup" -Confirm:$false -Recurse -erroraction 'silentlycontinue'


#RSBE01.txt
$rsbe01Path = "..\Build\Project+\RSBE01.txt"
$strapcode = Select-String -Path $rsbe01Path -Pattern "046CADE8"
if ($strapcode -ne $null)
{
	(Type "..\Build\Project+\RSBE01.txt") -notmatch "^* 046CADE8 48000298$" | Set-Content "..\Build\Project+\RSBE01.txt"
}