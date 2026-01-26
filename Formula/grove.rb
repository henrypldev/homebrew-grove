class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "9842dfe7e65dbc43bbe344d56923b62bbf88c35165979684b75854a2371760b8"

      def install
        bin.install "grove-#{version}-darwin-arm64" => "grove"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "24b8dd49aa6bd454ebfa43ff15471fc8fdb647a9f79bf29a762b94bc6e2590a3"

      def install
        bin.install "grove-#{version}-darwin-x64" => "grove"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
