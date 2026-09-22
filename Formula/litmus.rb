class Litmus < Formula
  desc "Mutation testing for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.1.2/litmus-v0.1.2-macos-universal.tar.gz"
  sha256 "55cf7fe344a8736218200331b6ef081fd611a9c73d8328eb0c2659fa2414d090"
  license "MIT"
  version "0.1.2"
  head "https://github.com/debugholic/litmus.git", branch: "main"

  depends_on :macos

  def install
    bin.install "litmus"
  end

  test do
    assert_match "Mutation testing for Swift", shell_output("#{bin}/litmus --help")
    assert_match version.to_s, shell_output("#{bin}/litmus --version")
  end
end
