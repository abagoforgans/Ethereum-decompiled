contract main {




// =====================  Runtime code  =====================


address stor11;
uint256 stor3F0;

function _fallback() payable {
    revert
}

function sub_0f947fb7(?) {
    require calldata.size - 4 >= 64
    return sha3(address(arg1), address(arg2) << 64, 1002)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalid recipient address'
    if arg2 <= 0:
        revert with 0, 'Invalid number of the tokens'
    if not stor3F0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Backward compatibility with ERC-20 standard is not configured'
    require ext_code.size(stor11)
    call stor11.0xb0733f9 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), msg.sender, stor3F0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was declined.'
    if stor[sha3(stor3F0, Mask(224, 32, msg.sender) >> 32, 1003)] < arg2:
        revert with 0, 'Insufficiency funds on the balance'
    require stor[sha3(stor3F0, address(arg1) << 64, 1003)] < stor[sha3(stor3F0, address(arg1) << 64, 1003)] + arg2
    stor[sha3(stor3F0, Mask(224, 32, msg.sender) >> 32, 1003)] -= arg2
    stor[sha3(stor3F0, address(arg1) << 64, 1003)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg2,
                             128,
                             160,
                             0,
                             0,
                             stor3F0,
                             msg.sender,
                             arg1,
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'Invalid recipient address'
    if arg3 <= 0:
        revert with 0, 'Invalid number of the tokens'
    if stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] < arg3:
        revert with 0, 'Transfer not allowed'
    if not stor3F0:
        revert with 0, 'Backward compatibility with ERC-20 standard is not configured'
    require ext_code.size(stor11)
    call stor11.0xb0733f9 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender, stor3F0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was declined.'
    if stor[sha3(stor3F0, address(arg1) << 64, 1003)] < arg3:
        revert with 0, 'Insufficiency funds on the balance'
    require stor[sha3(stor3F0, address(arg2) << 64, 1003)] < stor[sha3(stor3F0, address(arg2) << 64, 1003)] + arg3
    stor[sha3(stor3F0, address(arg1) << 64, 1003)] -= arg3
    stor[sha3(stor3F0, address(arg2) << 64, 1003)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg3,
                             128,
                             160,
                             0,
                             0,
                             stor3F0,
                             arg1,
                             arg2,
    stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] -= arg3
    return 1
}



}
