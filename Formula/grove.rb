class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "95afe237339bd249e907559f456051e855ff695b3051c746c45316d2f09f89a4"

      def install
        bin.install "grove-#{version}-darwin-arm64" => "grove"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "ffc306bb0b3dcc45d9421935eb817e5d2a98e4db667850947aa175a2c8f143e8"

      def install
        bin.install "grove-#{version}-darwin-x64" => "grove"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
