contract main {




// =====================  Runtime code  =====================


#
#  - sub_d254520a(?)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor4;
uint256 sub_b8b89e1b;
uint256 sub_da087a9b;
address stor7;

function owner() {
    return owner
}

function sub_b8b89e1b(?) {
    return sub_b8b89e1b
}

function sub_da087a9b(?) {
    return sub_da087a9b
}

function _fallback() payable {
    revert
}

function setMaxDiscount(uint256 arg1) {
    require msg.sender == owner
    sub_b8b89e1b = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_d12dcb02(?) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    return 1
}

function sub_6db1d128(?) {
    return sha3(0, arg1, arg2, arg3, arg4, Mask(160, 96, arg5) >> 96, mem[396 len 12])
}

function sub_07a36126(?) {
    require msg.sender == owner
    stor2[address(arg1)][address(arg2)][arg3] = uint8(arg4)
    return 1
}

function sub_0d14d6b5(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_b05345e4(?) {
    if arg2 <= arg3:
        if not arg1:
            return 0
        require arg1
        require arg1 * 10^(arg3 - arg2) / arg1 == 10^(arg3 - arg2)
        return (arg1 * 10^(arg3 - arg2))
    require arg3 <= arg2
    require 10^(arg2 - arg3) > 0
    require 10^(arg2 - arg3)
    return (arg1 / 10^(arg2 - arg3))
}

function adminWithdraw(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function recover(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 65:
        return 0
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            return 0
    mem[ceil32(arg2.length) + 252] = Mask(192, 0, arg1), Mask(32, 224, '\x19Ethereum Signed Message:\n32') >> 224 or Mask(32, 224, mem[ceil32(arg2.length) + 252])
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), mem[ceil32(arg2.length) + 252 len 28]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_888dca94(?) {
    require bool(stor2[address(arg1)][address(arg2)][arg4]) == 1
    require not stor4[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if not arg3 / 10^0:
            require arg3 / 10^0 >= arg3 / 10^0
            require ext_code.size(stor7)
            call stor7.0xb4a47de2 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3
        else:
            require arg3 / 10^0
            require arg3 / 10^0 * arg4 / arg3 / 10^0 == arg4
            require (arg3 / 10^0) + (arg3 / 10^0 * arg4 / 10000) >= arg3 / 10^0
            require ext_code.size(stor7)
            call stor7.0xb4a47de2 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 + (arg3 * arg4 / 10000)
    else:
        if not arg3:
            require ext_code.size(stor7)
            call stor7.0xb4a47de2 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require arg3
            require arg3 * 10^0 / arg3 == 10^0
            if not arg3 * 10^0:
                require arg3 * 10^0 >= arg3 * 10^0
                require ext_code.size(stor7)
                call stor7.0xb4a47de2 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg3
            else:
                require arg3 * 10^0
                require arg3 * 10^0 * arg4 / arg3 * 10^0 == arg4
                require (arg3 * 10^0) + (arg3 * 10^0 * arg4 / 10000) >= arg3 * 10^0
                require ext_code.size(stor7)
                call stor7.0xb4a47de2 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + (arg3 * arg4 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
