function doStuff {
    Write-Output "Select a shell to launch:"
    Write-Output ""
    Write-Output "1: Option 1"
    Write-Output "2: Option 2"
    Write-Output ""
    $selection = Read-Host "Selection"
    if ($selection -eq 1) {
        # Stuff to do when option 1 is selected
    } elseif ($selection -eq 2) {
        # Stuff to do when option 2 is selected     
    } else { # Displays error when invalid selection is made
        Clear-Host
        Write-Output "Select a shell to launch:"
        Write-Output ""
        Write-Output "1: Option 1"
        Write-Output "2: Option 2"
        Write-Output ""
        Write-Output "Selection: Invalid Selection"
        Start-Sleep -Seconds 1
        Clear-Host
        doStuff
    }
}

doStuff
