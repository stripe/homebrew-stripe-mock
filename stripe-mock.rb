class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  url "https://github.com/stripe/stripe-mock/releases/download/v0.16.1/stripe-mock_0.16.1_darwin_amd64.tar.gz"
  version "0.16.1"
  sha256 "6f6c1873158e1572097d65f6d6c2ffbf2f8e535ebb5b50a3500bd80133cdd6bb"

  def install
    bin.install "stripe-mock"
  end

  plist_options :startup => false

  def plist; <<~EOS
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

  test do
    
  end
end
