# comment
# frozen_string_literal: true

# top-level class comment
class IngesterLambdaGui < Formula
  desc "Ingester Lambda CLI"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/cca-dev-bill-temp/ingester-cli/ingester-cli-2020-10-08T164329-3b45560.tar.gz"
  sha256 "4118b0311b34811a09889b3dd42221a0f48c7cdb71b54ba051d6b1c611582837"

  def install
    bin.install "ingester-cli"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ingester-cli"
  end
end