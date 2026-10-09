cask "dbclient" do
  version "0.1.0"
  sha256 "d1a2341b8ed821120ffb1d016d1e24b215048158acc16c73393d08e17aa0e7e7"

  url "https://github.com/linzeyan/dbeaver/releases/download/v#{version}/DbClient-#{version}-macos-arm64.zip"
  name "DbClient"
  desc "Native DBeaver-class database client"
  homepage "https://github.com/linzeyan/dbeaver"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "DbClient.app"

  # The app carries only an ad-hoc signature, so Gatekeeper reports it as
  # "damaged" on first launch while the quarantine flag is set.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/DbClient.app"]
  end
end
