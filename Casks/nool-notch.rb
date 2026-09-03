cask "nool-notch" do
  version "0.2.0"
  sha256 "56da0ad80f4973710761c60bde7fab765289a1edc6e72d3db8ddfe4b9a4aa6b7"

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
