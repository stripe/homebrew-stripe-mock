class Stripelocal < Formula
  desc "stripelocal is a server that can be run locally and which responds like the real Stripe API."
  homepage "https://github.com.com/brandur/stripelocal"
  url "https://github.com/brandur/stripelocal/releases/download/v0.1.9/stripelocal_0.1.9_darwin_amd64.tar.gz"
  version "0.1.9"
  sha256 "60df1a6f082ca71f55c9dcd70650e56f26266c07513fabeec5c347ee1298abae"

  def install
    bin.install "stripelocal"
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
      <string>#{opt_bin}/stripelocal</string>
      <string>-port</string>
      <string>6065</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>#{var}</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/stripelocal.log</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/stripelocal.log</string>
  </dict>
</plist>

	EOS
  end
end
