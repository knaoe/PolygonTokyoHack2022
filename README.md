# MOVER

## プロジェクト名

MOVER

## プロジェクトについて（2-3行）

MOVERはメタバース時代に必要な、多言語話者向けグローバルHRモバイルアプリです。
SBTを活用し、母国語の壁を乗り越えてお互いの実績や能力を可視化します。
モデレータの経験や能力を簡単に検索し、たった3クリックで採用・契約・報酬を支払うことができます。

MOVER is a global HR mobile app for multilingual speakers for metaverse world.
It utilises SBT to visualise each other's achievements and competencies, overcoming native language barriers.
Easily search for moderators' experience and competencies and hire, contract and reward them in just three clicks.

## 解決しようとしている課題

DAOやギルドがWeb3やメタバース等最先端領域の知識を持つ匿名のコミュニティモデレータを
国境や言語の違いを超えて採用・契約・決済するのに非常に時間/労力を要していること。

2022年6月13日現在10,000以上のDAOが存在しています。
彼らが本気でコミュニティの参加者をケアしようとした場合、
少なくとも1名の英語ネイティブな人材、グローバルサービスの場合中国語など複数の言語話者を採用しなければなりません。
数年後メタバースやギルドが更に一般化されると、他の母国語話者に対するサポートの需要はより大きくなります。

また、採用するためには自分とは話す言語が違うモデレータの能力や実績を適正に判断しなくてはならず、
時間と労力が必要となります。これだけのニーズがあるにも関わらず、今現在手軽に彼らの能力や報酬を標準化/可視化し、
報酬をお互いに合意した上で契約/支払いできるツールは存在しません。

今後Discordと連携し、お互い匿名であっても信用を得たり仕事の受発注を可能にするべく、ゼロ知識証明によるKYCの仕組みを実装します。

The DAOs and guilds have difficulties for hiring anonymous community moderators with knowledge of cutting-edge areas such as Web3 and the Metaverse.
The fact that it takes so much time/effort to agree, contract and settle across borders and language differences.

The era of 3rd bitcoin surge, there were more than 10,000 DAOs.
If they are serious and focus about engage their community participants, 
they will need to employ at least one native English speaker and, in the case of global services, several language speakers, including Chinese.
As metaverses and guilds become more common in the years to come, the demand for support for speakers of other mother tongues will become even more important.

In addition, in order to hire a moderator who speaks a different language to you, you have to make a proper assessment of the moderator's ability and track record.
This requires time and effort. 
Despite this need, there are currently no easy way and tools to standardise/visualise their competence and remuneration, and to contract/pay them based on mutual agreement.

In the future, we will work with Discord to implement a KYC mechanism based on zero-knowledge proof to enable both parties to gain trust and order work even if they are anonymous to each other.

## 使用した技術

solidity, hardhat, flutter, AWS,
Peer-Prediction

## スマートコントラクトのPolygonscanリンク

- AgreementContract
    https://mumbai.polygonscan.com/address/0xaaa64b26e07fd9e32da315b268c935ffc7cc89ab

- PoM
    https://mumbai.polygonscan.com/address/0xa42d316932E60acDb4bff89f4A19BFcECCB104aE

- ERC20 Token
    https://mumbai.polygonscan.com/address/0x22380e570E3DA27755A1147a2e16aC6746512587

- vestingContract
    https://mumbai.polygonscan.com/address/0xBC808945CBBa4D8296aCb96931490E0e1F7B0993

## 直面した課題

課題は、Mod に対する評価を如何にして公正にするか。

解決としては、ピア予測法により、同言語のMod 間で評価し合う仕組みを作ることによって、
公正かつ不正の起きにくい評価プラットフォームを作成すること。
