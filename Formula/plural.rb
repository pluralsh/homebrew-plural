# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.4/plural-cli_0.4.4_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d927b93f85aa5a4e9700396bbeaa09f6b3239bd456daef284d6b53a3d4706505"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.4/plural-cli_0.4.4_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c3597370f6279a15c3a6e351f3147d4d8f3f106e37d34a7b9608169cc3e1b445"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.4/plural-cli_0.4.4_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "44e1474a03387347f7e03005bba531385bdd78e8c09b5d71c675a1843ccc776e"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.4/plural-cli_0.4.4_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "eab48dd32a65a77ce05293e3ef3831ca71d76afd0119024235e02437246c3124"

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
