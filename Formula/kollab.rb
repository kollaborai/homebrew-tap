# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/ed/ad/f4461d30540bfc937fd87c0d289dad88a26cc368873628ca210689989070/kollab-0.15.1-py3-none-any.whl"
  sha256 "90c9b7ecc7053e8193c346a0f7d73562a625d8f7d3ef4a50fc89453865fd5675"
  license "MIT"

  depends_on arch: :arm64
  depends_on "libsodium"
  depends_on "libyaml"
  depends_on "python@3.12"

  preserve_rpath

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/71/43/1947f06babed6b3f1d7f38b0c767f52df66bfb2bc10b468c4a7de9eceff2/aiohappyeyeballs-2.7.1-py3-none-any.whl"
    sha256 "9243213661e29250eb41368e5daa826fc017156c3b8a11440826b2e3ed376472"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/3f/bc/825c09b09962253a2103e4a88c04374ee939c0c8ea31c270daa0308efb07/aiohttp-3.14.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "bf734016932d68e1324cfb638cac7a0866a83933a33badf15e836a7e24efb8c0"
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
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/54/7d/16e5a096677b5e313ca80cd5e5170efa3ea44624a82bb111925522da64b1/cffi-2.1.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f81b3b8f3d4e343550fa4baa0e479bba9f2d29ce9c2e9b51d1ce1718d7442fcf"
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
    url "https://files.pythonhosted.org/packages/bd/f4/27e386913417ad32aae42bba48b0c0cce40e9ff2fba1a871ca2702c37324/fastapi-0.143.0-py3-none-any.whl"
    sha256 "3e9395fd35276425b61b516a31fdd7c77fe2af83e41b4da22e30696fb1304c5d"
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

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/09/ba/a4568248771ce81957bfb7cc600264a40fbcda092391ee1c415c50be4bea/httpcore2-2.13.1-py3-none-any.whl"
    sha256 "e1e05d4f25f7d7d496bfb96748f6f4b67657b03da069b3a68c36069f3db73d0a"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/da/ed/0916b8b7ebd1deeaf22acba71b68c57b4b6b69aa1918f3812dea208b4276/httptools-0.9.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f9ccc9884241efceb4547a92955d128574c864681f11b7ea3ecbde295fafbe8b"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/d8/9c/6fe8931fd9f381042a9e4c7d5a7b4cbf7016b252bec0c99a49fce42c3326/httpx2-2.13.1-py3-none-any.whl"
    sha256 "6dff50fabc270ee5fd25d845d0b078ed20564579744d6d962850975996d2f9a4"
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
    url "https://files.pythonhosted.org/packages/0e/5e/0de4c6f84ffefa6809ffc2d550b9a314365acf7e7ec9b6c7375d49047900/jiter-0.17.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "61aed66ee042b3b49ef85fdf75714234d055d89d8496ac1c6e47f89e7a30d5e4"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/81/db/e655086b7f3a705df045bf0933bdd9c2f79bb3c97bfef1384598bb79a217/keyring-25.7.0-py3-none-any.whl"
    sha256 "be4a0b195f149690c166e850609a477c532ddbfbaed96a404d4e43f8d5e2689f"
  end

  resource "kollabor-agent" do
    url "https://files.pythonhosted.org/packages/ef/70/e7ca8d5b3290c2ff2e687b748471b81a96a5781e3182958042d898c42da8/kollabor_agent-0.15.1-py3-none-any.whl"
    sha256 "f05b6b64d094435a9aa1c2a739abf185f206f18bbdf45a29766922ce250be5a4"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/15/52/19941088d528eda5322c618da76a67d8677dc7f1b86921cdc2c32097b6f9/kollabor_ai-0.15.1-py3-none-any.whl"
    sha256 "24977aab5bb6474600445f4564bcf5fab5deb091acb3b15a4cfafe53219ac097"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/9d/c9/52155b4c68d199cbf2e2c9ed5f56854b614ab7c6755836c257e77e78f409/kollabor_config-0.15.1-py3-none-any.whl"
    sha256 "264daeeab350641cc7819e3f384ddbeeb3d528fac8b45fd351a744c5a99ff390"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/82/1d/eb921c1e0f56c8ee980570a736bbf195430467faa64d350ee4437ec8f0c8/kollabor_engine-0.15.1-py3-none-any.whl"
    sha256 "634728f5bc498dfef52c2d88328567b58334994d6987503e81d538a620408fb0"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/1e/e5/257e751dfbcb02758fdba27a5187f228560b25919bfbd97af296b3b508b9/kollabor_events-0.15.1-py3-none-any.whl"
    sha256 "51223ce4f392406b045fb0becbdbda2bc5da85d9506976ce28fbc611da87bbe8"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/bb/c9/467eccfc82c05fe363b8de81f67816a88dd9df9eea4c1867cdb67cb450f5/kollabor_plugins-0.15.1-py3-none-any.whl"
    sha256 "a46ce73d0708418bb90e36f3cf984d87bab240888191b93b83f0031dffe6ba25"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/8e/d5/03d79eab05fdf8c77074ce8646fa302190dd49278f32ebd5e07c591c5632/kollabor_rpc-0.15.1-py3-none-any.whl"
    sha256 "8b2e710f835461b7c88778ace256d29501e489c0cb41c0843bac1c23349540f2"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/3f/11/7683e6cac164dd434db421fce10f65090eb0572eb0ac0bde2cf619cb7c97/kollabor_tui-0.15.1-py3-none-any.whl"
    sha256 "a446abfdb61be420d7f6db9607b4ce9b9f0609d47794d2e0162602797d2f8b1e"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/9f/fe/7a0f2a55e33573dcb5ae1a8378999f029c55c8d98f51468be2ccac9eb1b0/kollabor_webui-0.15.1-py3-none-any.whl"
    sha256 "f61fbff87354479492138186d41a125a5de5fc858039a65ddab2eae473fc590b"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/e8/3d/1087453384dbde46a8c7f9356eead2c58be8a7bf156bca40243377c85715/more_itertools-11.1.0-py3-none-any.whl"
    sha256 "4b65538ae22f6fed0ce4874efd317463a7489796a0939fa66824dd542125a192"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/36/eb/6ae44062466c26c8469ef43f2481a6a48d8cea0587b2d54514ec92e2adfd/multidict-6.9.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "6ed30be8918e18c8bed0a2e8b70639ecf02feb61ed00ca2e41cfcb2a50fa3f42"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/5b/4a/5c807ade1a86ab8accad20dc993ca7de5d1f7b2e78d4674c300c2e6a47b9/openai-3.28.0-py3-none-any.whl"
    sha256 "1ea40a084ffe2f9f16fd3bea6e870f757853b536b18d8e737c518ef849a2920c"
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
    url "https://files.pythonhosted.org/packages/25/88/1d7df7201750b37765ef2b23bc1c526c028dadde80afa0f57a118fc01182/propcache-0.5.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "87a3caecf8095e48dc72f84bfa42e23a848cf410cc9cc13031fba4869b706a21"
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
    url "https://files.pythonhosted.org/packages/2d/eb/9146591cc819d040475bf7f2be786710c7f7eb8083693bf859728da2ca9c/pydantic-2.14.0-py3-none-any.whl"
    sha256 "15fab1bea6f1dc5003b54fc2ecab230c1fd1dbade2acd4addc52d81e32416d4b"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/ef/7d/0a2f829e3e1d809393faab907e3d9307245cd6043ebf54fad439f72f0003/pydantic_core-2.50.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "0abe1b44d361b948404b6b2ed80be2583e0077340572e071afa6e0eda4e1de30"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/be/7b/4845bbf88e94586ec47a432da4e9107e3fc3ce37eb412b1398630a37f7dd/pynacl-1.6.2-cp38-abi3-macosx_10_10_universal2.whl"
    sha256 "c949ea47e4206af7c8f604b8278093b674f7c79ed0d4719cc836902bf4517465"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/60/d1/38f3a3405989a89ac18390803e70c6ad7c7760da4f9b83cbeca0c44a0c72/python_dotenv-1.2.4-py3-none-any.whl"
    sha256 "42269a8a5b3fd54ffa6f3d84b18abed50064717576b4ecf03dc4a55d8aa04fdc"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/e8/02/89e2ed7e85db6c93dfa9e8f691c5087df4e3551ab39081a4d7c6d1f90e05/redis-6.4.0-py3-none-any.whl"
    sha256 "f0544fa9604264e9464cdf4814e7d4830f74b165d52f2a330a760a88dd248b7f"
  end

  resource "rfc8785" do
    url "https://files.pythonhosted.org/packages/4d/78/119878110660b2ad709888c8a1614fce7e2fab39080ab960656dc8605bf6/rfc8785-0.1.4-py3-none-any.whl"
    sha256 "520d690b448ecf0703691c76e1a34a24ddcd4fc5bc41d589cb7c58ec651bcd48"
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
    url "https://files.pythonhosted.org/packages/4e/d6/1ec1b290f9e0fb067899b61e1d37a30c923068bad260b216dbe37a7d2967/starlette-1.7.0-py3-none-any.whl"
    sha256 "67f8e99895493dd2911a03f11314af6ceebeae4e704bb9f43dfc6a9db151c93e"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/19/97/56608b2249fe206a67cd573bc93cd9896e1efb9e98bce9c163bcdc704b88/truststore-0.10.4-py3-none-any.whl"
    sha256 "adaeaecf1cbb5f4de3b1959b42d41f6fab57b2b1666adb59e89cb0b53361d981"
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
    url "https://files.pythonhosted.org/packages/05/98/04e766a6de99e6f7f955ecb7829e8d5a557de3427cb85be2236de54dda0c/uvloop-0.23.0-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "93935ab27b6eaef4c3e5489aebc84284f0644592f7ab516df60ee1b27eaf5eb3"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/c7/8a/894799b485fe9473ad10422a0d9668e53fb78e3a2b5cc6061159572844ad/watchfiles-1.3.0-cp310-abi3-macosx_11_0_arm64.whl"
    sha256 "bbc1198edfdc90fda0600f825aa94150f428dfcbf8138746f55998e0e660d64c"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/3b/6e/82c78b595aee05be76a7ee78539323da1593c1848e4fef51c704c696568f/websockets-17.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "a81e19710d48da88653473b6b9c366d47e99fe4f58e37ce415be47966748f31f"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/be/dd/ee38aec8e09fdf957e50d4085453fbe202f56c6c3b4cf07b81cdb4f09ee9/yarl-1.25.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "e029648f9c951db30e98a7d7ec90835db88ec4b32820efe2a9bdc2287e032eb6"
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
    system formula_opt_libexec("python@3.12")/"bin/python", "-m", "pip", "--python=#{venv.root}/bin/python",
           "install",
           "--no-index", "--find-links=#{wheelhouse}", "--no-compile", "kollab==#{version}"
    bin.install_symlink libexec/"bin/kollab" => "kollab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kollab --version")
  end
end
