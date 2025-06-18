# Define username and password
$Username = "defensy"
$Password = "258tracter7" | ConvertTo-SecureString -AsPlainText -Force

# Create the user
New-LocalUser -Name $Username -Password $Password -FullName "defensy" -Description "Local admin user created via PowerShell"

# Add user to Administrators group
Add-LocalGroupMember -Group "Administrators" -Member $Username

# Confirmation message
Write-Host "Local admin user '$Username' has been created and added to the Administrators group."
