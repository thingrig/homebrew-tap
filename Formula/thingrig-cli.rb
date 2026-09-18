class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.6.1"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.1/thingrig-cli_1.6.1_darwin_arm64.tar.gz"
      sha256 "cbfa7138b358b434007cbee45707e7f5b6140a801c83f27be2d208798037fccc"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.1/thingrig-cli_1.6.1_darwin_amd64.tar.gz"
      sha256 "52608ab16f80d942d5a03f4019d42ff12030e9d6f79ced6da3d27ee1b2db7c15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.1/thingrig-cli_1.6.1_linux_arm64.tar.gz"
      sha256 "3082e85e73c48257a848f07a92986d24c08248cd05e6bd05708597982d5f6e03"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.1/thingrig-cli_1.6.1_linux_amd64.tar.gz"
      sha256 "51fa0c3f38a1f65479cc6c3333c126c7671f255bc177866880c11f8eb7d0e580"
    end
  end

  def install
    bin.install "thingrig"
  end
end
