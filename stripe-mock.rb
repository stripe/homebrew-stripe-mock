class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com.com/stripe/stripe-mock"
  url "https://github.com/stripe/stripe-mock/releases/download/v0.1.19/stripe-mock_0.1.19_darwin_amd64.tar.gz"
  version "0.1.19"
  sha256 "9a7ac743900314155a29b77d615c8b33a7ee57385f7c1eccc002be9e41377500"

  def install
    bin.install "stripe-mock"
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
      <string>#{opt_bin}/stripe-mock</string>
      <string>-port</string>
      <string>12111</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>#{var}</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/stripe-mock.log</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/stripe-mock.log</string>
  </dict>
</plist>

	EOS
  end
end
