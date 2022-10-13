# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.5.13"
  license "MIT"

  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.13/plural-cli_0.5.13_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b7e05a24f37142f3be9813b6804c1cc436091878e28dce3e2323063ed74e6d16"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.13/plural-cli_0.5.13_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b23921f086385231992b1ae3253463421fa133710aeb1718eda3b363a358f28"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.13/plural-cli_0.5.13_Linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "feb264117baab03ac3f003a7d96049b443795fa4243e76691915226dae9b7cc5"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.13/plural-cli_0.5.13_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb6282507758607b4e343e39ec5f45c077bd53506dcc79eff98682784fd12f22"

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
