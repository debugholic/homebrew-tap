class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.4.1/litmus-v0.4.1-macos-universal.tar.gz"
  sha256 "ca6d5e39d11021e37ff20774d842f0cc1496838d8f5375ae9877bbf6dcb5fafc"
  license "MIT"
  version "0.4.1"
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
