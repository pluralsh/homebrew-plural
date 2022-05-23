# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.10/plural-cli_0.3.10_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9453bac5fd0f7fee5e2a165c9aad6860eaa2d9aaa9b6553cf04709ab3ae5f6ef"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.10/plural-cli_0.3.10_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f8798083299dfa7ee16924646dc54bcdb1f1748098f47757fc31d9c3ffb9a6ec"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.10/plural-cli_0.3.10_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9382de465f176b79d3a9106f2f0fb3c0f417d1debcdc1c6e1e2a38bbff1432c0"

      def install
        bin.install "plural"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.3.10/plural-cli_0.3.10_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "227799ef73448127ba8fce389ae7556bac996d1af7dba3e5352a4b23c2547b86"

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
