# Define user information
$users = @(
    @{
        FirstName = "Franz"
        LastName = "Ferdinand"
        JobTitle = "TPS Reporting Lead"
        Department = "TPS Department"
        Company = "GlobeX USA"
        Office = "Springfield, OR"
        Email = "ferdi@GlobeXpower.com"
    },
    @{
        FirstName = "Amanda"
        LastName = "Williams"
        JobTitle = "HR Specialist"
        Department = "HR"
        Company = "GlobeX USA"
        Office = $null
        Email = $null
    },
    @{
        FirstName = "Jim"
        LastName = "Sanders"
        JobTitle = "HR Manager"
        Department = "HR"
        Company = "GlobeX USA"
        Office = $null
        Email = $null
    },
    @{
        FirstName = "Rita"
        LastName = "Morgan"
        JobTitle = "CFO"
        Department = "Finance"
        Company = "GlobeX USA"
        Office = $null
        Email = $null
    },
    @{
        FirstName = "Yourself"
        LastName = "YourLastName"
        JobTitle = "Systems Administrator"
        Department = $null
        Company = "GlobeX USA"
        Office = $null
        Email = $null
    }
)

# Loop through the users and create them in Active Directory
foreach ($user in $users) {
    $firstName = $user.FirstName
    $lastName = $user.LastName
    $username = ($firstName.ToLower() + "." + $lastName.ToLower()).Replace(" ", "")
    $jobTitle = $user.JobTitle
    $department = $user.Department
    $company = $user.Company
    $office = $user.Office
    $email = $user.Email

    # Create the new user
    New-ADUser -GivenName $firstName -Surname $lastName -SamAccountName $username -Title $jobTitle -Department $department -Company $company -Office $office -EmailAddress $email -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
}
