# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.7.3"
  license "MIT"

  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.7.3/plural-cli_0.7.3_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e2152a565665c3af023b60ee2fedd41ffc824dedfe1460b6d76bb21eecc185f6"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.7.3/plural-cli_0.7.3_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ae7684a3e44fae30c4fdc1a8d9f167dea2011160fd6acbc5c966ccd91e96d2c3"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.7.3/plural-cli_0.7.3_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fc375b2ecf4b66d41483bf4164778ffa7e27274beb103ab95fc7a70ad3be0308"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.7.3/plural-cli_0.7.3_Linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "131a1bbada7ce867e3865af3b29a9704acf0f965623469a8c376e342dadf3bd5"

      def install
        bin.install "plural"
      end
    end
  end

  head "https://github.com/pluralsh/plural-cli.git"

  test do
    system "#{bin}/plural", "--help"
  end
end
