class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v23/grubby_v23_darwin_arm64.tar.gz"
      sha256 "447dc88d976a9fa8143d1662343318224d9311c180de0ba3702e96b82dbd56a9"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v23/grubby_v23_darwin_amd64.tar.gz"
      sha256 "e3ef0055a0a980cae328464acba5ae84e5106e53569581ac9f45c0f9ae74632c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v23/grubby_v23_linux_arm64.tar.gz"
      sha256 "5358a910aa685f4573060c21312e3f843af2b22841efb25dc18136bedb9828ea"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v23/grubby_v23_linux_amd64.tar.gz"
      sha256 "2a4467d1c6e0d9309ea3cf027b903e90f4c60a2bf64fdc2ff9e757f38b879313"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
