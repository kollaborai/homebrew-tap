# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/fd/fc/61316d72bc444c03da2092b70ad2c8dbdfdcce63ee6569e52b206714deee/kollab-0.19.0-py3-none-any.whl"
  sha256 "1e8529e8473859832fe9c3c751b71f2aeae8a35e200cdd63ee404dec68eeae9c"
  license "MIT"

  depends_on arch: :arm64
  depends_on "libsodium"
  depends_on "libyaml"
  depends_on "python@3.14"

  preserve_rpath

  resource "agent-client-protocol" do
    url "https://files.pythonhosted.org/packages/21/61/0a2186c8ca53cf464767d4c4fb7fd9e23f48ce4547c2fa0d1c83a4d52410/agent_client_protocol-0.12.1-py3-none-any.whl"
    sha256 "aaf3cc301ed87d9e2c4ccb91adfe1cd58784355f6ce7e513f50e7ca2391862ef"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/71/43/1947f06babed6b3f1d7f38b0c767f52df66bfb2bc10b468c4a7de9eceff2/aiohappyeyeballs-2.7.1-py3-none-any.whl"
    sha256 "9243213661e29250eb41368e5daa826fc017156c3b8a11440826b2e3ed376472"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/ce/b5/05b8ac39a76ff4bca89f42a4c2471560c71f894ff6e4bc16158c951874e3/aiohttp-3.14.5-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "c32e26310cc10e547f53cd13d39a369034f69dcb7d749d5cb0e5f67bc196b6ba"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/fb/76/641ae371508676492379f16e2fa48f4e2c11741bd63c48be4b12a6b09cba/aiosignal-1.4.0-py3-none-any.whl"
    sha256 "053243f8b92b990551949e63930a839ff0cf0b0ebbe0597b0f3fb19e1a0fe82e"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/3e/30/e900b21425a860e195f32e37657aa1f7c7f2b1bfb26f03ca209b90933c06/annotated_doc-0.0.5-py3-none-any.whl"
    sha256 "117bac03a25ede5df5440e855b32d556049ca169ead221505badf432fed4b101"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/16/7757fb84c819accc7d7e9af5291b261e4abb8627ee040f99e7d35ef2457a/anyio-4.16.0-py3-none-any.whl"
    sha256 "c66ae634e0b8228396b801741beb3294326d4b6102f7bba4041c0dfb58c29026"
  end

  resource "assistant-stream" do
    url "https://files.pythonhosted.org/packages/9e/fe/d8eaddc7365d606b888eb38cbfd311ae8eb0d6d0a1e6c64105698f47ad52/assistant_stream-0.0.34-py3-none-any.whl"
    sha256 "4b847a37eedee3f8defaa4d69ac33b03381fe2edc812db9068a06161123c3c51"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/32/d1/a3652fe2c19134d0d15922177821d863cbd7e842d53a21bbe7e8e3a1b5ac/certifi-2026.10.23-py3-none-any.whl"
    sha256 "e9b54de76e530bb6cf0ccd036787103acb58fd42ba930ea8bf948ddbaa2f61d1"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/b3/a9/9db617d05d7367c1ad0ab00b3aa6e6f9281edd689b4ee9ea0e5a84e89c97/cffi-2.1.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "661c298b4821edebead0c91edd2b00374d67ad7c5a1f7a91d4442633b79d6a72"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/58/50/6c0d534c5f134586a8e1ba4e330569e32f057e33372ae556463212fb4cd3/click-8.5.0-py3-none-any.whl"
    sha256 "255bc9599cf7748b4b1a446ccc735421bd08a2ae529a8b88597d3de5664ee360"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/e5/56/d194340cc4a57535e82e1bee9e89667ac4b7c13b5d3f59686deae3094dd5/cryptography-50.0.2-cp311-abi3-macosx_11_0_arm64.whl"
    sha256 "fa8f5efb344d6908a1ce62f4a24e2e5780f825d6f53f5f50ec5ffacac72936cb"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/61/55/f90405bbbbd3dd8f788e92cec2d39964f5c09783f0570fc35f3bb3381485/dnspython-2.9.1-py3-none-any.whl"
    sha256 "7c81caf8de1ed57b8cfc7e0ad4f528a0b8ceace473c7eb946df195dc9def751f"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/b4/4f/3f2c25c9b43970b5e9a08beb5e04776247edea684ddc0930f4f02f0bb6cb/fastapi-0.162.0-py3-none-any.whl"
    sha256 "3785963de305dd09912426cb81f2d230fce98ab3521cdfe97265c8d14983128c"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/a1/93/72b1736d68f03fda5fdf0f2180fb6caaae3894f1b854d006ac61ecc727ee/frozenlist-1.8.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "4970ece02dbc8c3a92fcc5228e36a3e933a01a999f7094ff7c23fbd2beeaa67c"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/af/c2/ce417c397afa5181f0e3c6ff01a4d01639414e1adef08730d97571297151/httpcore2-2.16.0-py3-none-any.whl"
    sha256 "5c4358319f2602d984ad93182c9fee5160f22e9da7babdda870a5e7c4e2dc34f"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/31/39/0965023968452245ece67b161adbf7c5652f8d0697ac69312f9d21849411/httptools-0.9.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "1a4050a651e1f2faf05eb028ce9f2168abbcee9e24b209f5c1f2eb96d8c569e4"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/d2/fd/6668e5aec43ab844de6fc74927e155a3b37bf40d7c3790e49fc0406b6578/httpx_sse-0.4.3-py3-none-any.whl"
    sha256 "0ac1c9fe3c0afad2e0ebb25a934a59f4c7823b60792691f779fad2c5568830fc"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/7b/3d/2e4bc4fd1ef9770871669adb348d612a6e4786b303a23f9935b81c48dd60/httpx2-2.16.0-py3-none-any.whl"
    sha256 "fd2c5d7909e8d86fe92d53020c310ca0e4e431b838c207c5754b9bbf0308d49a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/58/a2/bb081bab032533a855d44de1d56f8e8426114ff1ba5d1f07a438a0a654f8/idna-3.20-py3-none-any.whl"
    sha256 "ab7ae7122974553370f0bdb919e1a960b2cd1bc1ef0276416d896db81c14582c"
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
    url "https://files.pythonhosted.org/packages/02/36/ecc85bc96c273dc8a11273ed4782272975e6338d4a3e9228621175edf0e3/jaraco_functools-4.6.0-py3-none-any.whl"
    sha256 "99e3dc0060c5cbe8fcd1cdb36258e2a65ca40f1566b2033b12abb1bb44dd3c30"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/b2/a3/e137168c9c44d18eff0376253da9f1e9234d0239e0ee230d2fee6cea8e55/jeepney-0.9.0-py3-none-any.whl"
    sha256 "97e5714520c16fc0a45695e5365a2e11b81ea79bba796e26f9f1d178cb182683"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/21/f6/d9cfa2bf2a969fb8e002fb8d8a6cd98d49a6248cb7e4ffe2247766af13fb/jiter-0.18.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "0390fa550fcafbf69fb97ccb287bd71192f90410a1c7dd600ca4000aa9aabcf2"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/81/db/e655086b7f3a705df045bf0933bdd9c2f79bb3c97bfef1384598bb79a217/keyring-25.7.0-py3-none-any.whl"
    sha256 "be4a0b195f149690c166e850609a477c532ddbfbaed96a404d4e43f8d5e2689f"
  end

  resource "kollabor-agent" do
    url "https://files.pythonhosted.org/packages/32/e4/cfbc9480af1def7abe3b4e9238eb79c2f97ec064eac2fa36bc4991831d75/kollabor_agent-0.19.0-py3-none-any.whl"
    sha256 "84b3d1d8acec2c434efc9fe548846aa8a662d39c6162c586276f4c3999eabc88"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/b4/41/7fc832dc3f4d325147557da127b8f2534b09ade3fceb6bd18210a559b17e/kollabor_ai-0.19.0-py3-none-any.whl"
    sha256 "52781d86d57d69d459f2048916acd96d35b7fe8663955a48923b4396c93ac195"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/ed/0c/8d7c43f35e265be55d2d11431ab12c01973c06efab32d7222f66231d92c3/kollabor_config-0.19.0-py3-none-any.whl"
    sha256 "1b7ef9a07ed855d17946ef7d3707b7f0ce06e4f1395f8a05f5e66d74925da94d"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/41/66/52ea357e0e869ffbe2de063b7846eee36385bcd520488565c8f7216fc48d/kollabor_engine-0.19.0-py3-none-any.whl"
    sha256 "26b4192b192d376f246c665b80dd833a5ca940de17856744a9f6067a1ec6c2f3"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/ff/6a/802695c1730dade7835acf703c240b82b5f8163dd1d259862efbc3fbb985/kollabor_events-0.19.0-py3-none-any.whl"
    sha256 "6c6e221b8842aa30874065e1d2d3e7e54c4e857ffe861bdd6c8ea98624e0a468"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/dd/30/407f16c433b51e76f177732c1411bb5f7009028bf3b67c0871afb6ed758a/kollabor_plugins-0.19.0-py3-none-any.whl"
    sha256 "cc32ce46cef91c4c37e77b6c4ea91a5282275e633e534768666120d9648b41af"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/9b/46/60523c81af8265488dc2974504a3b4161d8e703e3d8754288fac0e562595/kollabor_rpc-0.19.0-py3-none-any.whl"
    sha256 "511f8c01a4c8cb17e3421649645974a7a3b25081ce0cf85714ba4e407871ce1b"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/61/f2/2be566b6ea7a7445982e519a38b1eaffcfe56c6090689155c64f041c0fd2/kollabor_tui-0.19.0-py3-none-any.whl"
    sha256 "566af096875ac5379747852073daec0a41067f5c4695fce879340b07b5f506c5"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/2f/82/e5f73bd7a5e7d52dd3e7f8d7778308c6aa70979262364361c71c2b4b80f5/kollabor_webui-0.19.0-py3-none-any.whl"
    sha256 "b4e3fc941df3d9adea497d802b894f2dce2f0bb6ab6534b64015e5671553d797"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/f5/f4/e58bc33317c92a0203664daaf00bf6f41166cc0149e5d6870a03f7cd004a/mcp-1.30.0-py3-none-any.whl"
    sha256 "666edb5009503e1047c9d60346a756f94b261f05cc2625f23d41c728ffc484d0"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/5d/57/3c4b1c6f2e0cc29ba023802458ea3d2a996f87085559e4a5f2192d549532/more_itertools-11.2.1-py3-none-any.whl"
    sha256 "35a7377edd1dd6608dcb2cdf534ded55ea32d49448875ad042cd3f879fb1ded0"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/8e/3f/c014da364e2f9707945f921864a6b5c615e88a0ec0518c7999b3b2092405/multidict-7.2.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "cadd02ca804d6ebe799a7af19197d9730094fe2cc74b70eb4f374f4b8c1886c1"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/26/f4/d00b8d6205916e7c89711d86cf70c2d930fc069c596cb2bb47884bc67392/openai-3.43.0-py3-none-any.whl"
    sha256 "d8dfc6a187b587769f56fc00c7b8d2cb7715e65583d587eee0f0a99c6cf49d12"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/a9/2d/610db864d7513158cebb8f36cc88e67e73bd6c7aa1905ef18d89e1281c81/opentelemetry_api-1.45.2-py3-none-any.whl"
    sha256 "2cbd737377e710ee740d261c94e93fa0f08e6d037c18f17513cc0a2d94479a34"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/e2/22/b533b493d7025456f44518b33e53e000021a20fe7c27b88cf3d341df7186/propcache-0.5.4-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "1d759d05634f1b038fb625a66662a8c85e5a8fec912da381b5149ddac107482b"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/80/c4/f5af4c1ca8c1eeb2e92ccca14ce8effdeec651d5ab6053c589b074eda6e1/psutil-7.2.2-cp36-abi3-macosx_11_0_arm64.whl"
    sha256 "1a7b04c10f32cc88ab39cbf606e117fd74721c831c98a27dc04578deb0c16979"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/b6/ae/315bbeee126a769cbde43cf4908acb4b40408d8bf8bbf334dd7368d8dadf/pycparser-3.12-py3-none-any.whl"
    sha256 "a076f3f489b39b43ed13563a1dafe42447445bec2e294154ec5c57fcdda4c85e"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/97/01/c71a71258b58659c72504e5fd65b451f6e36e34dc931d0b237ded213c814/pydantic-2.14.2-py3-none-any.whl"
    sha256 "7efbf7507b937931cd32a5755acb00ea1cf5ccb1d4e8067a5850d5069e382118"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/db/68/315701095f25687938ab79d263a6d939337456c2840fe69038fd38000338/pydantic_core-2.50.2-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "6ffb4dce3ecb2cd563aa30f9eb5088a1cf1f4f688b90cbb374fa96e49fc50b02"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/39/88/4131c51ff87b7cd7f82a1194d0c0a2b7ca68c72d9da04c3b7e69ab91a79f/pydantic_settings-2.16.2-py3-none-any.whl"
    sha256 "8d523e5c129b097686bde019bd6109bff53f4c8c3f63f1ddf9933ffa42e5ab4f"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/50/ca/44de4e75f8aadc457f0634be3b542815078ded46dca30efb960edeecad6e/pyjwt-2.15.1-py3-none-any.whl"
    sha256 "42d59d631f7768a1028a64c7ff581a9bf7519804daf91fc5b6c56e30eec5e193"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/be/7b/4845bbf88e94586ec47a432da4e9107e3fc3ce37eb412b1398630a37f7dd/pynacl-1.6.2-cp38-abi3-macosx_10_10_universal2.whl"
    sha256 "c949ea47e4206af7c8f604b8278093b674f7c79ed0d4719cc836902bf4517465"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/60/d1/38f3a3405989a89ac18390803e70c6ad7c7760da4f9b83cbeca0c44a0c72/python_dotenv-1.2.4-py3-none-any.whl"
    sha256 "42269a8a5b3fd54ffa6f3d84b18abed50064717576b4ecf03dc4a55d8aa04fdc"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/dd/1b/6b1b4164ec734cac911460ab599bfbe46afedd42c5c9627fe4235942c314/python_multipart-0.0.33-py3-none-any.whl"
    sha256 "8f16c07b36add9da6b2ee87d3efcaf0a45a6de9c3d0a5dd94e9ccf7675a7bc45"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/bd/9c/4d95bb87eb2063d20db7b60faa3840c1b18025517ae857371c4dd55a6b3a/pyyaml-6.0.3-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "34d5fcd24b8445fadc33f9cf348c1047101756fd760b4dacb5c3e99755703310"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/e8/02/89e2ed7e85db6c93dfa9e8f691c5087df4e3551ab39081a4d7c6d1f90e05/redis-6.4.0-py3-none-any.whl"
    sha256 "f0544fa9604264e9464cdf4814e7d4830f74b165d52f2a330a760a88dd248b7f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "rfc8785" do
    url "https://files.pythonhosted.org/packages/4d/78/119878110660b2ad709888c8a1614fce7e2fab39080ab960656dc8605bf6/rfc8785-0.1.4-py3-none-any.whl"
    sha256 "520d690b448ecf0703691c76e1a34a24ddcd4fc5bc41d589cb7c58ec651bcd48"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/04/37/b751de2b59b0197a1d92a5dd491de88e8a5e928c2e6562581974f1e85263/rpds_py-2026.9.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "3f0e9ac28fc067d4d34b88ae43c48e9489455c97fee9633d851f7eeed5a05d35"
  end

  resource "secretstorage" do
    url "https://files.pythonhosted.org/packages/b7/46/f5af3402b579fd5e11573ce652019a67074317e18c1935cc0b4ba9b35552/secretstorage-3.5.0-py3-none-any.whl"
    sha256 "0ce65888c0725fcb2c5bc0fdb8e5438eece02c523557ea40ce0703c266248137"
  end

  resource "segno" do
    url "https://files.pythonhosted.org/packages/d6/02/12c73fd423eb9577b97fc1924966b929eff7074ae6b2e15dd3d30cb9e4ae/segno-1.6.6-py3-none-any.whl"
    sha256 "28c7d081ed0cf935e0411293a465efd4d500704072cdb039778a2ab8736190c7"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/cf/49/35053078cdfcf639237e8bee6dc6f34f1b3a3cc8d01800a1e213e1660ff6/sse_starlette-3.6.0-py3-none-any.whl"
    sha256 "e4dfa4d237d2712cb2b4d4918eda9b457cd6b44bbecdc838af75de836565bafd"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/88/2e/947cfe02def9371c07cd5bf5b6b61c829e9aecb9904db02a66cfafbc1eec/starlette-1.10.0-py3-none-any.whl"
    sha256 "478c0ab3b4ced6e82719849c118fa406f0278a3499c1a898cd15cd31bdc38ce4"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/51/e9/3a7820be2bb0fe53b6bc9c3be26d3d1158004e4c3ab953aa6840b955b1e9/truststore-0.10.5-py3-none-any.whl"
    sha256 "9aaaedaefaf06d8b206278cf8b5012bc897f485a874503501e12d776df78951c"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/67/81/4add07e5172b7ac40d8ed5ff580409a7801a4fe26d529bdd915401dabfbe/typing_inspection-0.4.4-py3-none-any.whl"
    sha256 "65b8397ba37ccbce054456aaccddfc91e6e3083c92824df348d96ca832f3f147"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/38/0c/b54a4fdd7f90a3af8b02ebc9ce6712c2c208b7926a2f7bad95c33ebbe943/uvicorn-0.54.0-py3-none-any.whl"
    sha256 "505bdb0f318731d45f1f712071fc781a8981f6847a31c902c9f5e652d4f67faf"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/4e/a4/00e85345871c59c834a23c136c1771205856028ecc8ba940b3951178e59b/uvloop-0.23.0-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "b90397a50ad6332ed3e459c648ac20d182cce24a557354363ad85fc9ea4a17cd"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/c7/8a/894799b485fe9473ad10422a0d9668e53fb78e3a2b5cc6061159572844ad/watchfiles-1.3.0-cp310-abi3-macosx_11_0_arm64.whl"
    sha256 "bbc1198edfdc90fda0600f825aa94150f428dfcbf8138746f55998e0e660d64c"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/df/73/eb8544367c13cd87df39d41b74853741fb7182e2a4bb659ad7d36f9066c8/websockets-17.4-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "a0457561e8a87a6a3b509e21c35084d7d207ced262139de3f738e9676a476bbd"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/6e/bb/dda344765ffd3430afe1a1c66c866a57fae67786537d4f14607df6505ac1/yarl-1.25.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "7a5c3115595995779ee21f2567035793911c3802a43c74f3fbb0314929ec67ac"
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

    venv = virtualenv_create(libexec, "python3.14", system_site_packages: false)
    system formula_opt_libexec("python@3.14")/"bin/python", "-m", "pip", "--python=#{venv.root}/bin/python",
           "install",
           "--no-index", "--find-links=#{wheelhouse}", "--no-compile", "kollab==#{version}"
    bin.install_symlink libexec/"bin/kollab" => "kollab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kollab --version")
  end
end
