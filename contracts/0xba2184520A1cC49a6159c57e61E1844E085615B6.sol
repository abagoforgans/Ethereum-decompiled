contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    bool(stor5.length) = 0
    stor5.length.field_1 = 15
    stor5.length.field_8 = 'HelloGold Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'HGT' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 8
    stor1 = 10^9 * 10^8
    stor3[address(code.data[3641 len 32])] = 10^9 * 10^8
    return code.data[462 len 3179]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address gBTAddress; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor2)
}

function GBTAddress() {
    return gBTAddress
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

function _fallback() payable {
    revert
}

function setGBT(address arg1) {
    require owner == msg.sender
    gBTAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor2
    stor2 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor2
    stor2 = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor2
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentFees(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentFees(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentChange(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentChange(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), balanceOf[address(arg1)]
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentFees(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentFees(address rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentChange(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), balanceOf[address(arg1)]
    require ext_call.success
    require gBTAddress
    require ext_code.size(gBTAddress)
    call gBTAddress.parentChange(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), balanceOf[address(arg2)]
    require ext_call.success
    return 1
}



}
