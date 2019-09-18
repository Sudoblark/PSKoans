using module PSKoans
[Koan(Position = 105)]
param()
<#
    Cmdlet Verbs

    The fundamental building block of PowerShell are cmdlets and functions.

    We'll cover functions later, but cmdlets are made up of the following syntax:

        Verb-Noun

    With the verb being an action, and the noun representing the target of the command.

    In this Koan, we'll cover the 5 basic verbs which'll see you through the majority of your
    PowerShell needs. But PowerShell has more than just 5 predefined verbs! You can see them
    all by running the following cmdlet:

        Get-Verb
#>

Describe "Basic Verbs" {

    Context "Get" {
        <#
            Get

            The get verb will retrieve an instance, or instances, of the specified noun.

            So for example:

                Get-Service

            Will retrieve all the services running on your current machine.
        #>

        It 'is for commands that retrieve data'  {
            <#
                Using the Get-Command cmdlet, which retrieves all the cmdlets currently available,
                find 5 new get commands you haven't previously used.
            #>

            # Replace each __ with the name of a Get cmdlet
            $Answers = "____","____","____","____","____"
            $Answers | Should -BeIn (Get-Command -Verb Get).Name
        }
    }

    Context "New" {
         <#
            New

            The New verb will create an instance of the given noun.

            So for example 'New-GUID' will create a new GUID, or 'New-LocalUser' will create a local
            user on your machine.

            Before continuing with this excerised, you're advised to run the following code:

                $Path = "YOUR PATH.txt"
                New-Item -Path $ItemPath -ItemType file

            This will create a new text file, in the location your specify, and we can use this
            to explain the other verbs later on.
        #>

        It 'is for commands that create data' {
            <#
                Using the Get-Command cmdlet, which retrieves all the cmdlets currently available,
                find 5 new new commands you haven't previously used.
            #>

            # Replace each __ with the name of a New cmdlet
            $Answers = "____","____","____","____","____"
            $Answers | Should -BeIn (Get-Command -Verb New).Name

        }

    }

    Context "Add" {
        <#
            Add

            The Add verb will append information to a given noun.        

            If you followed the example in the 'new' test, you can use add to add some
            text to your newly created text file:
            
                $Path = "YOUR PATH.txt"
                Add-Content -Path $Path -Value "Sgt. Bash is the best house robot because... fire."
            
            Before continuing, run this command several times. See what happens, is it the
            result you expected?

            You'll see that several lines of text were added to the file. This cmdlet only appends
            information, it does not overwrite. 

            Basically, if it doesn't exist then a cmdlet with the add verb can probably be used
            to make it so.

            A classic example that I've seen a lot in my time is office 365 calendar permissions.
            If you want to grant permissions to somebody who doesn't have any, you use Add. If 
            you want to change permissions for somebody who already has some, you need to use a
            different verb that we'll cover later.
        #>

        It 'is for commands that append data' {
            <#
                Using the Get-Command cmdlet, which retrieves all the cmdlets currently available,
                find 5 new add commands you haven't previously used.
            #>

            # Replace each __ with the name of a Add cmdlet
            $Answers = "____","____","____","____","____"
            $Answers | Should -BeIn (Get-Command -Verb Add).Name

        }
    }

    Context "Set" {
        <#
            Set

            The Set verb will overwrite information that already exists.    

            If you followed the example in the 'new' and 'add' tests, you can use set to do
            something to your text file:
            
                $Path = "YOUR PATH.txt"
                Set-Content -Path $ItemPath -Value "Sir Kill-A-Lot is the best house robot because of reasons."
            
            Before continuing, run this command several times. See what happens, is it the
            result you expected?

            You'll see that there's only one line of text in the file. This is as the Set command
            will overwrite information that's already there.

            Most set cmdlets require the instance to already be present for you to change it;
            you'll need to use a new cmdlet first to create an instance before you can 
            overwrite information within it.

            A classic example that I've seen a lot in my time is office 365 calendar permissions.
            If somebody already has permissions you can use a Set cmdlet to change their permissions
            to a change. But if you try and use a Add cmdlet it fails; set overwrites data,
            but can only do so if it already exists.

            Using the Get-Command cmdlet, which retrieves all the cmdlets currently available,
            find 5 new set commands you haven't previously used.
        #>

        It 'is for commands that overwrite data' {
            <#
                Using the Get-Command cmdlet, which retrieves all the cmdlets currently available,
                find 5 new set commands you haven't previously used.
            #>

            # Replace each __ with the name of a Set cmdlet
            $Answers = "____","____","____","____","____"
            $Answers | Should -BeIn (Get-Command -Verb Set).Name

        }

    }

    Context "Remove" {
         <#
            Remove

            The Remove verb will delete an instance of an object.

            If you followed the example in the 'new','add' and 'set' tests, you can use remove to 
            delete your text file:
            
                $Path = "YOUR PATH.txt"
                Remove-Item -Path $Path
            
            Before continuing, run this command several times. What happens when you try to run it
            once the instance has been deleted?

            You'll see that it fails. Cmdlets with the verb 'remove' simply remove instances of
            an object, if the instance you're referring to doesn't exist then there's nothing
            to remove and it all falls over.

            Returning to Calendar permissions in Office 365, you can use a Remove cmdlet
            to completely remove a user's permissions to a calendar.
        #>

        It "is for commands that delete data" {
            <#
                Using the Get-Command cmdlet, which retrieves all the cmdlets currently available,
                find 5 new remove commands you haven't previously used.
            #>

            # Replace each __ with the name of a Remove cmdlet
            $Answers = "____","____","____","____","____"
            $Answers | Should -BeIn (Get-Command -Verb Remove).Name

        }
    }
}
