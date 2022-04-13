contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 23
    stor0.length.field_8 = 'Hello, Heads and Hands!' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[269 len 734]
}



// =====================  Runtime code  =====================


array of uint256 data;

function getData() {
    return data[0 len data.length]
}

function _fallback() payable {
    revert
}

function setData(string arg1) {
    data[] = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
