# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.3.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.16/plural-cli_0.3.16_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "07b853f63d92425147a1af62d1dc89883fbc3f40a65f862df2c97320059c5d69"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.16/plural-cli_0.3.16_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "01c5028faa023311ca5139c1d9b6cff57c4961996b6f2c10af482124e2bc88ed"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.16/plural-cli_0.3.16_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f970ec8091e39383b4c24a2e16fe6d72692045af96f0b7b8880f24098437b467"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.16/plural-cli_0.3.16_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "dbf8658c2e800219d96bf376c1454dac5ff9546ac58c5efd7869a36b4267acb4"

      def install
        bin.install "plural"
      end
    end
  end

  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  test do
    system "#{bin}/plural", "--help"
  end
end
