contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor1 = 0xe1fa699860444be91d366c21de8fef56e3dec77a
    stor2 = 0x3979b95eadda2401f6bd10f190c16f6a31e72f76
    stor0 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    return code.data[284 len 5345]
}



// =====================  Runtime code  =====================


address eAddress;
address adminAddress;
address destAddress;

function dest() {
    return destAddress
}

function admin() {
    return adminAddress
}

function e() {
    return eAddress
}

function _fallback() payable {
  stop
}

function sub_47d9ebfc(?) {
    require msg.sender == adminAddress
    destAddress = arg1
}

function sub_b15afa90(?) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function sub_5280c553(?) {
    require msg.sender == adminAddress
    call destAddress with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function wd(uint256 arg1) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_ffd2d43f(?) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_d638941b(?) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args destAddress, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_822c4ad8(?) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.withdrawToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_3a79cf65(?) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.sender == adminAddress
    call destAddress with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_2d05325b(?) {
    require arg1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, arg2
    require ext_call.success
    require ext_code.size(eAddress)
    call eAddress.depositToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_ec433627(?) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.withdrawToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args destAddress, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.amountFilled(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    require ext_code.size(eAddress)
    call eAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    if arg11 <= arg2 - ext_call.return_data[0]:
        if arg11 <= ext_call.return_data[0]:
            if arg11 <= 0:
                return 0
            require ext_code.size(eAddress)
            call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
            require ext_call.success
            return arg11
    else:
        if arg2 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg2 - ext_call.return_data[0] <= 0:
                return 0
            require ext_code.size(eAddress)
            call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg2 - ext_call.return_data[0]
            require ext_call.success
            return (arg2 - ext_call.return_data[0])
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(eAddress)
    call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_e918f473(?) {
    require arg1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, arg11
    require ext_call.success
    require ext_code.size(eAddress)
    call eAddress.depositToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg11
    require ext_call.success
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.amountFilled(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    require ext_code.size(eAddress)
    call eAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    if 1000 * arg11 / 1003 <= arg2 - ext_call.return_data[0]:
        if 1000 * arg11 / 1003 <= ext_call.return_data[0]:
            if 1000 * arg11 / 1003 > 0:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, 1000 * arg11 / 1003
                require ext_call.success
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
                require ext_call.success
    else:
        if arg2 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg2 - ext_call.return_data[0] > 0:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg2 - ext_call.return_data[0]
                require ext_call.success
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
                require ext_call.success
}

function sub_5829ebc8(?) {
    require msg.sender == adminAddress
    require ext_code.size(eAddress)
    call eAddress.amountFilled(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    require ext_code.size(eAddress)
    call eAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    if arg11 <= arg2 - ext_call.return_data[0]:
        if arg11 <= ext_call.return_data[0]:
            if arg11 <= 0:
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), 0 / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, 0 / arg2
            else:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
                require ext_call.success
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), arg4 * arg11 / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, arg4 * arg11 / arg2
        else:
            if ext_call.return_data[0] <= 0:
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), 0 / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, 0 / arg2
            else:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
                require ext_call.success
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), arg4 * ext_call.return_data[0] / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, arg4 * ext_call.return_data[0] / arg2
    else:
        if arg2 - ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg2 - ext_call.return_data[0] <= 0:
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), 0 / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, 0 / arg2
            else:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg2 - ext_call.return_data[0]
                require ext_call.success
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), (arg2 * arg4) - (ext_call.return_data[0] * arg4) / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, (arg2 * arg4) - (ext_call.return_data[0] * arg4) / arg2
        else:
            if ext_call.return_data[0] <= 0:
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), 0 / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, 0 / arg2
            else:
                require ext_code.size(eAddress)
                call eAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
                require ext_call.success
                require arg2
                require msg.sender == adminAddress
                require ext_code.size(eAddress)
                call eAddress.withdrawToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg3), arg4 * ext_call.return_data[0] / arg2
                require ext_call.success
                require msg.sender == adminAddress
                require ext_code.size(arg3)
                call arg3.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args destAddress, arg4 * ext_call.return_data[0] / arg2
    require ext_call.success
    require ext_call.return_data[0]
}



}
