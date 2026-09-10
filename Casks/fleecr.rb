cask "fleecr" do
  version "0.6.1"
  sha256 "c80669f09f6efb07561d2e33283ee657156d79595aca7fb6abf70291320c9b1a"

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
