# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.1/plural-cli_0.3.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "dc72cc3964d9ae970b4bc358af6ebcbe3492f4504efafc06ba7d162ed42621e0"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.1/plural-cli_0.3.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "824772d318eb1e1b1036df642d2ed451f5a38ce56bcea9d4d68192d9a91b5463"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.1/plural-cli_0.3.1_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "153b88e259fa6e2a3fa39f5b9a4a9920fd5a7024b06fc33d1a08a5c570a9efde"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.1/plural-cli_0.3.1_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "551f06f1c547ef10f4c1c7dd55e286db11d56ce710e0cfc5210b2cc516b63ab3"

      def install
        bin.install "plural"
      end
    end
  end

  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "go" => :build
  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  def post_install
    system "helm", "plugin", "install", "https://github.com/pluralsh/helm-push"
  end

  test do
    system "#{bin}/plural", "--help"
  end
end
