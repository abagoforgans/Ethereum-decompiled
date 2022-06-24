contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 profiles;

function owner() {
    return owner
}

function profiles(address arg1) {
    return profiles[arg1][0 len profiles[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_289e437c(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Only owner can call this function'
    profiles[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = arg1
    emit 0xc414b46f: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
