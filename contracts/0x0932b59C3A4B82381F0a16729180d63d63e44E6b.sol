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
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'Test DT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 6
    stor2.length.field_8 = 'TestDT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 6
    stor4 = 44950000 * 10^6
    stor5[address(msg.sender)] = 44950000 * 10^6
    return code.data[487 len 5089]
}



// =====================  Runtime code  =====================


const initialSupply = 44950000

const tokenDecimals = 6

const tokenName = 'Test DT'

const tokenSymbol = 'TestDT'


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

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] > msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
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

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] > arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor10[address(msg.sender)]
    require not stor10[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if eth.balance(msg.sender) >= stor14:
        require arg1
        require balanceOf[address(msg.sender)] > arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        require not stor10[address(msg.sender)]
        require not stor10[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require sellPrice
        require eth.balance(this.address) >= stor14 - eth.balance(msg.sender) / sellPrice * sellPrice
        require this.address
        require balanceOf[address(msg.sender)] > stor14 - eth.balance(msg.sender) / sellPrice
        require balanceOf[address(this.address)] + (stor14 - eth.balance(msg.sender) / sellPrice) > balanceOf[address(this.address)]
        require not stor10[address(msg.sender)]
        require not stor10[address(this.address)]
        balanceOf[address(msg.sender)] -= stor14 - eth.balance(msg.sender) / sellPrice
        balanceOf[this.address] += stor14 - eth.balance(msg.sender) / sellPrice
        emit Transfer((stor14 - eth.balance(msg.sender) / sellPrice), msg.sender, this.address);
        call msg.sender with:
           value stor14 - eth.balance(msg.sender) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require arg1
        require balanceOf[address(msg.sender)] > arg2 - (stor14 - eth.balance(msg.sender) / sellPrice)
        require balanceOf[address(arg1)] + arg2 - (stor14 - eth.balance(msg.sender) / sellPrice) > balanceOf[address(arg1)]
        require not stor10[address(msg.sender)]
        require not stor10[address(arg1)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor14 - eth.balance(msg.sender) / sellPrice)
        balanceOf[arg1] = arg2 - (stor14 - eth.balance(msg.sender) / sellPrice) + balanceOf[arg1]
        emit Transfer((arg2 - (stor14 - eth.balance(msg.sender) / sellPrice)), msg.sender, arg1);
    if eth.balance(arg1) < stor14:
        require sellPrice
        require eth.balance(this.address) >= stor14 - eth.balance(arg1) / sellPrice * sellPrice
        require sellPrice
        require this.address
        require balanceOf[address(arg1)] > stor14 - eth.balance(arg1) / sellPrice
        require balanceOf[address(this.address)] + (stor14 - eth.balance(arg1) / sellPrice) > balanceOf[address(this.address)]
        require not stor10[address(arg1)]
        require not stor10[address(this.address)]
        balanceOf[address(arg1)] -= stor14 - eth.balance(arg1) / sellPrice
        balanceOf[this.address] += stor14 - eth.balance(arg1) / sellPrice
        emit Transfer((stor14 - eth.balance(arg1) / sellPrice), arg1, this.address);
        require sellPrice
        call arg1 with:
           value stor14 - eth.balance(arg1) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
