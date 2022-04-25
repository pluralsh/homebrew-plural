class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  url "https://github.com/pluralsh/plural-cli.git",
    revision: "fd3f29f049e6b3c9974841a404a694e4ac4fabf9"
  version "0.2.53"
  license "MIT License"
  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "go" => :build
  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "helm", "plugin", "install", "https://github.com/pluralsh/helm-push"
    # system "helm", "plugin", "install", "https://github.com/databus23/helm-diff"
    system "make", "build-cli"
    bin.install "plural.o" => "plural"
  end

  test do
    # ensure plural --help runs correctly
    system bin/"plural", "--help"
  end
end
