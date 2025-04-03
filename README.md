# hardhat @alnooristiak

# Steap by steap process installing hardhat

npm init --yes
npm install --save-dev hardhat
npx hardhat

###### select option -->

###### Create an empty hardhat.config.js

###### in file "hardhat.config.js" change solidity version

module.exports = {
solidity: "0.8.9",
};

# To install chai and others -

npm install --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai

# to compile hardhat

cd contracts
npx hardhat compile
