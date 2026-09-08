class Caravay < Formula
  include Language::Python::Virtualenv

  desc "Offline speech transcription and translation for Apple Silicon Macs"
  homepage "https://github.com/tjvjk/caravay"
  url "https://github.com/tjvjk/caravay/releases/download/v0.14.0/caravay-0.14.0-py3-none-any.whl", using: :nounzip
  sha256 "6938e4f65c25ccbb50f4eada48f515af1c5a12775f8304ae7fa24641e0be75e2"
  license "MIT"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on "libyaml"
  depends_on :macos
  depends_on "python@3.13"
  on_macos do
    depends_on macos: :sonoma
  end

  # Runtime wheels are pinned to uv.lock for CPython 3.13 on Apple Silicon.

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/3e/30/e900b21425a860e195f32e37657aa1f7c7f2b1bfb26f03ca209b90933c06/annotated_doc-0.0.5-py3-none-any.whl", using: :nounzip
    sha256 "117bac03a25ede5df5440e855b32d556049ca169ead221505badf432fed4b101"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl", using: :nounzip
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/21/a6/2b21ce5ebe4d8938a247c9b0dbb7271566ae559b01795c83ea4bb2660ed7/anyio-4.15.0-py3-none-any.whl", using: :nounzip
    sha256 "7ecd9937369ffce8bba0b5ccb9b3a9507b101b0ed50256aecfbab27e6c2acb99"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl", using: :nounzip
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/58/50/6c0d534c5f134586a8e1ba4e330569e32f057e33372ae556463212fb4cd3/click-8.5.0-py3-none-any.whl", using: :nounzip
    sha256 "255bc9599cf7748b4b1a446ccc735421bd08a2ae529a8b88597d3de5664ee360"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/36/d2/b70a31e13d04456d28493f31d2aa087e99eeb2767ef0293b2625727ccb8c/filelock-3.32.5-py3-none-any.whl", using: :nounzip
    sha256 "142cd9fa77a872c5e78c62329a0d15278fadc686eb89e760017968961a4fd6b2"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/fd/3c/6a2bf344106328fd04963664a60b9bb6496fc25df8e962fcdc1367285fb9/fsspec-2026.7.0-py3-none-any.whl", using: :nounzip
    sha256 "b57ddbafedfaef7018c1ecab32aa200a9d7ca26b77965f64e48b70061249d279"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl", using: :nounzip
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/4b/69/55b8dcf636142ae660fec1869fcac14c4da2e8412e14d6eee1523be77e9f/hf_xet-1.6.0-cp38-abi3-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "f0906082d9932ae0c0057fa194041c22b4e2cdb46b2592ef3b91f020d62a081a"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl", using: :nounzip
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl", using: :nounzip
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/c3/0e/3e45bbe0dd48f4e56b1d46649d342de853cd1c7e815323472ab62687f153/huggingface_hub-1.30.0-py3-none-any.whl", using: :nounzip
    sha256 "96ae0a8e99a234374a6fe43e989ebd21c04640b91ab2927e7e5773ba1131ca59"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/57/b0/0e52c878c53f245edd3a11020f20979b3f490f245af532c7cae3027754b5/idna-3.19-py3-none-any.whl", using: :nounzip
    sha256 "815e7be7a7806d54abb586dc943addc79e8b2ee16915059658cbeff4b1b43bf4"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl", using: :nounzip
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl", using: :nounzip
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/9c/d9/5f7756922cdd676869eca1c4e3c0cd0df60ed30199ffd775e319089cb3ed/markupsafe-3.0.3-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "116bb52f642a37c115f517494ea5feb03889e04df47eeff5b130b1808ce7c219"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl", using: :nounzip
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/43/e3/7d92a15f894aa0c9c4b49b8ee9ac9850d6e63b03c9c32c0367a13ae62209/mpmath-1.3.0-py3-none-any.whl", using: :nounzip
    sha256 "a0b2b9fe80bbcd81a6647ff13108738cfb482d481d826cc0e02f5b35e5c88d2c"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl", using: :nounzip
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/3c/79/81e0bf24f4d020a2b1d5cd297a9f60c3f24eeb116f9bba5870443f7b6a4a/numpy-2.5.2-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
    sha256 "29d81e97f668489cba8ebfd796b9bdd453525d35dd9e162e2daec94bf3fc7740"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl", using: :nounzip
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/5c/01/a3c3ed5cd186f39e7880f8303cc51385a198a81469d53d0fdecf1f64d929/protobuf-6.33.6-cp39-abi3-macosx_10_9_universal2.whl", using: :nounzip
    sha256 "9720e6961b251bde64edfdab7d500725a2af5280f3f4c87e57c0208376aa8c3a"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/eb/47/c95ffc2009878c7aac0c5e08528022dcb885933252a88b5f170058014464/pydantic-2.13.5-py3-none-any.whl", using: :nounzip
    sha256 "346a034f080da3755d8e9cb5e00e8b07de1d39e4f6e2c87d8ab7cafa0b269a73"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/21/43/6323b1f8b217780454c61304bcd2b38ae4762f50754414124603ccc90bb2/pydantic_core-2.46.5-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "f332f0e72a5a0400141f830744e141bf9f97917878dbe968669e8a7fefea78ff"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/30/a4/2bffa9f8e804325a09867f0e9d30795c80ea9f8d62560bd1b6ad6220eb2f/pydantic_settings-2.15.0-py3-none-any.whl", using: :nounzip
    sha256 "0ba092c291c94baceb5eff768aa0d56400a457585bc0175925a5a5510303da42"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl", using: :nounzip
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0d/17/c5c6b53ddc18f297992099b3d9ec16c855c0ccc83263a21fe4d1c625ec6c/python_dotenv-1.2.3-py3-none-any.whl", using: :nounzip
    sha256 "904552145e8bfed22162c09dab1c2b9b54fefa7b23ba780f4f26ca0316b0f0d9"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/e6/eb/5750ebabdb010ffb0d31fceae68c7a8f3876c06140c3bd6a7feff6240d6d/regex-2026.9.3-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "e33dfc13c02d9c4e55bcf3f3b2eb448537823a6f6f30bf737b2974b63a530bc9"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl", using: :nounzip
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/f5/b1/fa7c600e7dceae12e9606c7578cbc9ff1e1ed55844883ee5c92205e86226/safetensors-0.8.0-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "c80201d22cbf405b80647a60ada77bba06c8fba2da2743ba1e89cdcc39a81f25"
  end

  resource "sentencepiece" do
    url "https://files.pythonhosted.org/packages/34/db/f9ea1a6844b4fa5dfe2312095cd866a1f724cd0905054ab9d5991778ba50/sentencepiece-0.2.2-cp313-cp313-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "201a8e0f55501a76e08dbf2c54bc45f4642b379271e89c667d517bfbc2191f2a"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/95/9c/c510029fc6ef33a6275cd2c5d3cecd6613dfd6aa401d57c54f1c18852ccf/setuptools-84.0.0-py3-none-any.whl", using: :nounzip
    sha256 "51a52592b3b99e102b609654876bd65f19f999935166d1352678931132b0c670"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl", using: :nounzip
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/a2/09/77d55d46fd61b4a135c444fc97158ef34a095e5681d0a6c10b75bf356191/sympy-1.14.0-py3-none-any.whl", using: :nounzip
    sha256 "e091cc3e99d2141a0ba2847328f5479b05d94a6635cb96148ccb3f34671bd8f5"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/67/49/22da045a91732384d3a3771816bf188dc5a1f702c32e635afa7c679c0bef/tokenizers-0.23.2-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
    sha256 "986670e43691469dcee610ea0f846f91a8f84e91fc6f7a48d4c064414c0ec2bf"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/ca/40/0db773452c2a62b37761d3f418acf933d381f9e87077036fb57c2a386c37/torch-2.14.0-cp313-cp313-macosx_14_0_arm64.whl", using: :nounzip
    sha256 "9d4b1022a5d9b71282ec67ad0d9e7235870096b8a246dc1c32d6ea1fc83dc998"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f9/1c/01bfd571a64e7f270e6bab5e33777debe0edc56759233ce84f27dec92d14/tqdm-4.70.0-py3-none-any.whl", using: :nounzip
    sha256 "7f585706bfddbdebf89daac705b2dfcc16890130727d3197ca62c732b4310953"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/0d/4d/ee3728674c0bbc637bb4af88ccf0be697f92e4e90b55f5dc110c44d61b61/transformers-5.16.1-py3-none-any.whl", using: :nounzip
    sha256 "2f2d5b98a5ad3718713653734298fa620754ed683702a635ebb587df3ed29c7e"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/dc/bf/205d0004930ede8f542fb58f601526fccf4ae7626075ca1e6c4de5d3d652/typer-0.27.2-py3-none-any.whl", using: :nounzip
    sha256 "b3a5fc4342d5fc8fda8fc3010b1cf117e9249aab7fae800c2eff62fd3842d97d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl", using: :nounzip
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/67/81/4add07e5172b7ac40d8ed5ff580409a7801a4fe26d529bdd915401dabfbe/typing_inspection-0.4.4-py3-none-any.whl", using: :nounzip
    sha256 "65b8397ba37ccbce054456aaccddfc91e6e3083c92824df348d96ca832f3f147"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13", system_site_packages: false)
    resources.each do |r|
      r.stage do
        venv.pip_install Pathname.pwd/r.downloader.basename, build_isolation: false
      end
    end
    venv.pip_install_and_link buildpath/"caravay-#{version}-py3-none-any.whl", build_isolation: false
  end

  def caveats
    <<~EOS
      Download the model before first use (about 9 GiB; allow 20 GiB free):
        caravay models download
      Model files are licensed separately under CC BY-NC 4.0.
      For live system audio, also install:
        brew install tjvjk/tap/caravay-audio
    EOS
  end

  test do
    assert_match "transcribe", shell_output("#{bin}/caravay --help")
    (testpath/"config.toml").write <<~TOML
      cache_dir = "#{testpath}/models"
    TOML
    assert_equal "missing", shell_output("#{bin}/caravay --config #{testpath}/config.toml models status", 1).strip
    system libexec/"bin/python", "-c", "import torch, transformers; assert torch.backends.mps.is_built()"
    system formula_opt_bin("python@3.13")/"python3.13", "-m", "pip",
           "--python=#{libexec}/bin/python", "check"
  end
end
