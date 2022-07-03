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

- PeerPredictor
    https://mumbai.polygonscan.com/address/0xf8c1d9adf08cfd0baf9ac5d439cdef6a37d043b1

- AgreementContract
    https://mumbai.polygonscan.com/address/0xaaa64b26e07fd9e32da315b268c935ffc7cc89ab

- PoM
    https://mumbai.polygonscan.com/address/0xa42d316932E60acDb4bff89f4A19BFcECCB104aE

- ERC20 Token
    https://mumbai.polygonscan.com/address/0x22380e570E3DA27755A1147a2e16aC6746512587

- vestingContract
    https://mumbai.polygonscan.com/address/0xBC808945CBBa4D8296aCb96931490E0e1F7B0993

## 直面した課題

DAOは中央集権的なリーダーシップが不在のメンバー所有のコミュニティでなければなりません。それによってインターネットの見知らぬ人と協力する安全な場所となり得ます。

そこで、モデレータの仕事に対する評価をモデレータ同士が誠実に報告し合うメカニズムデザインに挑戦しました。この仕組みによって現在はまだDAOのオーナーに権限の偏りがある現状のDAOを、完全に自立分散化された組織に一歩押し上げます。

メカニズムデザインの分野では注目されつつあるピア予測法("[Crowdsourced Judgement Elicitation with Endogenous Proficiency (A. Dasgupta, 2013)](https://doi.org/10.48550/arXiv.1303.0799)")を、フルオンチェーン上で世界で初めて？実装しました。（機能限定版のPoC版）計算量が多いため、Ethereum等のL1チェーンではまだ到底実用的ではありませんが、軽量高速なPolygonだったので実装できました。

PeerPredictorの特徴
- 雇用されたモデレータが4人以上の時に使える。デプロイの際にモデレータ全員のアドレスをインプットして開始する。
- 雇用されたモデレータ同士で、あらかじめスマートコントラクトによってランダムに割り当てられた相手2人を1ヶ月観察する
- 期限内に自分の担当の相手それぞれに、そのDAO内でカルチャーミスマッチなどのクリティカルな問題があると感じれば "0" を、問題なければ "1" を報告する。
- 期間内に全てのモデレータが自身の担当の報告を終えた時、スマートコントラクトによって、自動的にモデレータごとの評判(reputation)がピア予測法のアルゴリズムで計算される。
- 評判(reputation)は、-1 〜 1の間で決まり、全員の意見が一致して外れ値がないような時は全員が 0 になる。また、全員がランダムな評価を行った場合も全員が 0 に近くなる。ほとんどの人が誠実に報告していて、悪意のある報告をしている人がいた場合は、その人だけ低い評判がつくようになる。つまり、全員が誠実に報告することがナッシュ均衡になることが証明されている。
- 評判はスマートコントラクト上で永続化されるので、余計に将来転職などで不利になる評価を受けたくないと思うためより誠実な報告をしてくれるようになる。
- このコントラクトは例えば毎月新しくデプロイして月毎に使い捨てるような使い方をする。

DAOs must be member-owned communities where centralized leadership is absent. It can thereby become a safe place to collaborate with strangers on the Internet.

We therefore took on the challenge of designing a mechanism where moderators honestly report their evaluations of each other's work to the moderators. This mechanism will take the current DAO, where authority is still unevenly distributed among DAO owners, one step closer to becoming a completely autonomous and decentralized organization.

Peer prediction methods, which are gaining attention in the field of mechanism design ("[Crowdsourced Judgement Elicitation with Endogenous Proficiency (A. Dasgupta, 2013)" (https://doi.org/10.48550 /arXiv.1303.0799)") on a full-on chain for the first time in the world? Implemented. (PoC version with limited functionality) It is not yet practical on L1 chains such as Ethereum due to the large amount of computation, but we were able to implement it because it was lightweight and fast Polygon.

PeerPredictor Features
- It can be used when there are 4 or more employed moderators. When deploying, the addresses of all moderators are input to start.
- Observe two randomly assigned peers by smart contract for one month among the employed moderators.
- Report "0" to each of your assigned counterparts within the time period if you feel there is a critical issue, such as a culture mismatch, within that DAO, and "1" if there is no issue.
- When all moderators have reported their responsibilities within the time period, the smart contract automatically calculates a reputation for each moderator using a peer prediction algorithm.
- The reputation is determined between -1 and 1, and is set to 0 for all moderators when everyone is in agreement and there are no outliers. It is also close to 0 for everyone when everyone gives a random rating. If most people report in good faith and only one person reports in bad faith, then only that person will have a low reputation. In other words, it has been proven that everyone reporting in good faith is a Nash equilibrium.
- Since the reputation is persistent on the smart contract, people are more likely to report in good faith because they do not want to be evaluated unfavorably in the future, for example, when they change jobs.
- This contract is used, for example, to deploy a new one every month and discard it on a monthly basis.
