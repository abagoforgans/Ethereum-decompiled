contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor9;
uint256 stor10;
mapping of uint256 stor11;

function _fallback() payable {
    stor10 = 100000000000000 * 10^18
    mem[96 len -2436] = code.data[2948 len -2436]
    mem[64] = -2340
    stor0 = msg.sender or Mask(96, 160, stor0)
    if mem[236 len 20] != 0:
        stor0 = mem[224]
    mem[32] = 11
    stor11[address(msg.sender)] = mem[96]
    mem[0] = 1
    stor1.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[160]
    stor4 = mem[96]
    stor9 = block.timestamp
    return code.data[512 len 2436]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;
uint256 stor7;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor10;
uint256 difficulty;
mapping of uint256 balanceOf;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function difficulty() {
    return uint256(difficulty)
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function currentChallenge() {
    return currentChallenge
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function timeOfLastProof() {
    return timeOfLastProof
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(uint8(stor12[arg1]))
}

function _fallback() payable {
    revert 
}

function giveBlockReward() {
    balanceOf[address(block.coinbase)]++
}

function setMinBalance(uint256 arg1) {
    require address(owner) == msg.sender
    stor7 = 10^15 * arg1
}

function sub_72ac4d83(?) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == address(owner)
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require address(owner) == msg.sender
    uint256(stor12[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor12[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit 0x56ddf252: arg2, 0, address(owner)
    emit 0x56ddf252: arg2, address(owner), arg1
}

function buy() {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit 0x56ddf252: (msg.value / buyPrice), this.address, msg.sender
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x56ddf252: arg1, msg.sender, this.address
    return (arg1 * sellPrice)
}

function proofOfWork(uint256 arg1) {
    require Mask(64, 192, sha3(arg1, currentChallenge)) >= Mask(64, 192, uint64(stor10))
    require block.timestamp - timeOfLastProof >= 5
    balanceOf[address(msg.sender)] += block.timestamp - timeOfLastProof / 60
    require block.timestamp - timeOfLastProof
    uint256(difficulty) = (600 * uint256(difficulty) / block.timestamp - timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require not uint8(stor12[address(msg.sender)])
    if eth.balance(msg.sender) < stor7:
        require sellPrice
        require balanceOf[address(msg.sender)] >= stor7 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(this.address)] += stor7 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(msg.sender)] -= stor7 - eth.balance(msg.sender) / sellPrice
        call msg.sender with:
           value stor7 - eth.balance(msg.sender) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x56ddf252: (stor7 - eth.balance(msg.sender) / sellPrice), msg.sender, this.address
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}



}
