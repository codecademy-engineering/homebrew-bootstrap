class HelmAT334 < Formula
  desc "Kubernetes package manager"
  homepage "https://helm.sh/"
  url "https://github.com/helm/helm.git",
      tag:      "v3.3.4",
      revision: "a61ce5633af99708171414353ed49547cf05013d"
  license "Apache-2.0"
  head "https://github.com/helm/helm.git"

  depends_on "go@1.17" => :build

  def install
    system "make", "build"
    bin.install "bin/helm"

    mkdir "man1" do
      system bin/"helm", "docs", "--type", "man"
      man1.install Dir["*"]
    end

    output = Utils.safe_popen_read({ "SHELL" => "bash" }, bin/"helm", "completion", "bash")
    (bash_completion/"helm").write output

    output = Utils.safe_popen_read({ "SHELL" => "zsh" }, bin/"helm", "completion", "zsh")
    (zsh_completion/"_helm").write output
  end

  test do
    system "#{bin}/helm", "create", "foo"
    assert File.directory? "#{testpath}/foo/charts"

    version_output = shell_output("#{bin}/helm version 2>&1")
    assert_match "Version:\"v#{version}\"", version_output
    if build.stable?
      assert_match stable.instance_variable_get(:@resource).instance_variable_get(:@specs)[:revision], version_output
    end
  end
end
