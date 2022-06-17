contract main {




// =====================  Runtime code  =====================


address stor10;
address stor11;

function _fallback() payable {
    revert
}

function sub_656f029f(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(stor10)
    staticcall stor10.0xfe269e55 with:
            gas gas_remaining wei
           args 0, 0, msg.sender, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module'
    require ext_code.size(stor11)
    call stor11.0xb0733f9 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg2), arg4, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was declined'
    if stor[sha3(arg4, address(arg1) << 64, 1003)] < arg3:
        revert with 0, 'Insufficiency funds on the balance'
    require stor[sha3(arg4, address(arg2) << 64, 1003)] < stor[sha3(arg4, address(arg2) << 64, 1003)] + arg3
    stor[sha3(arg4, address(arg1) << 64, 1003)] -= arg3
    stor[sha3(arg4, address(arg2) << 64, 1003)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg3,
                             128,
                             160,
                             0,
                             0,
                             arg4,
                             arg1,
                             arg2,
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg3,
                             128,
                             160,
                             0,
                             0,
                             0,
                             arg4,
                             arg1,
                             arg2,
}



}
