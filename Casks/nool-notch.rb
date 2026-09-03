cask "nool-notch" do
  version "0.1.5"
  sha256 "1b49606463824689e4e13aad286ff41c657588171c4ed35d4d35725e0a16618f"

  url "https://github.com/nail00749/nool_notch/releases/download/v#{version}/NoolNotch-v#{version}-arm64.zip"
  name "Nool Notch"
  desc "Notch companion for limits, media, calendar, and Jira"
  homepage "https://github.com/nail00749/nool_notch"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "NotchApp.app"

  caveats <<~EOS
    Nool Notch is currently ad-hoc signed and not notarized.
    Install this release without quarantine:
      brew install --cask --no-quarantine nool-notch
  EOS
end
