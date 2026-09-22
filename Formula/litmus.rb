class Litmus < Formula
  desc "Mutation testing for Swift"
  homepage "https://github.com/debugholic/litmus"
  url "https://github.com/debugholic/litmus/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b4c9757f4a1be83df2640d4baef6921145fba03cf75528c47024bab826bc314e"
  license "MIT"
  head "https://github.com/debugholic/litmus.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/litmus"
  end

  test do
    assert_match "Mutation testing for Swift", shell_output("#{bin}/litmus --help")
  end
end
