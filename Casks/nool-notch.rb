cask "nool-notch" do
  version "0.6.0"
  sha256 "07a36dabbc7c95bd611b2f177ee162755554c2e1ce3add5214be51613048a6eb"

  url "https://github.com/nail00749/nool_notch/releases/download/v#{version}/NoolNotch-v#{version}-arm64.zip"
  name "Nool Notch"
  desc "Notch companion for limits, media, calendar, and Jira"
  homepage "https://github.com/nail00749/nool_notch"

  depends_on arch: :arm64
  depends_on formula: "gh"
  depends_on formula: "glab"
  depends_on macos: :sonoma

  app "NotchApp.app"

  caveats <<~EOS
    Nool Notch is currently ad-hoc signed and not notarized.
    Install this release without quarantine:
      brew install --cask --no-quarantine nool-notch
  EOS
end
