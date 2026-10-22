cask "wifidetect" do
  version "1.0.0"
  sha256 "d2f76f10e6dcf52dbb47827d1985cf3c5b6047dfacbd6657cb110ee2c50a7ee7"

  url "https://github.com/linzeyan/WiFiDetect/releases/download/v#{version}/WiFiDetect.zip"
  name "WiFiDetect"
  desc "Wi-Fi signal, traffic monitoring and HTTP(S) debugging tool"
  homepage "https://github.com/linzeyan/WiFiDetect"

  depends_on macos: :tahoe

  app "WiFiDetect.app"

  # No `launchctl` for the helper: it is an SMAppService daemon, and removing it
  # behind the app's back leaves it registered but unreachable after reinstall or
  # upgrade. Quitting lets the app restore the system proxy through the helper.
  uninstall quit: "com.zeyanlin.wifidetect"

  # /Library/Application Support/WiFiDetect is left alone: it holds the proxy
  # backup the helper restores from, and deleting it could strand a dead proxy.
  zap trash: [
    "~/Library/Application Support/WiFiDetect",
    "~/Library/Preferences/com.zeyanlin.wifidetect.plist",
  ]
end
