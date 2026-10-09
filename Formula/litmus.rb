class Litmus < Formula
  desc "Mutation testing and flaky test detection for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.5.3/litmus-v0.5.3-macos-universal.tar.gz"
  sha256 "58887690c585591c55bfd8cb829cdceb7366f2e590bd725e698ed5c8ddd871ac"
  license "MIT"
  version "0.5.3"
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
