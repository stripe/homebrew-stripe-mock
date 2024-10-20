# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  version "0.191.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.191.0/stripe-mock_0.191.0_darwin_amd64.tar.gz"
      sha256 "9d0f93ff350bb97e63c8256a8f2f65af98f2fe6ae192e21639d5c6e6cadf0353"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.191.0/stripe-mock_0.191.0_darwin_arm64.tar.gz"
      sha256 "651bd413ebe7419a0d03d4209f137ff769ef6fba09cf2b2e35a91acaa545a355"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.191.0/stripe-mock_0.191.0_linux_amd64.tar.gz"
      sha256 "33cd09776ceba9c7539c0beeb4071913996052545b42cff06b1bb026ba5f1f95"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.191.0/stripe-mock_0.191.0_linux_arm64.tar.gz"
      sha256 "14b9e2f697c7af724bd09446fe1df4dd81252c7d6e9c4f20ed280358c7717ff2"

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
