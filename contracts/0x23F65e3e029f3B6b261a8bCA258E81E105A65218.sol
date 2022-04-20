contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor13;

function _fallback() payable {
    stor3 = 18
    stor13 = 100000000000000 * 10^18
    require not msg.value
    mem[96 len -4360] = code.data[4797 len -4360]
    mem[64] = -4264
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[223 len 1]
    stor4 = mem[96] * 10^mem[223 len 1]
    stor5[address(msg.sender)] = mem[96] * 10^mem[223 len 1]
    return code.data[437 len 4360]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - buy()
#  - transfer(address arg1, uint256 arg2)
#  - sell(uint256 arg1)
#
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor9;
mapping of uint8 stor10;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor13;
uint256 difficulty;
uint256 stor14;

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
    return bool(stor10[arg1])
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

function setAllowMining(bool arg1) {
    require owner == msg.sender
    stor9 = uint8(arg1)
}

function setMinBalance(uint256 arg1) {
    require owner == msg.sender
    stor14 = 10^15 * arg1
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
    stor10[address(arg1)] = uint8(arg2)
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
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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
    if stor9:
        require Mask(64, 192, sha3(arg1, currentChallenge)) >= Mask(64, 192, uint64(stor13))
        require block.timestamp - timeOfLastProof >= 5
        balanceOf[address(msg.sender)] += block.timestamp - timeOfLastProof / 60
        require block.timestamp - timeOfLastProof
        uint256(difficulty) = (600 * uint256(difficulty) / block.timestamp - timeOfLastProof) + 1
        timeOfLastProof = block.timestamp
        currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}



}
