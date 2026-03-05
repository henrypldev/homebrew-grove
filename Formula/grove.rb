class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.15.0-beta.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "da4f6349f1b8900039670d694a892844f0fd79f2d1c4d1159efc3e03a6494ebb"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "c9d3fcabc87b75dae2498099f3ad73dbb9acbd58b2dbe5178b9bed9a0cf848a7"

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
