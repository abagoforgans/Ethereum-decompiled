contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 0
    stor0.length.field_8 = mem[128 len 31]
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[201 len 642]
}



// =====================  Runtime code  =====================


array of uint256 hash;

function getHash() payable {
    return hash[0 len hash.length]
}

function _fallback() payable {
  stop
}

function sub_f748aab5(?) payable {
    hash[] = Array(len=arg1.length, data=arg1[all])
}



}
