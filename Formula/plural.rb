# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.8.1"
  license "MIT"

  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.1/plural-cli_0.8.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2baa4eda2594c1d0154929a93db1bdb11ee4c7a8ac281688681009ddee131d07"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.1/plural-cli_0.8.1_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2b5f14a888b1b50dd8c6cb62969d5ae022d4c55ba990eb8afe8fa9889a0b1a7"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.1/plural-cli_0.8.1_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a32b2baf40e2a0523b783bbe6c3c5431d6c7a0b244623b5cc8bd83744fdfdfaa"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.8.1/plural-cli_0.8.1_Linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b5a819ce326ff74c1510eeb19b6e048d305175f00141044b188fda4b8a3f85a0"

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
