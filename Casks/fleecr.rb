cask "fleecr" do
  version "0.6.0"
  sha256 "47e8a278fb427404389d99df29ca2e472977f7827975d90adb02455977b81c71"

  url "https://github.com/voidyuu/fleecr/releases/download/v#{version}/fleecr-#{version}.zip"
  name "fleecr"
  desc "Native macOS client for herdr"
  homepage "https://github.com/voidyuu/fleecr"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fleecr.app"

  zap trash: [
    "~/Library/Application Support/Fleecr",
    "~/Library/Caches/dev.bybee.fleecr",
    "~/Library/HTTPStorages/dev.bybee.fleecr",
    "~/Library/Preferences/dev.bybee.fleecr.plist",
    "~/Library/Saved Application State/dev.bybee.fleecr.savedState",
  ]
end
