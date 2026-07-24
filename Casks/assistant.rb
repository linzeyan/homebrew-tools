cask "assistant" do
  version "0.1.0"
  sha256 "bf97aa7d5b002785d1273fa70f21cef700c70a022831aa12a1b995e91a85c3c2"

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