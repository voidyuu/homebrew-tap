cask "fleecr" do
  version "1.0.4"
  sha256 "be0addb3d8addd3ab21fd5e675beb7595eca36071833fd8edcdaa8624cff098f"

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
