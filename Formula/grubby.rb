class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v24/grubby_v24_darwin_arm64.tar.gz"
      sha256 "420af788ce199750d3641d33dd8fb1d42f1d8c361992de8b71d19449aca4ab4e"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v24/grubby_v24_darwin_amd64.tar.gz"
      sha256 "170a5fb9e530e33f0ac1dbe864e8ceebad74f76d603dd9cd980ff2d0dcee2ce4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v24/grubby_v24_linux_arm64.tar.gz"
      sha256 "15cf925d3018daec445f42672ac71bfbc57391612677b54a36dc8afd4adf5ef1"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v24/grubby_v24_linux_amd64.tar.gz"
      sha256 "0db239e9c47a9153a52e54a2d1b399ad0e547fb0ce278927f53f094057ade925"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
