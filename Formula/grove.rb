class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.15.0-beta.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "a8a56947422424488c9e103e7872c6feff2c3d02879b26b529b7bb6a97f6c08b"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "425d17167497447b400083308d23eed1d7f855443dad17c32b7c8ba4eb078313"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
