class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.4.2/litmus-v0.4.2-macos-universal.tar.gz"
  sha256 "2ab87581762039dafd528eaef93ad1788c14d3a88422a2d17a3226a15780ba0e"
  license "MIT"
  version "0.4.2"
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
