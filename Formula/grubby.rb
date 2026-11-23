class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v26/grubby_v26_darwin_arm64.tar.gz"
      sha256 "ade0c22491013a8716472ab6c0a2d194c6c0bf9300d58bb0b4ce007de9283b36"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v26/grubby_v26_darwin_amd64.tar.gz"
      sha256 "9ea40bdc3140ef2ee3ac0846101c8eb86a930a9364ae687f0be8b03432048982"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v26/grubby_v26_linux_arm64.tar.gz"
      sha256 "1eb555edce44615506f36caa02f3bb8a4644d489c40e1b23f78d68cbfd06947d"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v26/grubby_v26_linux_amd64.tar.gz"
      sha256 "cc32a4d5cc6034d247126b66026543f1a227da6a52675b8c82b6e333d5d012f8"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
