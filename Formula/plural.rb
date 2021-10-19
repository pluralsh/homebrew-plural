class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  url "https://github.com/pluralsh/plural-cli.git",
    revision: "250e30a89c78191093fa6be7331ce92b59551d4f"
  version "0.1.8"
  license "GNU Affero General Public License v3.0"
  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "helm"
  depends_on "kubectl"
  depends_on "terraform"
  depends_on "go" => :build

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "make", "build-cli"
    bin.install "plural.o" => "plural"
  end

  test do
    # ensure plural --help runs correctly
    system bin/"plural", "--help"
  end
end