# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StripeMock < Formula
  desc "stripe-mock is a mock HTTP server that responds like the real Stripe API. It can be used instead of Stripe's testmode to make test suites integrating with Stripe faster and less brittle."
  homepage "https://github.com/stripe/stripe-mock"
  version "0.160.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.160.0/stripe-mock_0.160.0_darwin_arm64.tar.gz"
      sha256 "8755b1d7508ee3510775eaf06d55f472933ea1bce65f2a7a94976d93ef4f98b7"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.160.0/stripe-mock_0.160.0_darwin_amd64.tar.gz"
      sha256 "08ccb4280f4e4ff9449c5db3fa7e03ff4c400d1ce33e21a5fdacd04bc86ad124"

      def install
        bin.install "stripe-mock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.160.0/stripe-mock_0.160.0_linux_amd64.tar.gz"
      sha256 "5ac5a2763f564852e075cf24a0e2e5933b750b040919cbc4645bb9abed6c4b94"

      def install
        bin.install "stripe-mock"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stripe/stripe-mock/releases/download/v0.160.0/stripe-mock_0.160.0_linux_arm64.tar.gz"
      sha256 "0074bc778244bd1bcf61cc38130f6a7d06decf429d25603e1723cd505a3069eb"

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
