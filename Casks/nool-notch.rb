cask "nool-notch" do
  version "0.11.0"
  sha256 "ca15bc4206bc5ea035ae0920d001324543ca318341c09d9f3dbe1c4daab9d378"

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
