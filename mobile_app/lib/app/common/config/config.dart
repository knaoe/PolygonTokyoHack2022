import '../models/contract_model.dart';

import '../models/chain_model.dart';

class Config {
  static ChainModel get chain => mumbaiTestnet;
  static ContractModel get paymentContract => payment;

  static ChainModel astarmainnet = ChainModel(
    name: "Astar Mainnet",
    chainID: 592,
    rpcUrl: "https://evm.astar.network",
  );
  static ChainModel astarLocalnet = ChainModel(
    name: "AstarLocalnet",
    chainID: 4369,
    rpcUrl: "http://localhost:9933/",
  );
  static ChainModel shibuyaTestnet = ChainModel(
    name: "ShibuyaTestnet",
    chainID: 81,
    rpcUrl: "https://rpc.shibuya.astar.network:8545/",
    // rpcUrl: "https://shibuya.public.blastapi.io",
  );
  static ChainModel mumbaiTestnet = ChainModel(
    name: "MumbaiTestnet",
    chainID: 80001,
    rpcUrl: "https://rpc-mumbai.maticvigil.com/",
  );
  static ChainModel polygonMainnet = ChainModel(
    name: "Polygon Mainnet",
    chainID: 137,
    rpcUrl: "https://polygon-rpc.com",
  );

  static ContractModel payment = ContractModel(
    address: "0x0000000000000000000000000000000000000000",
  );

  //TODO add your contract models here!
  // static ContractModel provedContract = ContractModel(
  //   address: "0x0000000000000000000000000000000000000000", //astar
  //   // address: "0x0000000000000000000000000000000000000000", //polygon
  // );
  static ContractModel pomContract = ContractModel(
    // address: "0x088092767fa97E43f069C447d529e95be3CC6521", //astar
    // address: "0x5FC8d32690cc91D4c39d9d3abcBD16989F875707", //hardhat
    address: "0xa42d316932E60acDb4bff89f4A19BFcECCB104aE", //mumbai
  );
  static ContractModel tokenContract = ContractModel(
    // address: "0x088092767fa97E43f069C447d529e95be3CC6521", //astar
    // address: "0x5FbDB2315678afecb367f032d93F642f64180aa3", //hardhat
    address: "0x22380e570E3DA27755A1147a2e16aC6746512587", //mumbai
  );
  static ContractModel vestingContract = ContractModel(
    // address: "0x088092767fa97E43f069C447d529e95be3CC6521", //astar
    // address: "0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9", //hardhat
    address: "0xBC808945CBBa4D8296aCb96931490E0e1F7B0993", //mumbai
  );
  static ContractModel agreementContract = ContractModel(
    // address: "0x088092767fa97E43f069C447d529e95be3CC6521", //astar
    // address: "0xa513E6E4b8f2a923D98304ec87F64353C4D5C853", //hardhat
    address: "0xaaA64b26E07fD9e32DA315B268c935ffC7cc89aB", //mumbai
  );
// pom:0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0
// token:0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9
//   vessting:0x5FC8d32690cc91D4c39d9d3abcBD16989F875707
// agreement:0xa513E6E4b8f2a923D98304ec87F64353C4D5C853

  static String searchRpcUrl = "http://";
}
