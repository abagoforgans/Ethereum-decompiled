contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg4.length <= 4:
        idx = 0
        while idx < arg4.length:
            require idx < 4
            require idx < arg4.length
            require idx < 4
            require idx < arg4.length
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 4:
            require idx < 4
            require idx < arg4.length
            require idx < 4
            require idx < arg4.length
            idx = idx + 1
            continue 
    require arg4.length >= 4
    require arg4.length <= 4
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
