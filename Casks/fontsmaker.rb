cask "fontsmaker" do
  version "0.1.0"
  sha256 "26d17dc7221bf82cdd2fd75f8b424a72ac67501945a8375337943d5e28412ebe"

  url "https://github.com/linzeyan/FontsMaker/releases/download/v#{version}/FontsMaker-#{version}-macos-universal.zip"
  name "FontsMaker"
  desc "Make reading fonts: embolden, pseudo-vertical and simplified-to-traditional"
  homepage "https://github.com/linzeyan/FontsMaker"

  depends_on macos: :sonoma

  app "FontsMaker.app"

  # The app carries only an ad-hoc signature, so Gatekeeper blocks it on first
  # launch while the quarantine flag is set.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/FontsMaker.app"]
  end

  # Holds the font library and the fonts installed to this Mac.
  zap trash: [
    "~/Library/Application Support/FontsMaker",
    "~/Library/Preferences/app.fontsmaker.FontsMaker.plist",
  ]
end
