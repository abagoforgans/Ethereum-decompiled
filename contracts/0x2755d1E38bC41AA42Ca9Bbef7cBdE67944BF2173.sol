contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    return code.data[94 len 4226]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_4a943ea5(?) {
    hash = sha256hash(stor1, 0, arg2 << 128, arg1, arg2 << 128, Mask(56, 192, arg3) << 8, arg3) 
    require sha256hash.result
    return hash
}

function sub_9731b74f(?) {
    hash = sha256hash(stor1, arg1, arg2 << 128, 0, arg2 << 128, Mask(56, 192, arg3) << 8, arg3) 
    require sha256hash.result
    return hash
}

function deposit() payable {
    require stor0 == msg.sender
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
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

function withdraw(uint256 arg1) {
    require stor0 == msg.sender
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_0aa76471(?) {
    hash = sha256hash(stor1, arg1, arg2 << 128, 0, arg2 << 128, Mask(56, 192, arg3) << 8, arg3) 
    require sha256hash.result
    require ext_code.size(stor1)
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg4), hash
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_755b25c9(?) {
    hash = sha256hash(stor1, 0, arg2 << 128, arg1, arg2 << 128, Mask(56, 192, arg3) << 8, arg3) 
    require sha256hash.result
    require ext_code.size(stor1)
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg4), hash
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_57be945b(?) {
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, arg2 << 128, address(arg1), arg2 << 128, Mask(56, 192, arg3) << 8, arg3 << 192, address(arg4), arg3 << 248, arg5, arg6
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_8c299f5f(?) {
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 << 128, 0, arg2 << 128, Mask(56, 192, arg3) << 8, arg3 << 192, address(arg4), arg3 << 248, arg5, arg6
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_1182dd90(?) {
    require stor0 == msg.sender
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, arg2 << 128, address(arg1), arg2 << 128, Mask(56, 192, arg3) << 8, arg3 << 192, address(arg4), arg3 << 248, arg5, arg6, uint128(arg3)
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg7 << 128, 0, arg7 << 128, Mask(56, 192, arg8) << 8, arg8 << 192, address(arg9), arg8 << 248, arg10, arg11, uint128(arg8)
    require ext_call.success
}

function sub_c8dbdddc(?) {
    require stor0 == msg.sender
    hash = sha256hash(stor1, 0, arg2 << 128, arg1, arg2 << 128, Mask(56, 192, arg3) << 8, arg3) 
    require sha256hash.result
    hash = sha256hash(stor1, arg1, arg7 << 128, 0, arg7 << 128, Mask(56, 192, arg8) << 8, arg8) 
    require ext_code.size(stor1)
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg4), hash
    require ext_call.success
    if uint128(arg3) + ext_call.return_data[0] <= arg2:
        require ext_code.size(stor1)
        call stor1.orderFills(address rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg9), hash
        require ext_call.success
        if uint128(arg8) + ext_call.return_data[0] <= arg7:
            require ext_code.size(stor1)
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args 0, arg2 << 128, address(arg1), arg2 << 128, Mask(56, 192, arg3) << 8, arg3 << 192, address(arg4), arg3 << 248, arg5, arg6, uint128(arg3)
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg7 << 128, 0, arg7 << 128, Mask(56, 192, arg8) << 8, arg8 << 192, address(arg9), arg8 << 248, arg10, arg11, uint128(arg8)
            require ext_call.success
}



}
