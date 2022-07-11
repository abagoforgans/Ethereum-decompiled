contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address tokenSenderAddress; offset 8
array of uint256 lol;

function sub_63ccd85f(?) payable {
    return bool(stor0)
}

function lol() payable {
    return lol[0 len lol.length].field_0
}

function tokenSender() payable {
    return tokenSenderAddress
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stor0 = 1
    bool(lol.length) = 0
    lol.length.field_1 = 9
    lol.length.field_8 = 'tokenjetu' / 256
    idx = 0
    while lol.length + 31 / 32 > idx:
        lol[idx].field_0 = 0
        idx = idx + 1
        continue 
    tokenSenderAddress = arg1
}



}
