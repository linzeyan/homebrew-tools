# typed: false
# frozen_string_literal: true

class Pm < Formula
  desc "Proxy Manager CLI"
  homepage "https://github.com/linzeyan/proxy-manager"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/proxy-manager/releases/download/v0.2.0/pm_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c8b85c89bd7f6fdbcc43c6530a6efe5a0afbb5b80149db00ab8b669782d435ca"

      def install
        bin.install "pm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/proxy-manager/releases/download/v0.2.0/pm_v0.2.0_darwin_arm64.tar.gz"
      sha256 "50f464fb50926372fed078d6d7ad8bbd67b7be883c9fb2d314bbb43fca937223"

      def install
        bin.install "pm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/proxy-manager/releases/download/v0.2.0/pm_v0.2.0_linux_amd64.tar.gz"
      sha256 "8811c39407a475c22c9bbfcbee0576d0f38e29d7b74b95f4ea0f6a04b1292110"

      def install
        bin.install "pm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/proxy-manager/releases/download/v0.2.0/pm_v0.2.0_linux_arm64.tar.gz"
      sha256 "6e353cdfaf30c9cd071e3c3bebd8e53b6afc334f2880bc4ccc236459d64aa0b6"

      def install
        bin.install "pm"
      end
    end
  end
end
