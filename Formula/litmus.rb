class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.4.0/litmus-v0.4.0-macos-universal.tar.gz"
  sha256 "ab48b3f1e2fba9eed3770965550fc9a5f2385d81c65f31ae1ae1120fc5133c77"
  license "MIT"
  version "0.4.0"
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
