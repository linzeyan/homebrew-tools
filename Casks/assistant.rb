cask "assistant" do
  version "0.5.0"
  sha256 "2ce5cd8a3b81dc1828afc5c97dbc749b311a0d90721060f66a5146990a79d25d"

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

