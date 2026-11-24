class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v28/grubby_v28_darwin_arm64.tar.gz"
      sha256 "fa7640ddd8033d5e23a6ce9604abb8630a79a74384e63b26e27579ff19a694f3"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v28/grubby_v28_darwin_amd64.tar.gz"
      sha256 "01440888bd05ed351642c0ecce31cf7d366dbd21ef1eed9386d0b353356c2e92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v28/grubby_v28_linux_arm64.tar.gz"
      sha256 "358c39117a51f50c7790aedd7d69d9bdd48282475b640fda6adcdaaa346ee680"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v28/grubby_v28_linux_amd64.tar.gz"
      sha256 "4752184f4117b2ff1d79b08c6c3558053edb63bc4c5ab37485bd12e0d25f9be2"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
