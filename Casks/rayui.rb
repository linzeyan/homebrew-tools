cask "rayui" do
  version "0.1.2"
  sha256 "393d4a3508d6d76151a3189596e2df0f584c340da03a12a8d56d9e0b7f645e49"

  url "https://github.com/linzeyan/RayUI/releases/download/v#{version}/RayUI-macOS-universal-v#{version}.zip"
  name "RayUI"
  desc "A modern, cross-platform desktop proxy client"
  homepage "https://github.com/linzeyan/RayUI"

  app "RayUI.app"
end
