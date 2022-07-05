# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CwHelloWorld < Formula
  desc "proof of concept brew experiment"
  homepage "https://github.com/taivu/cw-hello-world"
  url "https://github.com/taivu/cw-hello-world/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "c9d7e981e3ab6b875c6cf00bbe042c4fab3c98d3aa89c3d0503ed36f8bc09c61"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args

    # https://stackoverflow.com/questions/46478540/how-to-create-homebrew-formula-with-only-scripts
    # move 'myscript.sh' under #{prefix}/bin/
    bin.install "cw-hello-world.sh" => "cwhello"

    # # OR move 'myscript.sh' to #{prefix}/bin/mybettername
    # bin.install "myscript.sh" => "mybettername"

    # # OR move *.sh under bin/
    # bin.install Dir["*.sh"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cw-hello-world`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/cwhello"
  end
end
