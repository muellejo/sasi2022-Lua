wifiWatcher = nil

-- Hier den Namen des HeimRouters eintragen.
homeSSID = "eduroam"
-- Ablage der aktuellen SSID für kommenden Loop
lastSSID = hs.wifi.currentNetwork()

function ssidChangedCallback()
    -- aktuelle SSID ablegen
    newSSID = hs.wifi.currentNetwork()

    -- Wenn NeuerRouter GLEICH HeimRouter UND LetzterRouter NICHT GLEICH HeimRouter
    if newSSID == homeSSID and lastSSID ~= homeSSID then
        -- DANN Lautstärke = 25 %
        hs.audiodevice.defaultOutputDevice():setVolume(0)

    -- Wenn NeuerRouter NICHT GLEICH HeimRouter UND LetzterRouter GLEICH HeimRouter
    elseif newSSID ~= homeSSID and lastSSID == homeSSID then
        -- DANN Lautstärke = 0 %
        hs.audiodevice.defaultOutputDevice():setVolume(25)
    end

    -- die aktuelle SSID wird für nächsten Loop abgelegt
    lastSSID = newSSID
end

-- "Zuschauer", welcher beobachtet, ob SSID sich ändert.
wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()
