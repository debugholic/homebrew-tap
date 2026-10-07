class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.5.0/litmus-v0.5.0-macos-universal.tar.gz"
  sha256 "1784b8be430e22dc43149f3e8f97bb80f652983ed7f0bcdfa092d0214afe2491"
  license "MIT"
  version "0.5.0"
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
