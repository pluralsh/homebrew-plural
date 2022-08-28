# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.5/plural-cli_0.5.5_Darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "691fd1cf7d0c5e57e5b951d38de5d30018f3828fd0f133156dd525561d37adf1"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.5/plural-cli_0.5.5_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b330b817510298bf65f1dfd3f0960ef8888f41b5d090db824914f4b0deb9a01d"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.5/plural-cli_0.5.5_Linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a77f6e605a202383ece950d7ec2e0a178ce67ccb7fa2d292207567c9d5f4dd57"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.5/plural-cli_0.5.5_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "10ecda10fe5c8d0034dde20f3c9385522df9b3ccc28cf92e839d02d3a22c02c2"

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
