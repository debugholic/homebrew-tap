class Litmus < Formula
  desc "Mutation testing for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/releases/download/v0.3.1/litmus-v0.3.1-macos-universal.tar.gz"
  sha256 "0ca80948d75901575d2880d58d6b65c504f73ad12b839039f40c5efed7e686f5"
  license "MIT"
  version "0.3.1"
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
