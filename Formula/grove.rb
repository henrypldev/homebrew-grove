class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "aabc46368693d761b1b14963413ba001d5e7c97aab3ae0b343809e110b74cf4b"

      def install
        bin.install "grove-#{version}-darwin-arm64" => "grove"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "4686d91f4ef3efb4dbf7483b0d340c790265589c279f2f11b054b5a986b2f0bf"

      def install
        bin.install "grove-#{version}-darwin-x64" => "grove"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
