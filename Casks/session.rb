cask "session" do
  version "1.2.0"
  sha256 "07414d09d8913f688687abeefbc6b72fb46e11de9006abc5f3fef0436dd54a09"

  # github.com/loki-project/session-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast "https://github.com/loki-project/session-desktop/releases.atom"
  name "Session"
  homepage "https://getsession.org/"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
