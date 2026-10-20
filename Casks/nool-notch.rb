cask "nool-notch" do
  version "0.10.0"
  sha256 "5803fd134c91a3122f9b83e8e5c0bbe66bc6ea1a3380cdc4f5f71ff1426f1c1a"

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
