contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 11
    stor0.length.field_8 = 'Hello World' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[276 len 755]
}



// =====================  Runtime code  =====================


array of uint256 word;

function word() {
    return word[0 len word.length]
}

function getWord() {
    return word[0 len word.length]
}

function _fallback() payable {
    revert
}



}
