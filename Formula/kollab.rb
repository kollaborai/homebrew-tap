# typed: strict
# frozen_string_literal: true

class Kollab < Formula
  include Language::Python::Virtualenv

  desc "Terminal AI workspace with hooks, plugins, providers, and agents"
  homepage "https://github.com/kollaborai/kollab"
  url "https://files.pythonhosted.org/packages/0c/ad/39fc8d52315a075c3d1d5455d43e4d10a17c190d76d02d26c00d4ba5a23f/kollab-0.7.3-py3-none-any.whl"
  sha256 "1765d090609ffb779879c5da2c0b3cd39f78d83a8d57285f811d264efd7faadf"
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
    url "https://files.pythonhosted.org/packages/ba/19/797e2aaac9df6a66f1550f49979dc1b1e39ecd2077501c30efa81e8d5d67/cryptography-50.0.1-cp311-abi3-macosx_11_0_arm64.whl"
    sha256 "b8f852c65863251b9e3a1b8c150ce21e59b522dbb6a7d4bc80e680d38388e986"
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

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/d2/74/d370e55600d9bcfa0d9794b0166126d49291a3d2b20c268fc98c453a4948/httpcore2-2.12.0-py3-none-any.whl"
    sha256 "7e04258ce01013d7d615e5b910a3b27fac937d7a95038227e79652b4ba3b4ceb"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/a5/42/cc4feea2945cb3051038f090c9b36bd5b8a9d7f5a894a506a8983e33fd1c/httptools-0.8.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "5931891fb7b441b8a3853cf1b85c82c903defce084dd5f6771ca46e31bf862c5"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/c8/95/411ba65569158e862368917aaf56597f3e5fa3b91b0502919638465a08f3/httpx2-2.12.0-py3-none-any.whl"
    sha256 "cc8b6eecb8661c146b8f89a60e97456ee086e91a784ed31ac450c3a9e613dd36"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/57/b0/0e52c878c53f245edd3a11020f20979b3f490f245af532c7cae3027754b5/idna-3.19-py3-none-any.whl"
    sha256 "815e7be7a7806d54abb586dc943addc79e8b2ee16915059658cbeff4b1b43bf4"
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
    url "https://files.pythonhosted.org/packages/5c/02/8a543b38c3e814de45560549c12ab5dda393a34540b814bdd1a37b3e347a/kollabor_agent-0.7.3-py3-none-any.whl"
    sha256 "f488295ddbbd41e2104f3aae3ae2353e65365516d9f8bd406b1a60a062d9a69d"
  end

  resource "kollabor-ai" do
    url "https://files.pythonhosted.org/packages/96/eb/06363e6e1cb2ad4e42d94bcfca60f79d93bcd8d46f7ba78f1cd527d5fcfe/kollabor_ai-0.7.3-py3-none-any.whl"
    sha256 "a4a3588db49d50fbb17b7061cab9ca553676182a03adb584fc8e6dca7e33565c"
  end

  resource "kollabor-config" do
    url "https://files.pythonhosted.org/packages/2f/57/f6e0dc894c1fce389ac4531235516ce14f6b6f89e800a56f364c463bc555/kollabor_config-0.7.3-py3-none-any.whl"
    sha256 "89358b95eab1d6efde15059ec879509abbd49282fadc689b454342c331056980"
  end

  resource "kollabor-engine" do
    url "https://files.pythonhosted.org/packages/d9/6b/355e3bb34170f9f6115fe5f39cde594d0b500aea212caefdedc44d222aba/kollabor_engine-0.7.3-py3-none-any.whl"
    sha256 "4b50110bc3f8c84fcbb53b89a203ec2ce78205b5f04c10334eff7874438a3212"
  end

  resource "kollabor-events" do
    url "https://files.pythonhosted.org/packages/8b/4a/3b06e40400a3489682f499c2088206f08a5707f282266a5451bbbb4c4614/kollabor_events-0.7.3-py3-none-any.whl"
    sha256 "3ff93d9709dde1fad5c09a4ca7bb596ed1af557bb7ff32dbf3a4d05e6fcc90df"
  end

  resource "kollabor-plugins" do
    url "https://files.pythonhosted.org/packages/ab/0c/28a2c9469a2458c1c0bb7ab3a4227361235646c90306d27eaa9e8998134b/kollabor_plugins-0.7.3-py3-none-any.whl"
    sha256 "3f41742f9f81892372a06132980f1908ae96b7ed6292bef543651fe4bc7ad265"
  end

  resource "kollabor-rpc" do
    url "https://files.pythonhosted.org/packages/29/5c/1ebfa6c5bd297ed84288836c7494ef4e8d3d9f034c294257012ac2dfdf71/kollabor_rpc-0.7.3-py3-none-any.whl"
    sha256 "72827c2a57a913442b27da777b2aa04ffe16f5fd74378935c4d70233097ddf3e"
  end

  resource "kollabor-tui" do
    url "https://files.pythonhosted.org/packages/ca/07/f366f80ca1dfcdfd83f16fb6f86d9f7314d0936082674303f26db2e41156/kollabor_tui-0.7.3-py3-none-any.whl"
    sha256 "1f35d6e41d094655bdda5afde3b83e0ecd430cc4039aa81203c825e0c0100b0c"
  end

  resource "kollabor-webui" do
    url "https://files.pythonhosted.org/packages/0d/34/6af6392c1d95e1661cd69ddc8674f9cac1ace463aabd226490dc6477a6a3/kollabor_webui-0.7.3-py3-none-any.whl"
    sha256 "7436f7c087cf33105a83b3b5cd492d34dc6efa4a4d4f3b6c3de16afa7ce972a5"
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
    url "https://files.pythonhosted.org/packages/a1/94/805b87ecc951c49ec8f247f5e8eb324ab064bd2ad73b6a0e704dd49aa073/openai-3.6.0-py3-none-any.whl"
    sha256 "508e2158bf971687f953b62e44b02f207792c815aac306816386d7ba34d37f5f"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
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
    url "https://files.pythonhosted.org/packages/eb/47/c95ffc2009878c7aac0c5e08528022dcb885933252a88b5f170058014464/pydantic-2.13.5-py3-none-any.whl"
    sha256 "346a034f080da3755d8e9cb5e00e8b07de1d39e4f6e2c87d8ab7cafa0b269a73"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/db/50/26b091836076ce4cb2fac264186936acc069e0595772cfd02a563bc4761a/pydantic_core-2.46.5-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "a39ac25a9a2fa4072efdb429833c4a4c8009a51ff9eea3eeae131713cd27991e"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/be/7b/4845bbf88e94586ec47a432da4e9107e3fc3ce37eb412b1398630a37f7dd/pynacl-1.6.2-cp38-abi3-macosx_10_10_universal2.whl"
    sha256 "c949ea47e4206af7c8f604b8278093b674f7c79ed0d4719cc836902bf4517465"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0d/17/c5c6b53ddc18f297992099b3d9ec16c855c0ccc83263a21fe4d1c625ec6c/python_dotenv-1.2.3-py3-none-any.whl"
    sha256 "904552145e8bfed22162c09dab1c2b9b54fefa7b23ba780f4f26ca0316b0f0d9"
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
    url "https://files.pythonhosted.org/packages/dd/3a/764912c58293d95b6dcdf4cc255f9d10de310580ced547b082eb9d72018c/sse_starlette-3.4.8-py3-none-any.whl"
    sha256 "6e82314c786709a3cd9520f2285cf9fff90e181e598e8a357b0cf80f66afba0d"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/c8/cb/6a6a47d5b464bd08695d254f3da6e7986cc70c9fa5d778eda57538edfe56/starlette-1.6.0-py3-none-any.whl"
    sha256 "a86dd39d14bb45f85a3d18525215a9ef0cfd1f192ac793220e72598c90335f0c"
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
    url "https://files.pythonhosted.org/packages/f1/79/4a20b54ab0491485ccd8c077db2d39187c7f12b3e15485d38a7be37c81b4/uvicorn-0.52.4-py3-none-any.whl"
    sha256 "f86e41a149d7d05a9969337e3946a9c171c06a5d42680896daaba624aeac8da1"
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
    url "https://files.pythonhosted.org/packages/8f/e7/df821761772beaa48c211ee0e234930b35c1473778470773823f56d3911b/websockets-17.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "87f0d5e77548b0c40c8464cdb6108792e7e53f487c6400028a4ec28a8afbe5ab"
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
