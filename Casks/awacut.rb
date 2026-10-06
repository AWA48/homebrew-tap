cask "awacut" do
  version "1.0.4"
  sha256 "e4a66c65fcf63bee071d5fc70164be7d3054d30adbf509e2cfc95039d53510dd"

  url "https://dl.awacut.com/releases/#{version}/AwaCut_#{version}_aarch64.dmg"
  name "AwaCut"
  desc "Remove image backgrounds offline, whole folders at once, with on-device AI"
  homepage "https://awacut.com/"

  livecheck do
    url "https://dl.awacut.com/updater/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AwaCut.app"

  zap trash: [
    "~/Library/Application Support/com.awa48.awacut",
    "~/Library/Caches/com.awa48.awacut",
    "~/Library/Saved Application State/com.awa48.awacut.savedState",
    "~/Library/WebKit/com.awa48.awacut",
  ]
end
