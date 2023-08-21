/** @type import('hardhat/config').HardhatUserConfig */
// require("@nomicfoundation/hardhat-ethers");
require("@nomicfoundation/hardhat-toolbox");
module.exports = {
  networks: {
    "vm-merge": {
      chainId: 31337,
      url: "http://127.0.0.1:8545",
    },
  },
  solidity: {
    version: "0.8.18",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
};

require("@nomicfoundation/hardhat-toolbox");
