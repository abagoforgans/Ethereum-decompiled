contract main {




// =====================  Runtime code  =====================


address stor11;

function _fallback() payable {
    revert
}

function transferByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[132] = arg2
    mem[164] = msg.sender
    mem[196] = this.address
    mem[228] = arg1
    require ext_code.size(stor11)
    staticcall stor11.0x7f75cc2b with:
            gas gas_remaining wei
           args 0, uint32(msg.sender), address(arg2), msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer was declined by WhiteList'
    if not arg1:
        revert with 0, 'Invalid partition.'
    if not arg2:
        revert with 0, 'Invalid recipient address.'
    if not arg3:
        revert with 0, 'Invalid number of the tokens.'
    mem[ceil32(arg4.length) + 128] = 92
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 192] = msg.sender
    mem[ceil32(arg4.length) + 220] = 1003
    if stor[sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])] < arg3:
        revert with 0, 'Insufficiency funds on the balance.'
    require stor[sha3(arg1, address(arg2) << 64, 1003)] < stor[sha3(arg1, address(arg2) << 64, 1003)] + arg3
    stor[sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])] -= arg3
    stor[sha3(arg1, address(arg2) << 64, 1003)] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                             0,
                             arg3,
                             128,
                             160,
                             0,
                             0,
                             arg1,
                             msg.sender,
                             arg2,
    return 0
}



}
