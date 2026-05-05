# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/9d/ca/b8546d0b087a481817f1dffd199ab3e414d617ec9d51d6db0618c424095f/kollab-1.0.0-py3-none-any.whl"
  sha256 "0c4f2aafbadd1be809f485b2953f16019253e98a7c6f434976489433bd94f423"
  license "MIT"

  depends_on arch: :arm64
  depends_on "libyaml"
  depends_on "python@3.12"

  preserve_rpath

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/0f/15/5bf3b99495fb160b63f95972b81750f18f7f4e02ad051373b669d17d44f2/aiohappyeyeballs-2.6.1-py3-none-any.whl"
    sha256 "f349ba8f4b75cb25c99c5c2d84e997e485204d2902a9597802b0371f09331fb8"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/29/47/7be41556bfbb6917069d6a6634bb7dd5e163ba445b783a90d40f5ac7e3a7/aiohttp-3.13.5-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "ab2899f9fa2f9f741896ebb6fa07c4c883bfa5c7f2ddd8cf2aafa86fa981b2d2"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/fb/76/641ae371508676492379f16e2fa48f4e2c11741bd63c48be4b12a6b09cba/aiosignal-1.4.0-py3-none-any.whl"
    sha256 "053243f8b92b990551949e63930a839ff0cf0b0ebbe0597b0f3fb19e1a0fe82e"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/ae/44/c1221527f6a71a01ec6fbad7fa78f1d50dfa02217385cf0fa3eec7087d59/click-8.3.3-py3-none-any.whl"
    sha256 "a2bf429bb3033c89fa4936ffb35d5cb471e3719e1f3c8a7c3fff0b8314305613"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/5a/ff/2e4eca3ade2c22fe1dea7043b8ee9dabe47753349eb1b56a202de8af6349/fastapi-0.136.1-py3-none-any.whl"
    sha256 "a6e9d7eeada96c93a4d69cb03836b44fa34e2854accb7244a1ece36cd4781c3f"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2b/94/5c8a2b50a496b11dd519f4a24cb5496cf125681dd99e94c604ccdea9419a/frozenlist-1.8.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f833670942247a14eafbb675458b4e61c82e002a148f49e68257b79296e865c4"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/2a/0d/7f3fd28e2ce311ccc998c388dd1c53b18120fda3b70ebb022b135dc9839b/httptools-0.7.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f25bbaf1235e27704f1a7b86cd3304eabc04f569c828101d94a0e605ef7205a5"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5d/13/ad7d7ca3808a898b4612b6fe93cde56b53f3034dcde235acb1f0e1df24c6/idna-3.13-py3-none-any.whl"
    sha256 "892ea0cde124a99ce773decba204c5552b69c3c67ffd5f232eb7696135bc8bb3"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/60/a0/5854ac00ff63551c52c6c89534ec6aba4b93474e7924d64e860b1c94165b/jiter-0.14.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "5252a7ca23785cef5d02d4ece6077a1b556a410c591b379f82091c3001e14844"
  end

  resource "kollabor-agent" do
    url "https://files.pythonhosted.org/packages/a6/9b/dee52e8dc2af981759672376dc05744417321ceb7f5a076b1f64592fbd2a/kollabor_agent-1.0.0-py3-none-any.whl"
    sha256 "ed65b1c88567e019f756109cf5cc3584f924ea2d4460451dc03b45ac251de368"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/9e/b2/a056e0e0a7eb7114865a21a582db431de678133e73ecdcbecfbb2ad8791f/kollabor_ai-1.0.0-py3-none-any.whl"
    sha256 "650fbfcf2cb5356ebdef18b1aadc4cedf3213c9d1f65fca19ea308f5465f785f"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/3a/8f/4097992a9352b33be29288f973aac1e9738b94156cd0929b065ada927efc/kollabor_config-1.0.0-py3-none-any.whl"
    sha256 "42159e0a12778d717dc90e9cc68445cab8f97c555749cdd27a74907ace4086a4"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/8c/bc/923550b035c15114b2f868294d2ac31b37b5e91fff6c5d78255c21bd54b1/kollabor_engine-1.0.0-py3-none-any.whl"
    sha256 "914db32d3c6d95c9850d57b74528014584bfc7d882a365dd3bbd3142172a9ffa"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/cc/ec/407677ef95129b06bf55ff7d8d98b7868d39afc3e4361b88d2d346d3501c/kollabor_events-1.0.0-py3-none-any.whl"
    sha256 "af3aa772b537397f1c0bb78992dc08713886bc58f31456c8f251878e2d3cd0e3"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/02/f4/32d515baac00a6ca031a04af2e43cfc20d7cb9918b914cde8628a3856c57/kollabor_plugins-1.0.0-py3-none-any.whl"
    sha256 "61adaaa61880dbcb4f317659533827798a50e7330aee3bbdf6702330caf10e18"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/88/f1/3482fb2b0d452df9056e45756cfcfed969867698480a185931adf4187dfb/kollabor_rpc-1.0.0-py3-none-any.whl"
    sha256 "0fd7489886ba2d5a4189ceb0b2f7d479f407c978fb84eb04b6cae0fad854974e"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/bf/2c/4ee6904efaba2a6f178ac5e5b43378a41285d5ce827e79c7dee6ca14ce8a/kollabor_tui-1.0.0-py3-none-any.whl"
    sha256 "583f171fce7a2df3579bf657645ec532d3a23fe09046a1d243f282560d58bc80"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/30/22/1cda1b902f578d4cbdb1ac1e90855c20be9428fa7e4ee78f7bbd6b2fa6f9/kollabor_webui-1.0.0-py3-none-any.whl"
    sha256 "6cbcfe6af4140c2b3f098faad9f4b809aac22684e4eb9c20ba0e5fc0f9b9d8a2"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/a9/65/1caac9d4cd32e8433908683446eebc953e82d22b03d10d41a5f0fefe991b/multidict-6.7.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "b0fa96985700739c4c7853a43c0b3e169360d6855780021bfc6d0f1ce7c123e7"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/f2/40/f090499f10514515081d09cb9da09f25b821eb20497e9423afe4f07b4ecf/openai-2.34.0-py3-none-any.whl"
    sha256 "c996a71b1a210f3569844572ad4c609307e978515fb76877cf449b72596e549e"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/0a/b6/5c9a0e42df4d00bfb4a3cbbe5cf9f54260300c88a0e9af1f47ca5ce17ac0/propcache-0.4.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f048da1b4f243fc44f205dfd320933a951b8d89e0afd4c7cacc762a8b9165207"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/80/c4/f5af4c1ca8c1eeb2e92ccca14ce8effdeec651d5ab6053c589b074eda6e1/psutil-7.2.2-cp36-abi3-macosx_11_0_arm64.whl"
    sha256 "1a7b04c10f32cc88ab39cbf606e117fd74721c831c98a27dc04578deb0c16979"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/f3/0a/fd7d723f8f8153418fb40cf9c940e82004fce7e987026b08a68a36dd3fe7/pydantic-2.13.3-py3-none-any.whl"
    sha256 "6db14ac8dfc9a1e57f87ea2c0de670c251240f43cb0c30a5130e9720dc612927"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/a1/4f/2fb62c2267cae99b815bbf4a7b9283812c88ca3153ef29f7707200f1d4e5/pydantic_core-2.46.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "af8653713055ea18a3abc1537fe2ebc42f5b0bbb768d1eb79fd74eb47c0ac089"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/ff/07/45c21ed03d708c477367305726b89919b020a3a2a01f72aaf5ad941caf35/sse_starlette-3.4.1-py3-none-any.whl"
    sha256 "6b43cf21f1d574d582a6e1b0cfbde1c94dc86a32a701a7168c99c4475c6bd1d0"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/0b/c9/584bc9651441b4ba60cc4d557d8a547b5aff901af35bda3a4ee30c819b82/starlette-1.0.0-py3-none-any.whl"
    sha256 "d3ec55e0bb321692d275455ddfd3df75fff145d009685eb40dc91fc66b03d38b"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/31/a3/5b1562db76a5a488274b2332a97199b32d0442aca0ed193697fd47786316/uvicorn-0.46.0-py3-none-any.whl"
    sha256 "bbebbcbed972d162afca128605223022bedd345b7bc7855ce66deb31487a9048"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/3d/ff/7f72e8170be527b4977b033239a83a68d5c881cc4775fca255c677f7ac5d/uvloop-0.22.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "fe94b4564e865d968414598eea1a6de60adba0c040ba4ed05ac1300de402cd42"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/a5/96/a881a13aa1349827490dab2d363c8039527060cfcc2c92cc6d13d1b1049e/watchfiles-1.1.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "bd404be08018c37350f0d6e34676bd1e2889990117a2b90070b3007f172d0610"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/40/1e/9771421ac2286eaab95b8575b0cb701ae3663abf8b5e1f64f1fd90d0a673/websockets-16.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "86890e837d61574c92a97496d590968b23c2ef0aeb8a9bc9421d174cd378ae39"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/19/2a/725ecc166d53438bc88f76822ed4b1e3b10756e790bafd7b523fe97c322d/yarl-1.23.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "13a563739ae600a631c36ce096615fe307f131344588b0bc0daec108cdb47b25"
  end

  def install
    wheelhouse = buildpath/"wheelhouse"
    wheelhouse.mkpath
    wheelhouse.install cached_download => "kollab-#{version}-py3-none-any.whl"

    resources.each do |resource|
      resource.stage do
        wheel = Dir["*.whl"].first
        odie "Expected a wheel resource for #{resource.name}" unless wheel
        wheelhouse.install wheel
      end
    end

    venv = virtualenv_create(libexec, "python3.12", system_site_packages: false)
    system Formula["python@3.12"].opt_libexec/"bin/python", "-m", "pip", "--python=#{venv.root}/bin/python",
           "install",
           "--no-index", "--find-links=#{wheelhouse}", "--no-compile", "kollab==#{version}"
    bin.install_symlink libexec/"bin/kollab" => "kollab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kollab --version")
  end
end
