contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor14;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 15
    stor3.length.field_8 = 'CryptoCoin v1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 10
    stor4.length.field_8 = 'CryptoCoin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = 'CCF'
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'CCF' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 10^12
    stor8 = 5 * 10^15
    stor14 = 100000000000000 * 10^18
    require not msg.value
    mem[288 len -6526] = code.data[7614 len -6526]
    stor0 = msg.sender
    stor1[address(msg.sender)] = 0
    stor7 = 0
    stor6 = mem[415 len 1]
    stor5[].field_0 = Array(len=mem[mem[352] + 288], data=mem[mem[352] + 320 len mem[mem[352] + 288]])
    stor4[].field_0 = Array(len=mem[mem[320] + 288], data=mem[mem[320] + 320 len mem[mem[320] + 288]])
    if not mem[428 len 20]:
        stor0 = msg.sender
    else:
        stor0 = mem[428 len 20]
    stor1[stor0] = mem[288]
    stor7 = mem[288]
    return code.data[1088 len 6526]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor8;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor11;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor14;
uint256 difficulty;

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

function standard() {
    return standard[0 len standard.length]
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

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function giveBlockreward() {
    balanceOf[address(block.coinbase)]++
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == adminAddress
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == adminAddress
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFund(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] > msg.value / 10^18 / buyPrice
    balanceOf[address(msg.sender)] += msg.value / 10^18 / buyPrice
    balanceOf[address(this.address)] -= msg.value / 10^18 / buyPrice
    emit Transfer((msg.value / 10^18 / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value 10^18 * arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor11[address(arg1)]
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 < allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function proofOfWork(uint256 arg1) {
    require Mask(64, 192, sha3(arg1, currentChallenge)) > Mask(64, 192, uint64(stor14))
    require block.timestamp - timeOfLastProof > 5
    balanceOf[address(msg.sender)] += block.timestamp - timeOfLastProof / 60
    require timeOfLastProof
    uint256(difficulty) = (600 * uint256(difficulty) / timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}

function transfer(address arg1, uint256 arg2) {
    if eth.balance(msg.sender) < stor8:
        require sellPrice
        require balanceOf[address(msg.sender)] > stor8 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(this.address)] += stor8 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(msg.sender)] -= stor8 - eth.balance(msg.sender) / sellPrice
        call msg.sender with:
           value 10^18 * stor8 - eth.balance(msg.sender) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((stor8 - eth.balance(msg.sender) / sellPrice), msg.sender, this.address);
    require stor11[address(msg.sender)]
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
