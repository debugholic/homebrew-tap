class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.5.1/litmus-v0.5.1-macos-universal.tar.gz"
  sha256 "25cc569b1a58cb33bed6bee7ca2f065177976a4e8f6281a77f14464709be20ba"
  license "MIT"
  version "0.5.1"
  head "https://github.com/debugholic/litmus.git", branch: "main"

  depends_on :macos

  def install
    bin.install "litmus"
  end

  test do
    assert_match "Mutation testing", shell_output("#{bin}/litmus --help")
    assert_match version.to_s, shell_output("#{bin}/litmus --version")
  end
end
