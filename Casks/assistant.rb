cask "assistant" do
  version "0.3.0"
  sha256 "eabf0ab5d04badbd877c88b7ddc25d518a18efcd215c8d82bef132e21e02bf23"

  url "https://github.com/linzeyan/assistant/releases/download/v#{version}/Assistant.app.zip"
  name "Assistant"
  desc "Local-first AI assistant for Apple Silicon (MLX)"
  homepage "https://github.com/linzeyan/assistant"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Assistant.app"

  zap trash: [
    "~/.config/assistant",
    "~/.local/share/assistant",
  ]
end