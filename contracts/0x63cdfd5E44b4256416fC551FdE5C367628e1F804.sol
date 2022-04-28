contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;

function _fallback() payable {
    stor3 = 18
    stor7 = 8760 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor4 = 10000 * 10^stor3
    stor5[address(msg.sender)] = stor4 - 2500 * 10^18
    stor5[0x9d66550779a4b57fde6b764bcd346b33b6123f11] = 2000 * 10^18
    stor5[0xfc549e16d1e3b78ba65c27a519b5216052971172] = 500 * 10^18
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'CHAINGE' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 7
    stor2.length.field_8 = 'CHAINGE' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[836 len 4362]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 lockTime;
uint256 startTime;

function name() {
    return name[0 len name.length]
}

function lockTime() {
    return lockTime
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_66cc5702(?) {
    require msg.sender == owner
    startTime = block.timestamp
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
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

function transfer(address arg1, uint256 arg2) {
    if startTime + lockTime > block.timestamp:
        require 0x9d66550779a4b57fde6b764bcd346b33b6123f11 != msg.sender
        require 0xfc549e16d1e3b78ba65c27a519b5216052971172 != msg.sender
        if startTime + lockTime > block.timestamp:
            require 0xfc549e16d1e3b78ba65c27a519b5216052971172 != msg.sender
            require 0x9d66550779a4b57fde6b764bcd346b33b6123f11 != msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if startTime + lockTime > block.timestamp:
        require arg1 != 0x9d66550779a4b57fde6b764bcd346b33b6123f11
        require arg1 != 0xfc549e16d1e3b78ba65c27a519b5216052971172
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if startTime + lockTime > block.timestamp:
        require arg1 != 0xfc549e16d1e3b78ba65c27a519b5216052971172
        require arg1 != 0x9d66550779a4b57fde6b764bcd346b33b6123f11
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}



}
