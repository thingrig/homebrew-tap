class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.3.0"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.3.0/thingrig-cli_1.3.0_darwin_arm64.tar.gz"
      sha256 "f35d04b9a89ae6b37d8fe286e4ffad1807d3ce443eb042df4ca4ada731d63c17"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.3.0/thingrig-cli_1.3.0_darwin_amd64.tar.gz"
      sha256 "0bf520f097c1290977d30afb0c67559980089166e8b4ee058997e3715e5eadfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.3.0/thingrig-cli_1.3.0_linux_arm64.tar.gz"
      sha256 "63d427f4b35723bff5f403d14b108e850647844733ca5be6db66a4e7e8b41224"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.3.0/thingrig-cli_1.3.0_linux_amd64.tar.gz"
      sha256 "f2bcb0bf85e6e43ad309c29b0ee81a2e868248249da5fefaf4d96fb6701d9608"
    end
  end

  def install
    bin.install "thingrig-cli"
  end
end
