# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  version "0.143.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.143.0/stripe-mock_0.143.0_darwin_arm64.tar.gz"
      sha256 "416f26d3df18016abd189b0b18e1434d7c8aa296eb5dd9406fc3a88600e2d478"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.143.0/stripe-mock_0.143.0_darwin_amd64.tar.gz"
      sha256 "9f8372b4b0aa64504237ef52f378533fe99b9ffbf01384b486b0840972264c65"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.143.0/stripe-mock_0.143.0_linux_amd64.tar.gz"
      sha256 "2a75aa9e804d9f2d58d5be08121e2e300c2d474eea48900963e6e0f4ee20156e"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.143.0/stripe-mock_0.143.0_linux_arm64.tar.gz"
      sha256 "f108576226b587fff71482a8460bb0cfad1618035cd46e61986047db9bf3435c"

      def install
        bin.install "stripe-mock"
      end
    end
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
      <string>-http-port</string>
      <string>12111</string>
      <string>-https-port</string>
      <string>12112</string>
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
