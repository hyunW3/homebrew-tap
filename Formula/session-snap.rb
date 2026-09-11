class SessionSnap < Formula
  desc "Save and restore tmux sessions along with their Claude Code conversations"
  homepage "https://github.com/hyunW3/session-snap"
  url "https://github.com/hyunW3/session-snap/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b67321932dae48cd55e4dc3f05f150477189de040f6c50c6e2eb77f21cab7640"
  license "MIT"
  head "https://github.com/hyunW3/session-snap.git", branch: "main"

  # tmux and python3 come from the system on purpose: a second tmux from Homebrew
  # could not talk to the tmux server the sessions already run in.
  depends_on :linux

  def install
    bin.install "session-snap"
  end

  test do
    assert_match "session-snap #{version}", shell_output("#{bin}/session-snap --version")
  end
end
