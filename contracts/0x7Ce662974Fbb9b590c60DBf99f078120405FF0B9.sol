contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function sub_de3bea0d(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'Not authorised'
    stor0[address(arg1)] = 1
}

function sendTokens(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'Not authorised'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe6e756d626572206f6620726563697069656e7473203c3e206e756d626572206f662076616c7565,
                    mem[204 len 24]
    idx = 0
    while idx < arg3.length:
        require idx < arg2.length
        require idx < arg3.length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + arg2 + 36)])
        mem[164] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg2.length
        require idx < arg3.length
        mem[96] = cd[((32 * idx) + arg3 + 36)]
        if not ext_call.return_data[0]:
            emit 0x8b8fb41c: cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)])
        else:
            emit TokensSent(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}



}
