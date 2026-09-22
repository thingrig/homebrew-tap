class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.8.0"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.8.0/thingrig-cli_1.8.0_darwin_arm64.tar.gz"
      sha256 "27405c92fba40efdc590814b2ba4f11ce3fbae915770b97416afdd6612bdeddd"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.8.0/thingrig-cli_1.8.0_darwin_amd64.tar.gz"
      sha256 "95c4818fb5c9ac8daafe85e5bb664b083154ba79d012337596d3e618d79cd5c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.8.0/thingrig-cli_1.8.0_linux_arm64.tar.gz"
      sha256 "791b1eacd7bbeb9dce04abbe6821864da6c670ad25ca30a7df388a9365044576"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.8.0/thingrig-cli_1.8.0_linux_amd64.tar.gz"
      sha256 "5d1c0d51147800cb1a52df48eac4210576c9a67f4cf24533a12593e108b56282"
    end
  end

  def install
    bin.install "thingrig"
  end
end
