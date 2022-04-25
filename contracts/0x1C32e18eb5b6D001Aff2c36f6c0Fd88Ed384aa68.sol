contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor9;
uint256 stor10;
mapping of uint256 stor11;

function _fallback() payable {
    stor3 = 18
    stor10 = 100000000000000 * 10^18
    require not msg.value
    mem[96 len -4031] = code.data[4485 len -4031]
    mem[64] = -3935
    stor0 = msg.sender
    if mem[236 len 20]:
        stor0 = mem[236 len 20]
    stor4 = mem[96]^mem[191 len 1]
    stor11[address(msg.sender)] = mem[96]^mem[191 len 1]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor9 = block.timestamp
    return code.data[454 len 4031]
}



// =====================  Runtime code  =====================


address owner;
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
mapping of uint256 allowance;
mapping of uint8 stor13;

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
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor13[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMinBalance(uint256 arg1) {
    require owner == msg.sender
    stor7 = 10^15 * arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor13[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor13[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    if eth.balance(msg.sender) < stor7:
        require sellPrice
        require balanceOf[address(msg.sender)] >= stor7 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(this.address)] += stor7 - eth.balance(msg.sender) / sellPrice
        balanceOf[msg.sender] -= stor7 - eth.balance(msg.sender) / sellPrice
        call msg.sender with:
           value stor7 - eth.balance(msg.sender) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((stor7 - eth.balance(msg.sender) / sellPrice), msg.sender, this.address);
}



}
