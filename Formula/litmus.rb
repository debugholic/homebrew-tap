class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.5.2/litmus-v0.5.2-macos-universal.tar.gz"
  sha256 "858e893307625b3a6f967d2563f89401063bfbfd9a28d8ae2b753f34434f6280"
  license "MIT"
  version "0.5.2"
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
