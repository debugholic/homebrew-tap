class Litmus < Formula
  desc "Mutation testing for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.3.0/litmus-v0.3.0-macos-universal.tar.gz"
  sha256 "fd56ec76b7e587a0dd33f63e01bb9b80d01e1ec9b1023383dde12655f3415f93"
  license "MIT"
  version "0.3.0"
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
