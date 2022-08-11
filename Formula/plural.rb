# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.7/plural-cli_0.4.7_Darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5c9d9c4c5ae2c867377a7d326090081023101ff4cc432a40946d42c36cc49be1"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.7/plural-cli_0.4.7_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2e3dcb0182a65c6c077b43d17737062da6ddf14aea7160ca5ffd92913e0bc4b1"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.7/plural-cli_0.4.7_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "779bb6edee5df3929779ffc40d0535260ee29545a681fcfd9f7d217acde333cc"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.4.7/plural-cli_0.4.7_Linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "89eb8e00f152619db59a3183ed680c9805b8acc18cd4e90deafdc5958c42f129"

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
