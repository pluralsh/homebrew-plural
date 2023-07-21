# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.6.27"
  license "MIT"

  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.6.27/plural-cli_0.6.27_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b46e35844dc2232f8c9470318896fb70e90e2fd74f79fa35161af23e1eaa5921"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.6.27/plural-cli_0.6.27_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "68830e2f14f37ff5b620502477101ad9a1d59fbff0d7deb77896f7e901e1929e"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.6.27/plural-cli_0.6.27_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "458dba0a5cf3557cf48d76a6caa840c8217a63568ebb9bf18c94ed67cbecbd83"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.6.27/plural-cli_0.6.27_Linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a53a5e12b8209f557c9487a8949d0eff9aace38353276dbceafa42fa1a2a2780"

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
