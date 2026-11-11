cask "oinit" do
  version "1.4.1"

  on_macos do
    on_arm do
      sha256 "729d0242ddb663c33f1f17f3db9093f7c37a48c92d93f6832e3fbb96108b6b37"
      url "https://github.com/ssh-oidc/oinit/releases/download/v#{version}/oinit_Darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "7adac7b67e3beba68c8252e913e6d2b95d3c60a62d6263ec66655d7ce5043a9c"
      url "https://github.com/ssh-oidc/oinit/releases/download/v#{version}/oinit_Darwin_x86_64.tar.gz"
    end
  end

  name "oinit"
  desc "Client to use SSH certificates with OpenSSH via OpenID Connect"
  homepage "https://codebase.helmholtz.cloud/m-team/oidc/ssh/oinit/"

  binary "oinit"
  manpage "man/oinit.1"
  manpage "man/oinit_hosts.5"

  postflight do
    # The binary is unsigned (no Apple Developer ID); drop the Gatekeeper
    # quarantine attribute so it runs without "cannot be opened".
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/oinit"]
    end
  end
end
