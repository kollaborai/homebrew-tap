# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/7e/ff/1046c535806b1eb271803c2aa04a17a9b4a4751ca882bcc83f50ef4c671e/kollab-0.5.16-py3-none-any.whl"
  sha256 "0d89497bc3b43691b364c6cf351e7008049ba7c39d51ce711bb6e0c38b1995e4"
  license "MIT"

  depends_on arch: :arm64
  depends_on "libsodium"
  depends_on "libyaml"
  depends_on "python@3.12"

  preserve_rpath

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/5f/fc/a7bf5b6e4e617b45f90f2d9d2a68519c249c81dd4fc2658c7a2a61c4f4b7/aiohappyeyeballs-2.6.2-py3-none-any.whl"
    sha256 "4708045e2d7a6c6bdf8aafa8ed39649eaf926a4543b54560659129e3365953c4"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/55/b2/2aac325583aaa1353045f96dffa586d8a34e8322e14a7ba49cffeb103ab4/aiohttp-3.14.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "27fd7c91e51729b4f7e1577865fa6d34c9adccbc39aabe9000285b48af9f0ec2"
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
    url "https://files.pythonhosted.org/packages/ba/16/9826f089383c593cdfc4a6e5aca94d9e91ae1692c57af82c3b2aa5e810f7/anyio-4.14.0-py3-none-any.whl"
    sha256 "dd9b7a2a9799ed6552fde617b2c5df02b7fdd7d88392fc48101e51bae46164d9"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ef/2f/c5464532e965badff2f4c4c1a3a83f5697f0d7c407ed0cda44aaa99bb451/certifi-2026.6.17-py3-none-any.whl"
    sha256 "2227dcbaafe0d2f59279d1762ddddc37783ed4354594f194ffc31d20f41fc3db"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/df/a2/781b623f57358e360d62cdd7a8c681f074a71d445418a776eef0aadb4ab4/cffi-2.0.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8eca2a813c1cb7ad4fb74d368c2ffbbb4789d377ee5bb8df98373c2cc0dee76c"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0d/67e5b4109ea4a837e80daa87c2c696711955e40449a97e8926672534def2/click-8.4.1-py3-none-any.whl"
    sha256 "482be17c6991b8c19c5429a1e995d9b0efdbb63172824c41f99965dc0ade8ec2"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/6c/ff/8496d9847a5fedae775eb49460722d3efaa80487854273e9647ae876218c/fastapi-0.138.0-py3-none-any.whl"
    sha256 "b6f54fd1bd72c80b0f899f172c61a600f6f7af9b43d4d772a018f35624048cb0"
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
    url "https://files.pythonhosted.org/packages/a5/42/cc4feea2945cb3051038f090c9b36bd5b8a9d7f5a894a506a8983e33fd1c/httptools-0.8.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "5931891fb7b441b8a3853cf1b85c82c903defce084dd5f6771ca46e31bf862c5"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end

  resource "jaraco-classes" do
    url "https://files.pythonhosted.org/packages/7f/66/b15ce62552d84bbfcec9a4873ab79d993a1dd4edb922cbfccae192bd5b5f/jaraco.classes-3.4.0-py3-none-any.whl"
    sha256 "f662826b6bed8cace05e7ff873ce0f9283b5c924470fe664fff1c2f00f581790"
  end

  resource "jaraco-context" do
    url "https://files.pythonhosted.org/packages/f2/58/bc8954bda5fcda97bd7c19be11b85f91973d67a706ed4a3aec33e7de22db/jaraco_context-6.1.2-py3-none-any.whl"
    sha256 "bf8150b79a2d5d91ae48629d8b427a8f7ba0e1097dd6202a9059f29a36379535"
  end

  resource "jaraco-functools" do
    url "https://files.pythonhosted.org/packages/96/9a/982e48afcffcd727a9144506720ffd4224b6b7e355c98641866f38b7c043/jaraco_functools-4.5.0-py3-none-any.whl"
    sha256 "79ce39246eddbde4b3a03b77ea5f0f7878dc669b166a66cf3fa8e266aa3fa2f4"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/01/84/c01099b59a285a1ebba64ae93f62bfa036675340fd1b0045ae65890a0442/jiter-0.15.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8c9004af7c8d67cce7f1aae1026fb55607f4aa600710d08ede3a3ce4aeefe7e0"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/81/db/e655086b7f3a705df045bf0933bdd9c2f79bb3c97bfef1384598bb79a217/keyring-25.7.0-py3-none-any.whl"
    sha256 "be4a0b195f149690c166e850609a477c532ddbfbaed96a404d4e43f8d5e2689f"
  end

  resource "kollabor-agent" do
    url "https://files.pythonhosted.org/packages/42/c7/a013fd7aa1b53765859c4b041514ccdabbc9b6ed1f80c3f833632f73ea1a/kollabor_agent-0.5.16-py3-none-any.whl"
    sha256 "4f642762cb3cd58f330b679ef6e9d2cc393673b8ba03f0ce1d3cf74e7ff3810a"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/29/ab/adf3819f2c415b26b158a237a421b76e6481619fd5b884a293a7b6b5f50d/kollabor_ai-0.5.16-py3-none-any.whl"
    sha256 "0532ed55e539a9afb62f3798d18a3c76a31ec66bfc83546576c6cdc63c020b51"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/47/34/57570acf080a5e0550b70dea43441be0982d4f511f95e47c0ccd30b967ef/kollabor_config-0.5.16-py3-none-any.whl"
    sha256 "eb437becf3de9804bd5137a15276c661adedda16d9d459c339a672b97677ddf9"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/d7/28/18da3650cc8bd58a8aa277c878b155143ca0790f67af32557805681727b2/kollabor_engine-0.5.16-py3-none-any.whl"
    sha256 "57059fc05e1ea034927f4c1ba6a5f7d5ca72b6263714b0e7e8364e1bbe34fc17"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/15/83/86b4cbbec09ba9e5c8bb7221a2bd9d885b1d48cdca0c7ccf20a16b965750/kollabor_events-0.5.16-py3-none-any.whl"
    sha256 "df7d099127124518d7ba473a5ef571c8c6e23ac192ac2d7a7ef04854d8720dc7"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/67/b2/3326f4cc3d5390eb62f9ae67ea229611bdf57b2f1c5ec264a86a2d8993e5/kollabor_plugins-0.5.16-py3-none-any.whl"
    sha256 "d9b7b0fb7e9867878cf7cd94c4361473c6792cc21e0b028153ca594ced1be56f"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/f0/d9/af50b03ba1e6cb0aac643d79f52e4652d0e58baad76e28b539604c965b7b/kollabor_rpc-0.5.16-py3-none-any.whl"
    sha256 "dda7c698249d8d94044b935847dc1e35b36ae02acf70687dfa36d4da3a197ade"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/a5/a8/c872bc081507ce2744e463a22c32c27e31b49fdeb6f83b9ff231b369ca0d/kollabor_tui-0.5.16-py3-none-any.whl"
    sha256 "80744c6dce5447ce1059ceeb3a35e6c6e1beb7c4b8b649a0ffca545daec7e546"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/38/5e/cbd814ee418470c14ed7f3babf4a7e79ab951c0b9a18c73a507105e54d2d/kollabor_webui-0.5.16-py3-none-any.whl"
    sha256 "5e21cc80b5ba652d691f6c6710a0a1eef9ddff3f3cfbd7aecb0e64f5cb092b93"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/e8/3d/1087453384dbde46a8c7f9356eead2c58be8a7bf156bca40243377c85715/more_itertools-11.1.0-py3-none-any.whl"
    sha256 "4b65538ae22f6fed0ce4874efd317463a7489796a0939fa66824dd542125a192"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/a9/65/1caac9d4cd32e8433908683446eebc953e82d22b03d10d41a5f0fefe991b/multidict-6.7.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "b0fa96985700739c4c7853a43c0b3e169360d6855780021bfc6d0f1ce7c123e7"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/a3/d2/ba767f4bbb30776c03d40906a2d3afad716a165ffa1771fc23b8992f7920/openai-2.43.0-py3-none-any.whl"
    sha256 "65a670b54fadf2268c9e1330133373c963eb779ee969e5cbad419ec2c21dce97"
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

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/19/95/6195171e385007300f0f5574592e467c568becce2d937a0b6804f218bc49/pydantic_core-2.46.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "962ccbab7b642487b1d8b7df90ef677e03134cf1fd8880bf698649b22a69371f"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/be/7b/4845bbf88e94586ec47a432da4e9107e3fc3ce37eb412b1398630a37f7dd/pynacl-1.6.2-cp38-abi3-macosx_10_10_universal2.whl"
    sha256 "c949ea47e4206af7c8f604b8278093b674f7c79ed0d4719cc836902bf4517465"
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
    url "https://files.pythonhosted.org/packages/78/75/c88d3f5dafd59c791da1ce27650d30bf5b70cbf1cbf01cd00e5f9e360915/sse_starlette-3.4.5-py3-none-any.whl"
    sha256 "e71bad53323f65573c3864a6c3bd0c1eb6e5f092b2e48082b0c35927d19ca296"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/ec/bb/2799cc2ede3ed41131f8975621e7213dfc7ef4acbbaadfa440f32500c370/starlette-1.3.1-py3-none-any.whl"
    sha256 "c7372aae11c3c3f26a42df7bd626cec2f47d03483d261d369516a615a53714c6"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/d8/8e/bb97bb0c71802080bfc8952937d174e49cfc50de5c951dd47b2496f0dcdb/tqdm-4.68.3-py3-none-any.whl"
    sha256 "39832cc2def2789a6f29df83f172db7416cea70052c0907a57801c5f2fdccb03"
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
    url "https://files.pythonhosted.org/packages/88/fa/e1388bbcf24ef3274f45c0c1c7b501fd14971037c1b6ee23610553307497/uvicorn-0.49.0-py3-none-any.whl"
    sha256 "ba3d14c3ee7e41c6c654c46c9eb489d33213cdd30aa1696eab1374337c13f68f"
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

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/29/b6/170e2b8d4e3bc30e6bfdcca53556537f5bf595e938632dfcb059311f3ff6/yarl-1.24.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8ae44649b00947634ab0dab2a374a638f52923a6e67083f2c156cd5cbd1a881d"
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
