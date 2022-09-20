# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.8.1/ops-cli_v0.8.1_darwin_amd64.tar.gz"
      sha256 "e1177f22af20db3824c30ac463f27e7760279adb30da67f92e341a031b8a7261"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.8.1/ops-cli_v0.8.1_darwin_arm64.tar.gz"
      sha256 "8f1921b2f76b36a574cc8d1d42836430bd7732ebdf82863b64cf4c67301f452b"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.8.1/ops-cli_v0.8.1_linux_arm64.tar.gz"
      sha256 "34aac20058ccea4ed48368e546f3ddb21f978253b285d0cc4ac1c3930b46ae8a"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.8.1/ops-cli_v0.8.1_linux_amd64.tar.gz"
      sha256 "080a85b6482c7ce8504f4b22c6207294e6a4bb812d83dd19f6d77b0e877b2896"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
