const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deployment initiated by:", deployer.address);

  console.log("Account balance of deployer:", (await deployer.getBalance()).toString());

  const Token = await ethers.getContractFactory("UmeshToken");
  const token = await Token.deploy();

  await token.deployed();

  console.log("UmeshToken contract deployed at address:", token.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error("Error during deployment:", error);
    process.exit(1);
  });
