class Litmus < Formula
  desc "Mutation testing for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.2.0/litmus-v0.2.0-macos-universal.tar.gz"
  sha256 "e95b06827edf01ced2b2a5bcbe61e86aaee8cb54349a48fb7c629bf8c1013e14"
  license "MIT"
  version "0.2.0"
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
