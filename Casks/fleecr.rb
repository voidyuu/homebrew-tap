cask "fleecr" do
  version "1.0.2"
  sha256 "36de392511d24f78f29cce65872f860356a7644f4b962f8775f4da4b2e424863"

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
