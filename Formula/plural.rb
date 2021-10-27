class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  url "https://github.com/pluralsh/plural-cli.git",
    revision: "bb43da06badea3e4e5b7479bc0da3497d1331763"
  version "0.1.13"
  license "GNU Affero General Public License v3.0"
  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "helm"
  depends_on "kubectl"
  depends_on "terraform"
  depends_on "go" => :build

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "helm", "plugin", "install" , "https://github.com/pluralsh/helm-push"
    system "helm", "plugin", "install", "https://github.com/databus23/helm-diff"
    system "make", "build-cli"
    bin.install "plural.o" => "plural"
  end

  test do
    # ensure plural --help runs correctly
    system bin/"plural", "--help"
  end
end