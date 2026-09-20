class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.7.0"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.0/thingrig-cli_1.7.0_darwin_arm64.tar.gz"
      sha256 "5c3c7878a99e59918e65f539d506fc807d2f11051272fc4c84515302d2c306cb"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.0/thingrig-cli_1.7.0_darwin_amd64.tar.gz"
      sha256 "2a423d28595b699b3dd07267a7186d8eda63b59c6a69dc3622c49e9f4f14edd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.0/thingrig-cli_1.7.0_linux_arm64.tar.gz"
      sha256 "b1cfb8d147ac53ee56b777c571d4476af52ee235204a93113b8835842c5278ec"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.7.0/thingrig-cli_1.7.0_linux_amd64.tar.gz"
      sha256 "4915e0c874ee3d95c5e906b6e2e2ae56e91bec52fb4581470fa0a56b8ad0f954"
    end
  end

  def install
    bin.install "thingrig"
  end
end
