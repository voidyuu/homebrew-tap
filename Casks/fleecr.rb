cask "fleecr" do
  version "0.6.0"
  sha256 "c58004db184d30d8e52e6bbf91a3877ca4958f1457cdc81620b813af10201eb8"

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
