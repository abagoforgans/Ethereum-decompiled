contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transferToken(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg4.length <= 0:
        idx = 0
        while idx < arg4.length:
            require idx < 0
            require idx < arg4.length
            require idx < 0
            require idx < arg4.length
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 0:
            require idx < 0
            require idx < arg4.length
            require idx < 0
            require idx < arg4.length
            idx = idx + 1
            continue 
    require arg4.length >= 0
    require arg4.length <= 0
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
