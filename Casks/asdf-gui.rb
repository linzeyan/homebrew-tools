cask "asdf-gui" do
  version "0.1.0"
  sha256 "c15ac7c1876889d70b5e9fecf29a596ea5e4ddc8e948895727db1290e215358d"

  url "https://github.com/linzeyan/asdf-gui/releases/download/v#{version}/asdf-gui_#{version}_universal.dmg"
  name "asdf-gui"
  desc "A cross-platform desktop GUI for asdf version manager"
  homepage "https://github.com/linzeyan/asdf-gui"

  app "asdf-gui.app"
end
