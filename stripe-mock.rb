# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  version "0.159.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.159.0/stripe-mock_0.159.0_darwin_amd64.tar.gz"
      sha256 "f0919e200f4b22abeb80ece1f5d1a4e2bbe8f09891b08aa2c02fd47646380884"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.159.0/stripe-mock_0.159.0_darwin_arm64.tar.gz"
      sha256 "eaa51fa7040f50c73abd8a3708ed7483fa980d22f196c7087a858f9784304ffd"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.159.0/stripe-mock_0.159.0_linux_amd64.tar.gz"
      sha256 "e7c020b4c581f3585a34436fb664bc552406301f7c1473deffef42f51211d030"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.159.0/stripe-mock_0.159.0_linux_arm64.tar.gz"
      sha256 "d9678c0556a2948859ff6c37c32c732bfe9c53e2e4792cfadc6ea6adade9e296"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  service do
    keep_alive successful_exit: false
    run [
      opt_bin/"stripe-mock",
      "-http-port",
      "12111",
      "-https-port",
      "12112"
    ]
    working_dir var
    log_path var/"log/stripe-mock.log"
    error_log_path var/"log/stripe-mock.log"
  end
end
