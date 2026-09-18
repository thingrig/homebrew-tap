class ThingrigCli < Formula
  desc "Terminal user interface for managing ThingRig devices and remote sessions"
  homepage "https://thingrig.com"
  version "1.6.2"
  license "LicenseRef-ThingRig"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.2/thingrig-cli_1.6.2_darwin_arm64.tar.gz"
      sha256 "736daf3e397dbf6f38324ba15fe78cc2f2e65a3033e73a6e8d0cfb7df5ae7434"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.2/thingrig-cli_1.6.2_darwin_amd64.tar.gz"
      sha256 "b74804449b40cd555990778e5e8ba28ed3987f8b91d9b3ccc0ee02e4ff08cba8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.2/thingrig-cli_1.6.2_linux_arm64.tar.gz"
      sha256 "f759ac85066ba5abbd8b690d838018ce353a8a72d682a26f66d277fcf974494f"
    else
      url "https://github.com/thingrig/thingrig-cli/releases/download/v1.6.2/thingrig-cli_1.6.2_linux_amd64.tar.gz"
      sha256 "28288796d1ccec42659ba15e28441fa0d09064bf887b69a7573eaa34a025cdbc"
    end
  end

  def install
    bin.install "thingrig"
  end
end
