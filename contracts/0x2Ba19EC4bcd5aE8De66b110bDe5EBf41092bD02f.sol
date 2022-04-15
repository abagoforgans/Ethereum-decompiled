contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    return code.data[92 len 1879]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f1b83630(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_2cf2c0af(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_5c73dcea(?) {
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_7f75334c(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x34d6d9be: 1
    else:
        emit 0x34d6d9be: 0
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
        require ext_call.success
}



}
