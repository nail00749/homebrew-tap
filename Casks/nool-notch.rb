cask "nool-notch" do
  version "0.8.1"
  sha256 "24d5a6ad17df87c4207dbd21d52c5cef2f95ce2c672c21252214cedf12064908"

  url "https://github.com/nail00749/nool_notch/releases/download/v#{version}/NooLApp-v#{version}-arm64.zip"
  name "NooL App"
  desc "Notch companion for limits, media, calendar, and Jira"
  homepage "https://github.com/nail00749/nool_notch"

  depends_on arch: :arm64
  depends_on formula: "gh"
  depends_on formula: "glab"
  depends_on macos: :sonoma

  app "NooL App.app"

  caveats <<~EOS
    NooL App is currently ad-hoc signed and not notarized.
    Install this release without quarantine:
      brew install --cask --no-quarantine nool-notch
  EOS
end
