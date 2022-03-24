contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor12 = 100000000000000 * 10^18
    mem[96 len -2242] = code.data[2753 len -2242]
    mem[64] = -2146
    stor0 = msg.sender or Mask(96, 160, stor0)
    if mem[236 len 20] != 0:
        stor0 = mem[224]
    stor1 = mem[96]
    mem[32] = 2
    stor2[address(msg.sender)] = mem[96]
    mem[0] = 4
    stor4.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor5[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor6 = mem[160]
    stor11 = block.timestamp
    return code.data[511 len 2242]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sellPrice;
uint256 buyPrice;
uint256 stor9;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor12;
uint256 difficulty;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function difficulty() payable {
    return uint256(difficulty)
}

function decimals() payable {
    return decimals
}

function sellPrice() payable {
    return sellPrice
}

function currentChallenge() payable {
    return currentChallenge
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function timeOfLastProof() payable {
    return timeOfLastProof
}

function buyPrice() payable {
    return buyPrice
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) payable {
    return bool(uint8(stor3[arg1]))
}

function _fallback() payable {
  stop
}

function giveBlockReward() payable {
    balanceOf[address(block.coinbase)]++
}

function setMinBalance(uint256 arg1) payable {
    require address(owner) == msg.sender
    stor9 = 5 * 10^15 * arg1
}

function setPrices(uint256 arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    sellPrice = arg1
    buyPrice = arg2
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function freezeAccount(address arg1, bool arg2) payable {
    require address(owner) == msg.sender
    uint256(stor3[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor3[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit 0x56ddf252: arg2, 0, address(owner)
    emit 0x56ddf252: arg2, address(owner), arg1
}

function buy() payable {
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit 0x56ddf252: (msg.value / buyPrice), this.address, msg.sender
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    require ext_call.success
    emit 0x56ddf252: arg1, msg.sender, this.address
    return (arg1 * sellPrice)
}

function proofOfWork(uint256 arg1) payable {
    require Mask(64, 192, sha3(arg1, currentChallenge)) >= Mask(64, 192, uint64(stor12))
    require block.timestamp - timeOfLastProof >= 5
    balanceOf[address(msg.sender)] += block.timestamp - timeOfLastProof / 60
    uint256(difficulty) = (600 * uint256(difficulty) / block.timestamp - timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}

function transfer(address arg1, uint256 arg2) payable {
    require not uint8(stor3[address(msg.sender)])
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    emit 0x56ddf252: arg2, msg.sender, arg1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    if eth.balance(msg.sender) < stor9:
        require balanceOf[address(msg.sender)] >= stor9 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(this.address)] += stor9 - eth.balance(msg.sender) / sellPrice
        balanceOf[msg.sender] -= stor9 - eth.balance(msg.sender) / sellPrice
        call msg.sender with:
           value stor9 - eth.balance(msg.sender) / sellPrice * sellPrice wei
             gas 0 wei
        require ext_call.success
        emit 0x56ddf252: (stor9 - eth.balance(msg.sender) / sellPrice), msg.sender, this.address
}



}
