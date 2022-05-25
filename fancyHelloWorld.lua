-- Hotkey erstellen: in geschweiften Klammern "Funktionstasten", Titel dees Shortcuts, Funktionsaufruf
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", "Hallo SaSi2022", function()
  -- Benachrichtigung ausgeben: Titel = Überschrift, Text = Nachricht
  hs.notify.new({title="Hammerspoon", informativeText="Hallo SaSi2022"}):send()
end)
