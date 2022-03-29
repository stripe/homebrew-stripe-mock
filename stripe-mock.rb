# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  version "0.122.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.122.0/stripe-mock_0.122.0_darwin_arm64.tar.gz"
      sha256 "21d4f9a900da2e23fc292534d1eaca6313793e14dc7b364da0b57cf8195def66"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.122.0/stripe-mock_0.122.0_darwin_amd64.tar.gz"
      sha256 "e273c66821051d644f42a877697172d207ced9c2a9b5340166032f232038b6b1"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.122.0/stripe-mock_0.122.0_linux_amd64.tar.gz"
      sha256 "a2f7eb6374a65d357870e7e3f30898a1726ebb56d4bf984fe1511ae457dca556"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.122.0/stripe-mock_0.122.0_linux_arm64.tar.gz"
      sha256 "1c59f12c8f0e91cdc2b1ecd5fea11bb58bd9c2c8274310d2441b7d942ed6a02d"

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
