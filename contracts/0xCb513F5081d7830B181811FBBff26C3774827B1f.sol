contract main {




// =====================  Runtime code  =====================


address tokenAddress;

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function doAirdrop(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + arg1 + 36)])
        mem[164] = arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg1 + 36)]), arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return arg1.length
}



}
