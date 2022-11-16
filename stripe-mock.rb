# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  version "0.146.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.146.0/stripe-mock_0.146.0_darwin_arm64.tar.gz"
      sha256 "0c689f78926f0c924295dfc7eb6850b3e6db76ac67a351fc634d1763ac81beea"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.146.0/stripe-mock_0.146.0_darwin_amd64.tar.gz"
      sha256 "b98aa12bae800232b70411480fb882bea2a63615321c50fd1b77f74f5d03f0da"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.146.0/stripe-mock_0.146.0_linux_arm64.tar.gz"
      sha256 "11464628b0ea7c719f654baf4ba52651a8f4c7e15a5a6acc8e8787118df9c76d"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.146.0/stripe-mock_0.146.0_linux_amd64.tar.gz"
      sha256 "4af30136ce9ec6a594b1885fcb5dacf92f41402a06fde8bc2937187521577da3"

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
