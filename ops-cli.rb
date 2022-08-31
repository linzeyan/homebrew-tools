# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.3.2/ops-cli_v0.3.2_darwin_arm64.tar.gz"
      sha256 "bcba7de3b5c0e37fc377b7aa472b4a8730699fd4613ee59539b8c070ee805604"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.3.2/ops-cli_v0.3.2_darwin_amd64.tar.gz"
      sha256 "3fe7e78e1fba31d7491d199e5837d6593a3fd605977dd5b6111fc5449279c5a7"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.3.2/ops-cli_v0.3.2_linux_arm64.tar.gz"
      sha256 "8e283a3e1764eae353cac18fa8baad59e1d8a4a56ee871af3a9c97e39851563f"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.3.2/ops-cli_v0.3.2_linux_amd64.tar.gz"
      sha256 "72f403141d9e3f277335e88ebd21334ec0f3f510e7289bb88c26eea9e701919c"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
