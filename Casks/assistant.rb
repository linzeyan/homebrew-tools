cask "assistant" do
  version "0.4.0"
  sha256 "bf6dc0f9a88070c29ee8944d3a264f2326638aacf8120521dfc48de962357761"

  url "https://github.com/linzeyan/assistant/releases/download/v#{version}/Assistant.app.zip"
  name "Assistant"
  desc "Local-first AI assistant for Apple Silicon (MLX)"
  homepage "https://github.com/linzeyan/assistant"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Assistant.app"

  zap trash: [
    "~/.config/assistant",
    "~/.local/share/assistant",
  ]
end

