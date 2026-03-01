class Tunnl < Formula
  desc "Instant secure tunnels to localhost - expose local servers to the internet"
  homepage "https://www.sqoia.dev/tunnl.sh/"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-arm64.tar.gz"
      sha256 "58e6071262bbad57993eb36fb242ceaae5910d85d38156441488614020b50d09" # darwin-arm64

      def install
        bin.install "tunnl-darwin-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-amd64.tar.gz"
      sha256 "8343aaea2ab4fbb71f3a1aff7609076edc7069ad24e2fc45690e0156f4a6831c" # darwin-amd64

      def install
        bin.install "tunnl-darwin-amd64" => "tunnl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-arm64.tar.gz"
      sha256 "b2f7f1283b04d0a72872ec1a3db27b5b00a0a18fe17ebde6380de2369553d56e" # linux-arm64

      def install
        bin.install "tunnl-linux-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-amd64.tar.gz"
      sha256 "0bc63fd3f83b5308f8023e13bf8313d94514667f6b1b3dbb556a4e845837aa15" # linux-amd64

      def install
        bin.install "tunnl-linux-amd64" => "tunnl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnl --version")
  end
end
