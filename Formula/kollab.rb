# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/a3/76/b2b4c06ffdb83fe52aeac94f55d8372b82cb9a901d9161d0a899510a4cc1/kollab-0.6.0-py3-none-any.whl"
  sha256 "67b280010d913811ded6d0d05462cb80430edcd134b819f9b84d2c57414ae259"
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
    url "https://files.pythonhosted.org/packages/30/07/4bbc222cc8dbe31d4c3e8a5baad2286e4d42026ac0c570027b89afce6344/aiohttp-3.14.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "617105e2c3018ee38d0c8ce5ee3c84f621a6d8b9f723202aacaff28449ca91ee"
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
    url "https://files.pythonhosted.org/packages/da/35/f2287558c17e29fafc8ef3daf819bb9834061cfa43bff8014f7df7f63bdc/anyio-4.14.2-py3-none-any.whl"
    sha256 "9f505dda5ac9f0c8309b5e8bd445a8c2bf7246f3ce950121e45ea15bc41d1494"
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
    url "https://files.pythonhosted.org/packages/4b/92/e7bb136ad6b5352603732cf907ef862ca103f20f2031c1735a46300c20c9/cffi-2.1.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "78474632761faa0fb96f30b1c928c84ebcf68713cbb80d15bab09dfe61640fde"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/fb/e2/79c688af8b210d232694e31e59da9f6ec747bae31c3f5946e4e9b98860d5/click-8.4.2-py3-none-any.whl"
    sha256 "e6f9f66136c816745b9d65817da91d61d957fb16e02e4dcd0552553c5a197b76"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/c5/5c/59086b4aac5e879d38ddbcf74e4be7ade89cebc3eb199a55da998c3bb46a/cryptography-50.0.0-cp311-abi3-macosx_11_0_arm64.whl"
    sha256 "031e2d5dd4bb9caa3ca9c82e5a197fd8ae680232cee62603d1a813f3f07e3d03"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/cb/03/10388a42375ee7e4ac9b94eb2c5c569c8b5795e377e701c9ac3ad63de890/fastapi-0.141.1-py3-none-any.whl"
    sha256 "bfb91aa2d334c61cb35ba9a116fc123b3d3df31640b801cf57a7a78ec3f603b3"
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
    url "https://files.pythonhosted.org/packages/02/36/ecc85bc96c273dc8a11273ed4782272975e6338d4a3e9228621175edf0e3/jaraco_functools-4.6.0-py3-none-any.whl"
    sha256 "99e3dc0060c5cbe8fcd1cdb36258e2a65ca40f1566b2033b12abb1bb44dd3c30"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/b2/a3/e137168c9c44d18eff0376253da9f1e9234d0239e0ee230d2fee6cea8e55/jeepney-0.9.0-py3-none-any.whl"
    sha256 "97e5714520c16fc0a45695e5365a2e11b81ea79bba796e26f9f1d178cb182683"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/94/2e/34957c2c1b661c252ba9bcc60ae0bddc27e0f7202c6073326a13c5390eec/jiter-0.16.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "5af7780e4a26bd7d0d989592bf9ef12ebf806b74ab709223ecca37c749872ea9"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/81/db/e655086b7f3a705df045bf0933bdd9c2f79bb3c97bfef1384598bb79a217/keyring-25.7.0-py3-none-any.whl"
    sha256 "be4a0b195f149690c166e850609a477c532ddbfbaed96a404d4e43f8d5e2689f"
  end

  resource "kollabor-agent" do
    url "https://files.pythonhosted.org/packages/75/d6/937dcf07c968b38df979a58f33c9b22710c53accd2d8a64b56c5cb503f69/kollabor_agent-0.6.0-py3-none-any.whl"
    sha256 "ff5f23f74ca72eefff8f399db78f1abe0b948681d69ff7489fce9e437a0fbab2"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/da/82/a7c95969ae3fabc7c2e97aec99688c5ee4fdf60ccc0dc27ff8d6dd67eb31/kollabor_ai-0.6.0-py3-none-any.whl"
    sha256 "3176759e0c009beafc039e0e1328e1dc59655eb69621b6bcbe0613e8687569ee"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/28/5c/c2acad292b5615a6684688a8813df2f6d8ad4e52c0c21b205d17ba57e6af/kollabor_config-0.6.0-py3-none-any.whl"
    sha256 "35e3b70db9ec6b17d04749d4e1e5fbdbdc9345ca77871ecfea4945cb6b706186"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/5c/78/b69104fcd8edb70a7589387e2cf59d2613212c7d8eb0a139dced7fb6d24a/kollabor_engine-0.6.0-py3-none-any.whl"
    sha256 "24cddf4b24ab640637dcc31a8c2ca9e586a1536f32226056d68441a318732360"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/e7/9a/43ffe237c78f1b40e7bbccdff599e570a26795b0cee65eaeebe8f263a2a5/kollabor_events-0.6.0-py3-none-any.whl"
    sha256 "0e3e7c1f3ae5746a57f6711b1af5d609ba81307d63ccde7821016c157a3733cf"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/8e/a3/7edf83c9ad8871c5ef57ecd6b68b5be9c8d95cded7a4fe29fcfb3843b568/kollabor_plugins-0.6.0-py3-none-any.whl"
    sha256 "845e8bcf802647f0868bea9765e55818d2f0f7cec4dbed37b83a91bb6182af32"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/81/10/4e4b4d97b421827e228801a9a95178284edfd121837e736c009080150fb8/kollabor_rpc-0.6.0-py3-none-any.whl"
    sha256 "1fb6d539aaebeef40cec1b156c6160aefa2c2a8b6ab5bcdfaad6f45ec7429752"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/af/d8/1b101942361063bc26008a2d0d3314f116901e8f1876b2554e87dbf509a7/kollabor_tui-0.6.0-py3-none-any.whl"
    sha256 "8932e05ca01c0b807e12287a5aceed1aa08a8ed795ccf4f8623c577df4fc0c7e"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/03/08/e4a2d749821b4889a63821eb553ce3cc9bbfc5f9be5022dfa5fe31c536b7/kollabor_webui-0.6.0-py3-none-any.whl"
    sha256 "6f9b961af46dbfceb68c82e99d1bb560753d078a9baae474de2f8e735c2e47f1"
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
    url "https://files.pythonhosted.org/packages/a1/ac/ceb40c995df49533ad4dcff6c37f0d85cf14446a212363fc9d2f927e60b4/openai-2.52.0-py3-none-any.whl"
    sha256 "f97e231d9a8fa69ab55897df1080f02d99913fb0a30e3ee56ea16a1eb6c2d434"
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

  resource "secretstorage" do
    url "https://files.pythonhosted.org/packages/b7/46/f5af3402b579fd5e11573ce652019a67074317e18c1935cc0b4ba9b35552/secretstorage-3.5.0-py3-none-any.whl"
    sha256 "0ce65888c0725fcb2c5bc0fdb8e5438eece02c523557ea40ce0703c266248137"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/49/36/e10c1d1b7ca881d2625db2ec28508578499187bb1c389952c398474e1834/sse_starlette-3.4.6-py3-none-any.whl"
    sha256 "56217ab4c9a9f9c5db7b21e08732d3e7c2b807f45231ad23de0551a24c4a41f6"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/ec/bb/2799cc2ede3ed41131f8975621e7213dfc7ef4acbbaadfa440f32500c370/starlette-1.3.1-py3-none-any.whl"
    sha256 "c7372aae11c3c3f26a42df7bd626cec2f47d03483d261d369516a615a53714c6"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f9/1c/01bfd571a64e7f270e6bab5e33777debe0edc56759233ce84f27dec92d14/tqdm-4.70.0-py3-none-any.whl"
    sha256 "7f585706bfddbdebf89daac705b2dfcc16890130727d3197ca62c732b4310953"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/39/e6/b5c0630ace9757232aec07112be8146b812787db52141ff9d50674aa7634/uvicorn-0.52.0-py3-none-any.whl"
    sha256 "3d887809810b89ed33501bcf0a9aba469b06ecd608158efce04bd6b48d8c9b08"
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
    url "https://files.pythonhosted.org/packages/d9/82/123660edc759c225626b3b91952c7625f85c77a8362acbc35a4623120f7d/websockets-17.0.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "c23e532c8a2325a1e7486de8763a60dc43e83f01bcaeca07e3ba79652c156db1"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/ea/b4/05b4131c407006cd1e410e9c6539f16a0945724677e5364447313c15ea3e/yarl-1.24.5-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "9d399bdcfb4a0f659b9b3788bbc89babe63d9a6a65aacdf4d4e7065ff2e6316c"
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
