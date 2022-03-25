contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = msg.sender
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'test' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[311 len 782]
}



// =====================  Runtime code  =====================


array of uint256 word;
address stor1;

function getWord() {
    return word[0 len word.length]
}

function _fallback() payable {
    revert 
}

function setWord(string arg1) {
    require msg.sender == stor1
    word[] = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
