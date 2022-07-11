contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
mapping of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'KLAB Coin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'KLAB' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor2[address(msg.sender)] = 1000000 * 10^18
    stor0 = 1000000 * 10^18
    require not uint8(stor1.field_160)
    require 1000000 * 10^18 <= stor2[address(msg.sender)]
    stor2[address(msg.sender)] -= 1000000 * 10^18
    require stor2[0x6a0dc4629c0a6a655e8e4dc80b017145b1774622] + 1000000 * 10^18 >= stor2[0x6a0dc4629c0a6a655e8e4dc80b017145b1774622]
    stor2[0x6a0dc4629c0a6a655e8e4dc80b017145b1774622] += 1000000 * 10^18
    emit Transfer(1000000 * 10^18, msg.sender, 0x6a0dc4629c0a6a655e8e4dc80b017145b1774622);
    return code.data[1230 len 5923]
}



// =====================  Runtime code  =====================


const sub_afb26f1c(?) = 0x6a0dc4629c0a6a655e8e4dc80b017145b1774622

const TOTAL_SUPPLY = 1000000 * 10^18


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpaused()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Paused()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther() {
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function burn(uint256 arg1) {
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function withdrawSelfToken() {
    if balanceOf[address(this.address)] > 0:
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0x6a0dc4629c0a6a655e8e4dc80b017145b1774622, balanceOf[address(this.address)]
        require ext_call.success
}

function addSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit AddSupply(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
