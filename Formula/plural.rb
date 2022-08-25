# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.2/plural-cli_0.5.2_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7216cae3d6c2787179cac29ea68ef28007e3c7f6f27799d9840c105b30428351"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.2/plural-cli_0.5.2_Darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "1c169765964cf7a68b6b7232dc398108b3f8e1b16062cde8fc1d40f47594db5a"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.2/plural-cli_0.5.2_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a80395eace2ffb074048b1fcb454967181b30aa060501c7d79a34f08e0fa3f72"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.5.2/plural-cli_0.5.2_Linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9b5f31e602a96f106578b0ad3c4b8b41a5d18a855ae18df94bc282e5f1d0ea7b"

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
