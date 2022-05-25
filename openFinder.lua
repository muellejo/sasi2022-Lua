dir = "Documents"

local function oeffneAgentur()
  hs.execute("open " .. os.getenv("HOME") .."/" .. dir .. "/Agentur")
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "1", "Agentur-Ordner öffnen", oeffneAgentur)

local function oeffneLF()
  hs.execute("open " .. os.getenv("HOME") .."/" .. dir .. "Lieferfuchs")
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "2", "Lieferfuchs-Ordner öffnen", oeffneLF)

local function oeffneUni()
  hs.execute("open " .. os.getenv("HOME") .."/" .. dir .. "01-Studium")
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "3", "Uni-Ordner öffnen", oeffneUni)
