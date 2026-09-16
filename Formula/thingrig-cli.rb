class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.5.0"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.5.0/thingrig-cli_1.5.0_darwin_arm64.tar.gz"
      sha256 "a81fc6b8d9d997062e77cff44657d056f3b4bc308c01469690cd339057cb3820"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.5.0/thingrig-cli_1.5.0_darwin_amd64.tar.gz"
      sha256 "cdcf8f746f51f6ad45eda8bcf1cdd4b2e5ebc2228f30cad3ba59a7ef6720055e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.5.0/thingrig-cli_1.5.0_linux_arm64.tar.gz"
      sha256 "9741dcd453ec2136850fa00fb1451a6eb8ddf6f4021751e17ca6578debd4447e"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.5.0/thingrig-cli_1.5.0_linux_amd64.tar.gz"
      sha256 "e97aba38f2fd7bca5e1087c475b81f13f8e56307124a20d878d780d2168e749f"
    end
  end

  def install
    bin.install "thingrig"
  end
end
