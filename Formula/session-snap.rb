class SessionSnap < Formula
  desc "Save and restore tmux sessions along with their Claude Code conversations"
  homepage "https://github.com/hyunW3/session-snap"
  url "https://github.com/hyunW3/session-snap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7f207fe05bb38341ca6a8378af86dd46a0e0bbd9802ac0b4037aecb6612f6671"
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
