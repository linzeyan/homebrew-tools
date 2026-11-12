cask "marknote" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm: "6efca9529f0d25f609c5d8c0629f7852045f8a70b064ae1dc88848d838bab574", intel: "6585eddb034733d6ded8133098964a47a202b587bc378a20099a8b7dc1a59049"

  url "https://github.com/Cacao-s/marknote-official/releases/download/v#{version}/MarkNote_#{version}_#{arch}.dmg"
  name "marknote"
  desc "A modern, local-first WYSIWYG Markdown editor built with Tauri, React, and CodeMirror 6."
  homepage "https://marknote.pages.dev"

  app "MarkNote.app"
end