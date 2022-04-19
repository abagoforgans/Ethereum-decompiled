contract main {


// =======================  Init code  ======================


address stor2; offset 8
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor2 = 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'E93' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = 'ETH93' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    require not msg.value
    return code.data[482 len 6282]
}



// =====================  Runtime code  =====================


const contractBalance = eth.balance(this.address)


uint256 totalSupply;
uint256 maxSupply;
uint8 stor2;
address owner; offset 8
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 RATE;
uint8 stor7;
address e93ContractAddress; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function e93Contract() {
    return e93ContractAddress
}

function decimals() {
    return decimals
}

function optionsSet() {
    return bool(stor2)
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function open() {
    return bool(stor7)
}

function topup() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function close() {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    stor7 = 0
}

function setE93ContractAddress(address arg1) {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    e93ContractAddress = arg1
}

function start(uint256 arg1, uint256 arg2) {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    if not stor2:
        maxSupply = arg1
        RATE = arg2
        stor2 = 1
    stor7 = 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function checkPayout() {
    if not balanceOf[address(msg.sender)]:
        if maxSupply:
            return (balanceOf[address(msg.sender)] * eth.balance(this.address) / maxSupply)
    else:
        if balanceOf[address(msg.sender)]:
            if balanceOf[address(msg.sender)] * eth.balance(this.address) / balanceOf[address(msg.sender)] == eth.balance(this.address):
                if maxSupply:
                    return (balanceOf[address(msg.sender)] * eth.balance(this.address) / maxSupply)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw() {
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] * eth.balance(this.address) / balanceOf[address(msg.sender)] == eth.balance(this.address)
    require maxSupply
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] * eth.balance(this.address) / maxSupply wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    require bool(stor7) == 1
    if msg.value:
        require msg.value
        require msg.value * RATE / msg.value == RATE
    require totalSupply + (msg.value * RATE) >= totalSupply
    require totalSupply + (msg.value * RATE) >= totalSupply
    if totalSupply + (msg.value * RATE) <= maxSupply:
        totalSupply += msg.value * RATE
        require balanceOf[address(msg.sender)] + (msg.value * RATE) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * RATE
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require maxSupply <= totalSupply + (msg.value * RATE)
        require balanceOf[address(msg.sender)] + maxSupply - totalSupply >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + maxSupply - totalSupply
        totalSupply = maxSupply
        require RATE
        call msg.sender with:
           value totalSupply + (msg.value * RATE) - maxSupply / RATE wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require RATE
        require totalSupply + (msg.value * RATE) - maxSupply / RATE <= msg.value
        call owner with:
           value msg.value - (totalSupply + (msg.value * RATE) - maxSupply / RATE) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if e93ContractAddress != msg.sender:
        require msg.value > 0
        require bool(stor7) == 1
        if msg.value:
            require msg.value
            require msg.value * RATE / msg.value == RATE
        require totalSupply + (msg.value * RATE) >= totalSupply
        require totalSupply + (msg.value * RATE) >= totalSupply
        if totalSupply + (msg.value * RATE) <= maxSupply:
            totalSupply += msg.value * RATE
            require balanceOf[address(msg.sender)] + (msg.value * RATE) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * RATE
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            require maxSupply <= totalSupply + (msg.value * RATE)
            require balanceOf[address(msg.sender)] + maxSupply - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + maxSupply - totalSupply
            totalSupply = maxSupply
            require RATE
            call msg.sender with:
               value totalSupply + (msg.value * RATE) - maxSupply / RATE wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require RATE
            require totalSupply + (msg.value * RATE) - maxSupply / RATE <= msg.value
            call owner with:
               value msg.value - (totalSupply + (msg.value * RATE) - maxSupply / RATE) wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
