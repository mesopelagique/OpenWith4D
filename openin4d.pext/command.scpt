set finderPathQuoted to ""

tell application "Finder"
    set theItems to (get selection)
    if not theItems = {} then
        repeat with itemRef in theItems
            set finderFolder to (itemRef as string)
        end repeat
    else
        try
            set finderFolder to (folder of the front window as alias)
        on error
            set finderFolder to (path to home folder as alias)
        end try
    end if
    set finderPath to POSIX path of finderFolder
    set finderPathQuoted to quote & finderPath & quote
end tell

do shell script "/usr/local/bin/4d " & finderPathQuoted