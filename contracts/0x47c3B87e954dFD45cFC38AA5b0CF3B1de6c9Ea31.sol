contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 776]




// =====================  Runtime code  =====================


mapping of struct stor0;
array of address tokenAtIndex;

function getTokenCount() {
    return tokenAtIndex.length
}

function getTokenAtIndex(uint256 arg1) {
    require arg1 < tokenAtIndex.length
    return address(tokenAtIndex[arg1])
}

function _fallback() payable {
    revert
}

function getToken(address arg1) {
    return stor0[address(arg1)].field_0, stor0[address(arg1)].field_256, stor0[address(arg1)].field_512
}

function sub_03c75126(?) {
    if 0x61d0407edb149dc453c47fe31139fae9c1472da6 == arg1:
        return 0
    stor0[address(arg1)].field_0 = arg2
    stor0[address(arg1)].field_256 = arg3
    tokenAtIndex.length++
    if not tokenAtIndex.length <= tokenAtIndex.length + 1:
        idx = tokenAtIndex.length + 1
        while tokenAtIndex.length > idx:
            uint256(tokenAtIndex[idx]) = 0
            idx = idx + 1
            continue 
    address(tokenAtIndex[tokenAtIndex.length]) = arg1
    stor0[address(arg1)].field_512 = tokenAtIndex.length
    return (tokenAtIndex.length - 1)
}



}
