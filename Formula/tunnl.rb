class Tunnl < Formula
  desc "Instant secure tunnels to localhost - expose local servers to the internet"
  homepage "https://www.sqoia.dev/tunnl.sh/"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64" # darwin-arm64

      def install
        bin.install "tunnl-darwin-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64" # darwin-amd64

      def install
        bin.install "tunnl-darwin-amd64" => "tunnl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64" # linux-arm64

      def install
        bin.install "tunnl-linux-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64" # linux-amd64

      def install
        bin.install "tunnl-linux-amd64" => "tunnl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnl --version")
  end
end
