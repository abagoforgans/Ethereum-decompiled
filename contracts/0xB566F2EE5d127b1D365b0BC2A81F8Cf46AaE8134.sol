contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;

function _fallback() payable {
    revert
}

function message() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'bubu' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
