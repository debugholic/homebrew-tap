class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.5.4/litmus-v0.5.4-macos-universal.tar.gz"
  sha256 "307f4545f2c6aee506dfed7b7e980c9810fb1ef91a18d94c0bd74e796c14ff4f"
  license "MIT"
  version "0.5.4"
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
