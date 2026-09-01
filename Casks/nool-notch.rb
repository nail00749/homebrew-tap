cask "nool-notch" do
  version "0.1.1"
  sha256 "32ba0fbf3fde224502cdd80b01d273abd6df7fb79f6ebc6eb00afad7c418500b"

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
