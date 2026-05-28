# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/77/48/7bd015478b852f5e957088abadc1c6d77b1208907686f860e95a031d05f4/kollab-0.5.13-py3-none-any.whl"
  sha256 "f8e7df2670a063f92035e9e2d571d4b691232f385c4f855b9fca607a0827e93a"
  license "MIT"

  depends_on arch: :arm64
  depends_on "libsodium"
  depends_on "libyaml"
  depends_on "python@3.12"

  preserve_rpath

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/29/47/7be41556bfbb6917069d6a6634bb7dd5e163ba445b783a90d40f5ac7e3a7/aiohttp-3.13.5-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "ab2899f9fa2f9f741896ebb6fa07c4c883bfa5c7f2ddd8cf2aafa86fa981b2d2"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/a9/65/1caac9d4cd32e8433908683446eebc953e82d22b03d10d41a5f0fefe991b/multidict-6.7.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "b0fa96985700739c4c7853a43c0b3e169360d6855780021bfc6d0f1ce7c123e7"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/29/b6/170e2b8d4e3bc30e6bfdcca53556537f5bf595e938632dfcb059311f3ff6/yarl-1.24.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8ae44649b00947634ab0dab2a374a638f52923a6e67083f2c156cd5cbd1a881d"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/5f/fc/a7bf5b6e4e617b45f90f2d9d2a68519c249c81dd4fc2658c7a2a61c4f4b7/aiohappyeyeballs-2.6.2-py3-none-any.whl"
    sha256 "4708045e2d7a6c6bdf8aafa8ed39649eaf926a4543b54560659129e3365953c4"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/fb/76/641ae371508676492379f16e2fa48f4e2c11741bd63c48be4b12a6b09cba/aiosignal-1.4.0-py3-none-any.whl"
    sha256 "053243f8b92b990551949e63930a839ff0cf0b0ebbe0597b0f3fb19e1a0fe82e"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2b/94/5c8a2b50a496b11dd519f4a24cb5496cf125681dd99e94c604ccdea9419a/frozenlist-1.8.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f833670942247a14eafbb675458b4e61c82e002a148f49e68257b79296e865c4"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/94/16/70255075a9859a0e3adb789b68ceb0e210dec03934245fd98d248226572f/idna-3.16-py3-none-any.whl"
    sha256 "cc246e3a3f89580c3a951b5ad298ca4638078b2cdd4f115654332b5c26daded5"
  end

  resource "kollabor-agent" do
    url "https://files.pythonhosted.org/packages/61/e3/20fdc3bd0e1e6ef1323f2dffb3d42b22dc2afad70568c4bea9aa5b28de58/kollabor_agent-0.5.13-py3-none-any.whl"
    sha256 "abdb504ba37939dab6304edb348e7a4566b6afc07082b5f29e25599c4254b36a"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/ef/0a/0dc4350e20dfd784dd2ee41acc9b33c3561da25410846d944dd7477c882f/kollabor_ai-0.5.13-py3-none-any.whl"
    sha256 "b01d333956971eb89ab708db18ff7ea1402f3310f2045f077e7f06d529162242"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/18/a1/e81210cdf91b4cac271427b7b2f0eee34b63cafb0b1c1a2f28a4ba50018e/kollabor_config-0.5.13-py3-none-any.whl"
    sha256 "4ae1cfbea91ac90706bd5404563b09277566f939fe9de6497b7d8a8bc27c2f3c"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/17/3e/fc9d0751b96bc9f5fecaf85dfadeb5a3c0a242f5dcd28f22121182987ae3/kollabor_engine-0.5.13-py3-none-any.whl"
    sha256 "62e8e2b1269f372dc6f639fc4d579fc19984abc7be92dab684cbeb9df420d8de"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/e0/82/45359b62a067409bd929ae8a56b8ed13e5a8c8a61194b3c236920999ab83/fastapi-0.136.3-py3-none-any.whl"
    sha256 "3d2a69bdf04b7e9f3afa292c3bc7a98816bbfafa10bc9b45f3f3700d2f761620"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/48/44/a1eab922a90c6f9bbfad91fb8bb1f2c4060c1a1f05b554234b40a4f958a4/kollabor_events-0.5.13-py3-none-any.whl"
    sha256 "ef931f5c0bab453de8793cd957df2da350713bdc682e676cd96d50625aa83e75"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/fe/19/8d735034cc435bcd5df8b92c7ec397e2787385d0f438bcb6984ec37ecd3e/kollabor_plugins-0.5.13-py3-none-any.whl"
    sha256 "9d2bcaa64fc44545161e2fac8e7cffac3d7d1a1adfbbebab17951c170bbdf597"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/29/b3/26e37cb552a31e004191ff60c237104e8b9bd645a8d039840c9d7ee777b0/kollabor_rpc-0.5.13-py3-none-any.whl"
    sha256 "135b3fb5ea12dfed924e10c3720ecdab25f8f8c3632bc3abf8353dc3f3695a14"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/c1/7c/c3fc40c8ff77a050f3b6688ca7fddc6b9ae0eec1f9f7a66c4b343ee9670c/kollabor_tui-0.5.13-py3-none-any.whl"
    sha256 "344feda1c56d692a076924065a8d15e74fecf10faa6c195f77a41207d66e4a24"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/4d/d7/84150f289fd8c11a18d8834681628b2d8b62f7aa87b2b340693ed9fafe14/kollabor_webui-0.5.13-py3-none-any.whl"
    sha256 "d393310c29e83c89827e8222ff60fcb05e0a62ea054b172b75a40c89379dc6ab"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/0a/bf/ccff9be562e24207716d04ef9dc931c76aff0c89a7265da43e2104d7fe06/openai-2.38.0-py3-none-any.whl"
    sha256 "ec6661c57b2dcc47414a767e6e3335c7ed3d19c9696999283a3c82e95c756a3c"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/01/84/c01099b59a285a1ebba64ae93f62bfa036675340fd1b0045ae65890a0442/jiter-0.15.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8c9004af7c8d67cce7f1aae1026fb55607f4aa600710d08ede3a3ce4aeefe7e0"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/19/95/6195171e385007300f0f5574592e467c568becce2d937a0b6804f218bc49/pydantic_core-2.46.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "962ccbab7b642487b1d8b7df90ef677e03134cf1fd8880bf698649b22a69371f"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/2c/7d/49777a3e20b55863d4794384a38acd460c04157b0a00f8602b0d508b8431/propcache-0.5.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "e5cbfac9f61484f7e9f3597775500cd3ebe8274e9b050c38f9525c77c97520bf"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/80/c4/f5af4c1ca8c1eeb2e92ccca14ce8effdeec651d5ab6053c589b074eda6e1/psutil-7.2.2-cp36-abi3-macosx_11_0_arm64.whl"
    sha256 "1a7b04c10f32cc88ab39cbf606e117fd74721c831c98a27dc04578deb0c16979"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/be/7b/4845bbf88e94586ec47a432da4e9107e3fc3ce37eb412b1398630a37f7dd/pynacl-1.6.2-cp38-abi3-macosx_10_10_universal2.whl"
    sha256 "c949ea47e4206af7c8f604b8278093b674f7c79ed0d4719cc836902bf4517465"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/df/a2/781b623f57358e360d62cdd7a8c681f074a71d445418a776eef0aadb4ab4/cffi-2.0.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8eca2a813c1cb7ad4fb74d368c2ffbbb4789d377ee5bb8df98373c2cc0dee76c"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/dc/67/805710444ea8cc75fbf70b920ed431a560c4bf9c57f7d5a3117213189399/sse_starlette-3.4.4-py3-none-any.whl"
    sha256 "3f4dd50d8aed2771a091f3a83000323fc3844541c16b4fe585ae2420cc6df973"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/93/79/920b8e0a8b20f793e8d64855095cb8febabf6175b8550b6f7a547d813891/starlette-1.1.0-py3-none-any.whl"
    sha256 "7f0dfd38e428aad5cb6f9f667f0ca1d2d8ca3f3385dccac8305f79ec98458382"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/01/be/72532be3da7acc5fdfbccdb95215cd04f995a0886532a5b423f929cda4cc/uvicorn-0.48.0-py3-none-any.whl"
    sha256 "48097851328b87ec36117d3d575234519eb58c2b22d79666e9bbc6c49a761dad"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0d/67e5b4109ea4a837e80daa87c2c696711955e40449a97e8926672534def2/click-8.4.1-py3-none-any.whl"
    sha256 "482be17c6991b8c19c5429a1e995d9b0efdbb63172824c41f99965dc0ade8ec2"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/a5/42/cc4feea2945cb3051038f090c9b36bd5b8a9d7f5a894a506a8983e33fd1c/httptools-0.8.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "5931891fb7b441b8a3853cf1b85c82c903defce084dd5f6771ca46e31bf862c5"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/3d/ff/7f72e8170be527b4977b033239a83a68d5c881cc4775fca255c677f7ac5d/uvloop-0.22.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "fe94b4564e865d968414598eea1a6de60adba0c040ba4ed05ac1300de402cd42"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/5f/8f/6af2ea19065c91d8b0ea3516fdfc8c0d349f407e8e9fbf4e5a17360de8ad/watchfiles-1.2.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "2d95ddc1eb6914154253d239089900813f6a767e174b8e6a50e7fdacb7e4236c"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/40/1e/9771421ac2286eaab95b8575b0cb701ae3663abf8b5e1f64f1fd90d0a673/websockets-16.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "86890e837d61574c92a97496d590968b23c2ef0aeb8a9bc9421d174cd378ae39"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/59/8c/57e832b7af6d7c5abe66eb3fbe3a3a32f4d11ea23a1aa7131371035be991/certifi-2026.5.20-py3-none-any.whl"
    sha256 "3c52e209ba0a4ad7aebe60436a4ab349c39e1e602e8c134221e546902ad25897"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
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
