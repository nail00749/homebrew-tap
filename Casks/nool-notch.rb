cask "nool-notch" do
  version "0.9.0"
  sha256 "ac3a2f2904504f55696ed515fdba0c03bd0e582d11d25febf7917f5b13571972"

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
