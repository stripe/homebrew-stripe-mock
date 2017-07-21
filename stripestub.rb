class Stripestub < Formula
  desc "Stripestub is a test server for the Stripe API."
  homepage "https://github.com.com/brandur/stripestub"
  url "https://github.com/brandur/stripestub/releases/download/v0.1.6/stripestub_0.1.6_darwin_amd64.tar.gz"
  version "0.1.6"
  sha256 "8c67f825ffe8b3d6fe0e3c753c67d036f102d666310ce1109c6d794732f81d3f"

  def install
    bin.install "stripestub"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>KeepAlive</key>
    <dict>
      <key>SuccessfulExit</key>
      <false/>
    </dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>ProgramArguments</key>
    <array>
      <string>#{opt_bin}/stripestub</string>
      <string>-port 6065</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>#{var}</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/stripestub.log</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/stripestub.log</string>
  </dict>
</plist>

	EOS
  end
end
