contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;
uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    stor7 = 400000000 * 10^18
    stor8 = 0
    stor5[address(msg.sender)] = 400000000 * 10^18
    emit Transfer(400000000 * 10^18, 0, msg.sender);
    stor2 = 0
    stor3 = 0
    stor4 = 0
    return code.data[320 len 8838]
}



// =====================  Runtime code  =====================


const name = 'SCHToken'

const decimals = 18

const symbol = 'SCHT'

const INITIAL_SUPPLY = 400000000 * 10^18


address sub_e35bb411Address;
address sub_3bc3509aAddress;
uint256 currentStage;
uint256 sub_077d3b22;
uint256 currentCap;
mapping of uint256 balanceOf;
mapping of address stor6;
uint256 totalSupply;
uint256 sub_6e3fee3f;
mapping of uint256 allowance;

function sub_077d3b22(?) {
    return sub_077d3b22
}

function totalSupply() {
    return totalSupply
}

function sub_3bc3509a(?) {
    return sub_3bc3509aAddress
}

function sub_6e3fee3f(?) {
    return sub_6e3fee3f
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getCurrentCap() {
    return currentCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e35bb411(?) {
    return sub_e35bb411Address
}

function getCurrentStage() {
    return currentStage
}

function destroy() {
    require msg.sender == sub_e35bb411Address
    selfdestruct(sub_e35bb411Address)
}

function destroyAndSend(address arg1) {
    require msg.sender == sub_e35bb411Address
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_a60c21c0(?) {
    return (arg1 == stor6[address(arg1)])
}

function incrementStage() {
    require msg.sender == sub_3bc3509aAddress
    currentStage++
}

function sub_ade2240a(?) {
    require msg.sender == sub_3bc3509aAddress
    currentCap = arg1
}

function sub_2f053c7a(?) {
    require msg.sender == sub_3bc3509aAddress
    sub_077d3b22 = arg1
}

function sub_a4f9062d(?) {
    require msg.sender == sub_3bc3509aAddress
    sub_6e3fee3f = arg1
}

function sub_baed8492(?) {
    require msg.sender == sub_e35bb411Address
    sub_3bc3509aAddress = arg1
}

function sub_e96a7f0f(?) {
    require sub_077d3b22 <= currentCap
    return (currentCap - sub_077d3b22)
}

function sub_3f87cd53(?) {
    require msg.sender == sub_3bc3509aAddress
    balanceOf[address(arg1)] = arg2
}

function sub_a815b258(?) {
    require msg.sender == sub_3bc3509aAddress
    if arg1 != stor6[address(arg1)]:
        stor6[address(arg1)] = arg1
}

function setAllowance(address arg1, address arg2, uint256 arg3) {
    require msg.sender == sub_3bc3509aAddress
    allowance[address(arg1)][address(arg2)] = arg3
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == sub_e35bb411Address
    require arg1
    emit OwnershipTransferred(sub_e35bb411Address, arg1);
    sub_e35bb411Address = arg1
}

function changeStage(uint256 arg1) {
    require msg.sender == sub_e35bb411Address
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.0x7ae4bff8 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    emit StageChanged(currentStage - 1, currentStage);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == sub_e35bb411Address
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transferFromTo(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.0x1bf696f8 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, msg.sender
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.approve(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, msg.sender
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.transfer(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, msg.sender
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.0x9527b12a with:
         gas gas_remaining wei
        args address(arg1), arg2, msg.sender
    require ext_call.success
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.0x32efd52b with:
         gas gas_remaining wei
        args address(arg1), arg2, msg.sender
    require ext_call.success
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_3bc3509aAddress)
    call sub_3bc3509aAddress.transferFrom(address arg1, address arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, msg.sender
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return bool(ext_call.return_data[0])
}



}
