# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.11/plural-cli_0.3.11_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "70cebfd9bc292279bbd7140aaa129166f9a1a8bd11dd0adb340d9f1ca2b8a153"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.11/plural-cli_0.3.11_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "beb960f65f828f9f297c42b620c8a4ddb27c5f0cc27f9d420849e6deed98b548"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.11/plural-cli_0.3.11_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bbe7999679dcecc9a680ced8fc600550bd2d55940cda0f229384c34c0b5c6cc0"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.11/plural-cli_0.3.11_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "294f1c81f306b591d0e3b4da199c547c4d69a75ca59fef7a24222324f13ba219"

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
