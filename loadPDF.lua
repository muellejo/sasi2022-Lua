local function loadReadingSpace()
    hs.focus()
    loadPDF = hs.dialog.chooseFileOrFolder("PDF wählen:", os.getenv("HOME") .. "Documents/01-Studium/", true, false, false, {"pdf"}, true)

    hs.execute("open -a 'Preview' '" .. loadPDF["1"] .. "'")
    hs.execute("open -a 'Notes'")
    hs.osascript.applescript([[tell application "Notes" to show folder "Lesen" of account "iCloud" ]])

    local readingScreen = hs.screen.allScreens()[1]
    local readingLayout = {
      {"Preview", nil, readingScreen, '[50, 0, 100, 100]', nil, nil},
      {"Notes", nil, readingScreen, '[0, 0, 50, 100]', nil, nil},
    }

    hs.layout.apply(readingLayout)

    local preview = hs.application.get("Preview")
    preview:selectMenuItem({"View", "Show Toolbar"})

end

-- Hotkey-Bestimmung
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", "Lesemodus starten", loadReadingSpace)
