class Stripestub < Formula
  desc "Stripestub is a test server for the Stripe API."
  homepage "https://github.com.com/brandur/stripestub"
  url "https://github.com/brandur/stripestub/releases/download/v0.1.7/stripestub_0.1.7_darwin_amd64.tar.gz"
  version "0.1.7"
  sha256 "f7236eb15f67ece27d4af4d2106435d52c593d626031c4800a65d610a664d085"

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
      <string>-port</string>
      <string>6065</string>
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
