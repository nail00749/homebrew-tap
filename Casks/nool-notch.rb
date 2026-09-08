cask "nool-notch" do
  version "0.4.0"
  sha256 "0ba6b610d1c7ec62a05df5d3492d21945f2b5f3f119d637de8d70578faec1db5"

  url "https://github.com/nail00749/nool_notch/releases/download/v#{version}/NoolNotch-v#{version}-arm64.zip"
  name "Nool Notch"
  desc "Notch companion for limits, media, calendar, and Jira"
  homepage "https://github.com/nail00749/nool_notch"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on formula: "gh"
  depends_on formula: "glab"

  app "NotchApp.app"

  caveats <<~EOS
    Nool Notch is currently ad-hoc signed and not notarized.
    Install this release without quarantine:
      brew install --cask --no-quarantine nool-notch
  EOS
end
