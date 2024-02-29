# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.6/plural-cli_0.8.6_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8289f71ce8e2bf66c13c33fc71737764793eecc4a01289a298c2acd00a7a8cfe"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.6/plural-cli_0.8.6_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1fc6ec2ec8c508715e85eaa1cf0dc1a5ffc2e5c7f3597fa1c72a40b397388982"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.6/plural-cli_0.8.6_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "69fdf6688953a967f02cd736580de073cdd784647868b1df43e110e31d78c9c5"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.6/plural-cli_0.8.6_Linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "95a81d16b6c88d203422640860bd8464e7df632c58da75d76052d43c1994889e"

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
