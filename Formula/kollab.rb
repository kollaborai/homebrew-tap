# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/7d/75/3c5287644588a3fce040302b3ace21a00942e643fd52035b22e2151765df/kollab-0.16.7-py3-none-any.whl"
  sha256 "003cca745f25a7a821652d83f56bdba278cd74c12afccdb2280bef4a2cef7d9c"
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
    url "https://files.pythonhosted.org/packages/12/b8/4bd346e22b28902df4d651910f5242c28d84e4a5c2435ca5c3f797ed7e2e/anyio-4.15.1-py3-none-any.whl"
    sha256 "6152fdbbf9a77fdec97731721bebf7c4c44f7c29b424b0065826173efc7ed101"
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
    url "https://files.pythonhosted.org/packages/08/ba/95dd616042484f7c83a06974388b37b837732740ee70bc5dc715b5fcd55a/certifi-2026.10.18-py3-none-any.whl"
    sha256 "73191c47aaa79da394e8fee2dbc2ec827432cab56311122c9e47abf79e390f62"
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
    url "https://files.pythonhosted.org/packages/10/02/cdcc9b7c051786a103c3b09e1003a82fa0c66bcb91ffbdabcfbf7b4163b9/dnspython-2.9.0-py3-none-any.whl"
    sha256 "9a4aedb833c3c1b49214d04d44d3032ab7a9135f7c1d29a549b4ff78fd82fda9"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/eb/7d/f96d4bd930d52f299583ea55266990480ec0db46d2c498df716a98474e87/fastapi-0.146.0-py3-none-any.whl"
    sha256 "0eb9985a7d5bb11ce9a962d4b65e0cf1a2e13d6aca2e14da57bc526370e26748"
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
    url "https://files.pythonhosted.org/packages/02/06/a8d6a8f90d11b76d9086242b6bb0ee4b503473bfc8be34c2d5b067275c22/httpcore2-2.14.0-py3-none-any.whl"
    sha256 "4c4f64f4b544afeb778c42c0ffb5941b29e671157e90ed3f6dc787c4bca90cd1"
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
    url "https://files.pythonhosted.org/packages/69/5a/469616aa8c2cbb0bb9dd67a3c18d07c01ab604cc0b236ee1c47d260c7f6e/httpx2-2.14.0-py3-none-any.whl"
    sha256 "9d20c13a10bae1773a0be3b0f1e5beeb4bdd549bc3a2ba18efa32897c65403e4"
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
    url "https://files.pythonhosted.org/packages/ea/81/67b58647560bc82a4490d722caa8561d7a86a9f45d4fa620b7e5fe282c7a/jiter-0.17.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "0619d806e260ecf0c2a64521942c94af5d547c9ec99b55ae4f51b538b5576a76"
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
    url "https://files.pythonhosted.org/packages/d0/b0/eb40aa1f5bb3f413fe496910a5a30689b9f1da242e62b3576b1532539772/kollabor_agent-0.16.7-py3-none-any.whl"
    sha256 "96e2b8a8f019ba1ae14c43c476865d20d3dbb236429d4587e810ad9bfca90e71"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/c2/ff/d450c12ec184caa791956d1b5c6cad9dffd76f22cd69258205bdf633b487/kollabor_ai-0.16.7-py3-none-any.whl"
    sha256 "9b5486b794d56f84073510c20c963cff70bdadcecfaa4d913856a1f8126dc657"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/ad/a1/1406a51063b79fcf2c2b83416709f91903ca822505c0602baec3f80a9396/kollabor_config-0.16.7-py3-none-any.whl"
    sha256 "60297e281b72b3e458fd77f3378c67e42a22e4f8c2e40784909aabe2a2d45b98"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/b6/ff/1da528e1b15827c4979de63f9c195264a8481cd38f0ba376f67da2c3d645/kollabor_engine-0.16.7-py3-none-any.whl"
    sha256 "54097141433b2076ef203755b26fa6498c731f4c241267fc0e41b11f9ce36580"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/15/31/bc1c6bdbdc200f3d0705757c4015c3a713bc1bc462c40f697c79da1d1f25/kollabor_events-0.16.7-py3-none-any.whl"
    sha256 "7fe99a541b49dfabc694a5ecc5b215d2d53b1ad18fdf6af993fc73399ebbe83e"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/b1/c3/d777a8418577122a8b5c004506ff1c702a6a16b32b8c9de4549c08cfc1b4/kollabor_plugins-0.16.7-py3-none-any.whl"
    sha256 "2015033d87bd586a3101e8b4171a71004aecae5e6da50d80474b772a26689cd6"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/d6/de/f9c613ba1a2cb1ec0c62c78dea39452a922fc1f305266201a406ef7d01b7/kollabor_rpc-0.16.7-py3-none-any.whl"
    sha256 "76fddc1df030f5a278d6d25f83aebef6f1dea115afa7fa67954c590f4f3d9aad"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/4e/29/d4b016449bd5fcd97b882579e6bb7a347878501a2df1e030affcc342b56e/kollabor_tui-0.16.7-py3-none-any.whl"
    sha256 "9d315709c8c5b72ced8140f71863af1e68d2deb1a356cb71957795af0843ab07"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/f1/3a/71e0bede5ff652a83ea8b0911c442ce3fb9348b82147e4683d8031a540e2/kollabor_webui-0.16.7-py3-none-any.whl"
    sha256 "b611ecf47ae9e6ab9f28c7d58fd4d19d5936f9d6b37bc926cb0e0c99974f0d1a"
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
    url "https://files.pythonhosted.org/packages/6b/e3/ff58ecad5161baa98dec05716e2745449446f2424a9c727464bf452f7fd1/multidict-7.1.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "33376418ab2846b931a72b36cfa16810befc4f49485d0b3f4dc054a4d6d00038"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/22/7b/6d7e70f0762d1b286051bd7cb2fd0c364c1830d0f8826738673aeec05c2b/openai-3.35.1-py3-none-any.whl"
    sha256 "264fd0fafc889021f526b7c1e5a2df5ca3e8dea874738ecd31da666434f25967"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/1e/41/f7dcf80b81ee8e71c1a2b59f14208bc723edbd89ed027a73b175abf6348e/opentelemetry_api-1.45.1-py3-none-any.whl"
    sha256 "b31553efa588ae44bc306f863c785c5333a9ecc091248c6ee68b4b6c87fdedfb"
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
    url "https://files.pythonhosted.org/packages/90/11/0e6f11117525ff0eec40ebac3d313376f102df93ca44ad9e893ee85e4f89/pycparser-3.11-py3-none-any.whl"
    sha256 "51d5a8ba2be0bbe440b99d2112604c95bbbc3c2748a64260186c541e1729cd80"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/35/ea/a56b9fe5066f3537b7882f77e9c5dfb26d8c2eefdaed9b5fc73d57b4dc22/pydantic-2.14.1-py3-none-any.whl"
    sha256 "9195d967ec791692a04438115466764fb8b9a27b31f14a760437694f40d6b454"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/94/40/15c06410c9b7b8da5805d27b64e09bd3f900e986728106db2689dbc51513/pydantic_core-2.50.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "4df197990c15b5a37c5a277d131d9f2c67de6133f2e5dafd80d9bba4b99f46f9"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/53/f4/b987bf8c51e5b19a95fa66d1ee596074141e085d9c2ddf97920803c7029b/pydantic_settings-2.16.0-py3-none-any.whl"
    sha256 "7e73acf7f61936a15e5a3b6eedaea29f133357faf7272f2607ba479b049dd7f2"
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
    url "https://files.pythonhosted.org/packages/e1/04/e8135ebd1ad02c56ec633277529b2602ff99ff634be76cdba5744cf554fd/python_multipart-0.0.32-py3-none-any.whl"
    sha256 "ff6d3f776f16878c894e52e107296ffc890e913c611b1a4ec6c44e2821fe2e23"
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

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/be/e4/cdda14023c316d71493bc54fdffc3dd006631b88866145c9d3cc33e0f1df/sse_starlette-3.5.0-py3-none-any.whl"
    sha256 "3e6e1070df3f0f5d9cea81496de92dbb72f6721871d99748ece67441dd8b7997"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/f3/93/181df62699d9b5aca1d87e5cfda131dac87e3cdaebf668662f7206ca3470/starlette-1.9.0-py3-none-any.whl"
    sha256 "fd3f159936e882d06c1108f84688f7cda2cf85fc6a592a50edbd175e882c2ddc"
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
    url "https://files.pythonhosted.org/packages/5c/09/1abf942723c0001d9c2fca1551907dade6304517b982b0bf10bba107fa81/websockets-17.2-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "06e46da092bca3a52e98f0458c66b247993ce501a07cd09c858be3296511ab7d"
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
