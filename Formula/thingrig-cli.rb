class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.7.1"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.1/thingrig-cli_1.7.1_darwin_arm64.tar.gz"
      sha256 "2f9487b574361a213ebc799572ea96d1b13c1355337a367b197bf0b5da7667b9"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.1/thingrig-cli_1.7.1_darwin_amd64.tar.gz"
      sha256 "97dd4114c274a4f840bee1775fa15c4ce20c8ba76630ff5b3b5bb1bdbe33139e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.1/thingrig-cli_1.7.1_linux_arm64.tar.gz"
      sha256 "e9da100fd24131a8aa7ca733ec057998095da8b25909cc0737314e8c1a8bd9fb"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.1/thingrig-cli_1.7.1_linux_amd64.tar.gz"
      sha256 "04479dddae51fa1b86a31f251910fd1869e134c0901c5afdb579216a29218139"
    end
  end

  def install
    bin.install "thingrig"
  end
end
