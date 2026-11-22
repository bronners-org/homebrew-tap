class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v25/grubby_v25_darwin_arm64.tar.gz"
      sha256 "a149a49f4dd06584c1ed675a17082f106976e79d1406b21efa3803ed4e8437b4"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v25/grubby_v25_darwin_amd64.tar.gz"
      sha256 "7e3e051ab5da199e06750bd47db273811d6dbee545030d3a554e77024587f33b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v25/grubby_v25_linux_arm64.tar.gz"
      sha256 "86cc49aa0733accd32735bcd581cd1a297d470ef56c34e3a7dabacbe78534a3c"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v25/grubby_v25_linux_amd64.tar.gz"
      sha256 "94835e26a3220d69e8b8bbb5afa9091d8cede74e9f072a03077a4bbc41e9a1bb"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
