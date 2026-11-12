cask "marknote" do
  version "0.8.1"
  sha256 "3806b583c1028eb9afc99d96fb8e4354a1ada9ebab8b57bfa398fc0625f1e8b9"

  url "https://github.com/Cacao-s/marknote-official/releases/download/v#{version}/MarkNote_#{version}_universal.dmg"
  name "marknote"
  desc "A modern, local-first WYSIWYG Markdown editor built with Tauri, React, and CodeMirror 6."
  homepage "https://marknote.pages.dev"

  app "MarkNote.app"
end