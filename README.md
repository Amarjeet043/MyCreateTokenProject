# MyCreateTokenProject
Crating Your Own token in Etherium
# AmarjeetCoin (ERC-20 Inspired Token)

AmarjeetCoin is a simple ERC-20-like token smart contract written in Solidity.  
It demonstrates core features of a fungible token, including minting, burning, transferring, and approval for delegated transfers.

---

## 📝 Contract Details

- **Token Name:** Amarjeet  
- **Symbol:** Amar  
- **Owner:** The account that deploys the contract  
- **Standard:** Inspired by ERC-20 (simplified, no events yet)

---

## ⚙ Features

✅ `mint(uint amount)`  
→ Owner can mint new tokens to their balance.

✅ `mintTo(uint amount, address to)`  
→ Owner can mint tokens directly to another address.

✅ `transfer(uint amount, address to)`  
→ Send tokens to another address.

✅ `burn(uint amount)`  
→ Burn your own tokens and reduce total supply.

✅ `aprove(address spender, uint value)`  
→ Approve another address to spend tokens on your behalf.

✅ `transferFrom(address from, address to, uint value)`  
→ Allow approved accounts to transfer tokens on your behalf.

---

## 🚀 How to Deploy

➡ Compatible with **Remix IDE** or frameworks like **Hardhat** / **Truffle**

1️⃣ Copy the code into [Remix](https://remix.ethereum.org/)  
2️⃣ Compile the contract using Solidity `>=0.7.0 <0.9.0`  
3️⃣ Deploy using **Injected Web3 (MetaMask)** or **Remix VM**  
4️⃣ Interact with your contract functions via Remix UI  

---

## 💡 Example Usage

```solidity
mint(1000);
mintTo(500, 0xRecipientAddress);
transfer(100, 0xRecipientAddress);
burn(500);
aprove(0xSpenderAddress, 200);
transferFrom(0xYourAddress, 0xRecipientAddress, 200);

