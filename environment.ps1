cls


###############################################################################################################
#Set Execution Policy
###############################################################################################################
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

###############################################################################################################
#INCLUDED BINARIES AND ASSEMBLIES IN THE APPLICATION
###############################################################################################################
#Add the Presntation Framework to the script so that the WPF objects can run from 
#the powershell console
Add-Type -AssemblyName PresentationCore, PresentationFramework

###############################################################################################################
#INCLUDED POWER SHELL MODULES
###############################################################################################################
Import-Module ActiveDirectory


#Query thw operating system for the environment variables 
 $x = get-childitem env:
 
 #CommonProgramFiles
 [string]$CPF = $x.Value[3]

 #CommonProgramFiles W6432
 [string]$CPFW6432 = $x.Value[5]

 #Computer Name
 [string]$CompNm = $x.value[6]

 #Comspec
 [string]$Cmspc = $x.value[7]

 #Driver Data
 [string]$DrvData = $x.value[8]

 #HomeDrive
 [string]$HmDrv = $x.value[9]

 #HomePath
 [string]$HmPath = $x.value[10]

 #LocalAppData
 [string]$LclAppDa = $x.value[11]

 #LoginServer
 [string]$LoginSrv = $x.value[12]

 #NumProcessors
 [string]$NumProc = $x.value[13]

 #OperatingSystem
 [string]$OpSys = $x.value[16]
 
 #Path
 [string]$myPath = $x.value[17]

 #pathExt
 [string]$PathExt = $x.value[18]

 #procArch
 [string]$procArch = $x.value[19]

 #procIDen
 [string]$ProcIde = $x.value[20]

 #proclvl
 [string]$proclvl = $x.value[21]

 #procRev
 [string]$ProcRev = $x.value[22]

 #SysDrive
 [string]$SysDrv = $x.value[30]

 #UserDomain
 [string]$userDom = $x.value[35]

 #userName
 [string]$userName = $x.value[37]





 write-host "Common program files (x86): $CPF "  
 write-host "Common program W6432: $CPFW6432"
 write-host "Computer Name: $CompNm"
 write-host "Comspec: $Cmspc"
 write-host "Driver Data $DrvData"
 write-host "Home Drive: $HmDrv"
 write-host "Home Path: $HmPath"
 write-host "Local App Data: $LclAppDa"
 write-host "Login Server: $LoginSrv"
 write-host "Number of Processors $Numproc"
 write-host "Operating System: $OpSys"
 write-host "Path: $myPath"
 write-host "Path Extension: $pathExt"
 write-host "Processor level: $proclvl"
 write-host "Processor Revision: $ProcRev"
 write-host "System Drive: $SysDrv"
 write-host "User Domain: $userDom"
 write-host "User Name: $userName"


#Set Execution Policy
Set-ExecutionPolicy RemoteSigned


#import Active Directory Module
Import-Module ActiveDirectory

#Add the Presntation Framework to the script so that the WPF objects can run from 
#the powershell console
Add-Type -AssemblyName PresentationCore, PresentationFramework

[xml]$xaml = @"

<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        Title="Environment" Height="900" Width="800">
    <Grid Margin="0,-29,0,0">
        <Label Content="Common Program Files (x86)" HorizontalAlignment="Left" Margin="86,33,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="CPFX86" HorizontalAlignment="Left" Height="23" Margin="273,36,0,0" TextWrapping="Wrap" Text="TextBox" Background="Azure" VerticalAlignment="Top" Width="298"/>
        <Label Content="Common Program W6432" HorizontalAlignment="Left" Margin="101,61,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="CPFW64" HorizontalAlignment="Left" Height="23" Margin="273,64,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Computer Name" HorizontalAlignment="Left" Margin="151,89,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="CmptrNm" HorizontalAlignment="Left" Height="23" Margin="273,92,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Comspec" HorizontalAlignment="Left" Margin="190,117,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="Comspec" HorizontalAlignment="Left" Height="23" Margin="273,120,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Driver Data" HorizontalAlignment="Left" Margin="179,145,0,0" VerticalAlignment="Top" RenderTransformOrigin="2.306,-1.436"/>
        <TextBox x:Name="DrvDta" HorizontalAlignment="Left" Height="23" Margin="273,148,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="HomeDrive" HorizontalAlignment="Left" Margin="179,173,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="HmDrv" HorizontalAlignment="Left" Height="23" Margin="273,176,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="HomePath" HorizontalAlignment="Left" Margin="179,199,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="Hmpth" HorizontalAlignment="Left" Height="23" Margin="273,204,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="LocalAppData" HorizontalAlignment="Left" Margin="165,229,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="Lad" HorizontalAlignment="Left" Height="23" Margin="273,232,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Login Server" HorizontalAlignment="Left" Margin="173,257,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="LgSvr" HorizontalAlignment="Left" Height="23" Margin="273,260,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Number of Processors" HorizontalAlignment="Left" Margin="122,285,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="NmProc" HorizontalAlignment="Left" Height="23" Margin="273,288,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="OS" HorizontalAlignment="Left" Margin="224,313,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="os" HorizontalAlignment="Left" Height="23" Margin="273,316,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Path" HorizontalAlignment="Left" Margin="216,339,0,0" VerticalAlignment="Top"/>
        <TextBlock x:Name="Path" HorizontalAlignment="Left" Margin="273,344,0,0" TextWrapping="Wrap" Text="TextBlock" VerticalAlignment="Top" Background="Azure" Height="139" Width="298"/>
        <Label Content="PathEXT" HorizontalAlignment="Left" Margin="196,485,0,0" VerticalAlignment="Top" RenderTransformOrigin="3.504,-2.502"/>
        <TextBox x:Name="PathExt" HorizontalAlignment="Left" Height="23" Margin="273,488,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Processor Architecture" HorizontalAlignment="Left" Margin="120,513,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="prcArch" HorizontalAlignment="Left" Height="23" Margin="273,516,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Processor Identifier" HorizontalAlignment="Left" Margin="137,539,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="ProcID" HorizontalAlignment="Left" Height="23" Margin="273,544,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Processor Level" HorizontalAlignment="Left" Margin="158,569,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="ProcLvl" HorizontalAlignment="Left" Height="23" Margin="273,572,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="Processor Revision" HorizontalAlignment="Left" Margin="141,597,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="ProcRev" HorizontalAlignment="Left" Height="23" Margin="273,600,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="System Drive" HorizontalAlignment="Left" Margin="171,625,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="SysDrv" HorizontalAlignment="Left" Height="23" Margin="273,628,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="User Domain" HorizontalAlignment="Left" Margin="170,653,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="UserDom" HorizontalAlignment="Left" Height="23" Margin="273,656,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Label Content="User Name" HorizontalAlignment="Left" Margin="180,681,0,0" VerticalAlignment="Top"/>
        <TextBox x:Name="Uname" HorizontalAlignment="Left" Height="23" Margin="273,684,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Background="Azure" Width="298"/>
        <Button x:Name="BTN_OU_Exit" Content="Exit" HorizontalAlignment="Left" Margin="443,791,0,0" VerticalAlignment="Top" Width="128"/>
        

    </Grid>
</Window>

"@

#########################################################################
#XML Node Reader
#########################################################################
#Pass the xaml data/code to the newly created System Object XMLNodeReader
$reader=(New-Object System.Xml.XmlNodeReader $xaml)
$Window=[Windows.Markup.XamlReader]::Load($reader)

#########################################################################
#View Connectors
#########################################################################
#$txtb_pdce = $Window.FindName('pdce')
$txtb_CPFX86 = $Window.FindName('CPFX86')
$txtb_CPFX86.Text = $CPF
#$txtb_CPFX86 = $Window.FindName('CPFX86')
#x:Name="CPFX86" 
$txtb_CPFW64 = $Window.FindName('CPFW64')
$txtb_CPFW64.text = $CPFW6432
#x:Name="CPFW64" 
$txtb_CmptrNm = $Window.FindName('CmptrNm')
$txtb_CmptrNm.Text = $CompNm
#x:Name="CmptrNm" 
$txtb_Comspec = $Window.FindName('Comspec')
$txtb_Comspec.Text = $Cmspc
#x:Name="Comspec" 
$txtb_DrvDta = $Window.FindName('DrvDta')
$txtb_DrvDta.Text = $DrvData
#x:Name="DrvDta" 
$txtb_HmDrv = $Window.FindName('HmDrv')
$txtb_HmDrv.Text = $HmDrv
#x:Name="HmDrv"
$txtb_Hmpth = $Window.FindName('Hmpth')
$txtb_Hmpth.Text = $HmPath
#x:Name="Hmpth" 
$txtb_Lad = $Window.FindName('Lad')
$txtb_Lad.Text = $LclAppDa
#x:Name="Lad" 
$txtb_LgSvr = $Window.FindName('LgSvr')
$txtb_LgSvr.Text = $LoginSrv
#x:Name="LgSvr" 
$txtb_NmProc = $Window.FindName('NmProc')
$txtb_NmProc.Text = $Numproc
#x:Name="NmProc"
$txtb_os = $Window.FindName('os')
$txtb_os.Text = $OpSys
#x:Name="os" 
$txtb_Path = $Window.FindName('Path')
$txtb_Path.Text = $myPath
#x:Name="Path"
$txtb_PathExt = $Window.FindName('PathExt')
$txtb_PathExt.Text = $pathExt
#x:Name="PathExt"
$txtb_prcArch = $Window.FindName('prcArch')
$txtb_prcArch.Text = $procArch
#x:Name="prcArch"
$txtb_ProcID = $Window.FindName('ProcID')
$txtb_ProcID.Text = $ProcIde
#x:Name="ProcID"
$txtb_ProcLvl = $Window.FindName('ProcLvl')
$txtb_ProcLvl.text = $proclvl
#x:Name="ProcLvl"
$txtb_ProcRev = $Window.FindName('ProcRev')
$txtb_ProcRev.Text = $ProcRev
#x:Name="ProcRev"
$txtb_SysDrv = $Window.FindName('SysDrv')
$txtb_SysDrv.Text = $SysDrv
#x:Name="SysDrv"
$txtb_UserDom = $Window.FindName('UserDom')
$txtb_UserDom.Text = $userDom
#x:Name="UserDom"
$txtb_Uname = $Window.FindName('Uname')
$txtb_Uname.Text = $userName
#x:Name="Uname" 
$ButExit = $Window.FindName('BTN_OU_Exit')

# [ Exit Button 1] ###########################################################
$ButExit.Add_Click({

    $Window.Close()

})
#############################################################################


###############################################################################################################
#SHOW THE WINDOW
###############################################################################################################
$Window.ShowDialog() | Out-Null