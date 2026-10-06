cask "awacut" do
  version "1.0.5"
  sha256 "daa26340b0ef1909796ed86dfe9e77a7cf0b49e27d39efc309cf852d2d0d1647"

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
