# Windows-Terminal-Startup-Actions
A script that allows you to choose & automate what to do when you launch Windows Terminal

This only works with Windows Terminal, as you really can't tell PowerShell to run a script on launch, unless you specify it as a launch argument.

## Getting Set Up
A quick run-down of what you need to edit in the script to customize it to your needs:

First, you'll need to edit the options. Under the if statement for `$selection -eq 1` and any subsequent `elseif` statements, add the commands that should execute upon running selecting said option. If you need to create any extra options, create extra `elseif` statements for each option as so:
```
} else if ($selection -eq number) {
  # do stuff
}
```
and so on.

Second, you will need to add your newly-made options to the list of options. To do so, add them into these lines:

![Denoting the aformaentioned lines](https://i.imgur.com/5IzGxTz.png)

Be sure to create entries for any other options you have made, if you have made any, and also make sure you edit the lines underneath the else statement to reflect the lines at the beginning of the `doStuff` function.

Now, to get the script to run when Windows Terminal starts:

In your Windows Terminal settings, either create a new profile and set it as default, or modify your current default profile. If you don't know how to create a new profile or modify an existing one, the [Windows Terminal documentation](https://docs.microsoft.com/en-us/windows/terminal/customize-settings/profile-general) is a great resource.

You will need to add the `CommandLine` attribute to your profile, or edit it if it already exists, to have the script run whenever Windows Terminal launches. The attribute uses format of `powershell.exe C:\\Path\\To\\Script.ps1`, as shown below:

![Example CommandLine Attribute](https://i.imgur.com/V9E0VKd.png)

Note the double backslashes in the file path, as this is a requirement of the JSON format.

Now, when you launch Windows Terminal, you should see your script, and be able choose what you want the terminal to do.
