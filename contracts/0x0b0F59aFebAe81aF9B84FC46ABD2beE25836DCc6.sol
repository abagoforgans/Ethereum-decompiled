contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[2065 len 20]
    stor1 = code.data[2097 len 20]
    return code.data[112 len 1941]
}



// =====================  Runtime code  =====================


address owner;
address etherdeltaAddress;

function etherdelta() {
    return etherdeltaAddress
}

function owner() {
    return owner
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function deposit() payable {
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawTo(uint256 arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_12904b2b(?) {
    require owner == msg.sender
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function withdrawTokenTo(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.withdrawToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_264ad715(?) {
    require owner == msg.sender
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[196], address(call.data[36]), call.data[228], call.data[260], call.data[292], address(call.data[68]), call.data[516] << 248, call.data[580], call.data[612], call.data[324]
    require ext_call.success
    require owner == msg.sender
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(call.data[100]), call.data[356], address(call.data[132]), call.data[388], call.data[420], call.data[452], address(call.data[164]), call.data[548] << 248, call.data[644], call.data[676], call.data[484]
    require ext_call.success
}



}
