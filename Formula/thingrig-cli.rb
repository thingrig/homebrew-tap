class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.4.0"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.4.0/thingrig-cli_1.4.0_darwin_arm64.tar.gz"
      sha256 "308c6d133a377ffa5858ff7a4c19398284bc3d4edddffe648a8ced7b4c48413f"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.4.0/thingrig-cli_1.4.0_darwin_amd64.tar.gz"
      sha256 "65fd212d7c62d963bce7b11c3b1e928ccce5d5fff82190895b2806814c47cfaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.4.0/thingrig-cli_1.4.0_linux_arm64.tar.gz"
      sha256 "db3b3e65a0d634a1fc75ecbdc972ad330ee2c6aa69249995b672fb79ae5a6e61"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.4.0/thingrig-cli_1.4.0_linux_amd64.tar.gz"
      sha256 "9e54b2e149170b315dee709f4715ab6dd142c0330224657b8d76df489ebd635f"
    end
  end

  def install
    bin.install "thingrig"
  end
end
