contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'slomi' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[242 len 600]
}



// =====================  Runtime code  =====================


array of uint256 name;

function name() {
    return name[0 len name.length]
}

function _fallback() payable {
    revert 
}

function changeName(string arg1) {
    name[] = Array(len=arg1.length, data=arg1[all])
}



}
