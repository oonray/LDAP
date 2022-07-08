Write-Host "Installing Modules and Packages"
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force
Install-Package -Name docker -ProviderName DockerMsftProvider
Start-Service -Name docker

$ProgressPreference='SilentlyContinue'
$PATH='C:\k'
$URL="https://dl.k8s.io/v1.15.1/kubernetes-node-windows-amd64.tar.gz"

mkdir $PATH
iwr -outf kubernetes-node-windows-amd64.tar.gz $URL
tar -xkf kubernetes-node-windows-amd64.tar.gz -C $PATH
mv C:\k\kubernetes\node\bin\*.exe $PATH

