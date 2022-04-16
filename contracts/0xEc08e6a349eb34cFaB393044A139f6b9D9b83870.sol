contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 630]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function get(bytes32 arg1) {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor0.length
        return stor0[idx].field_256
    return 0
}

function set(bytes32 arg1, uint256 arg2) {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor0.length
        stor0[idx].field_256 += arg2
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor0[stor0.length].field_0 = arg1
    stor0[stor0.length].field_256 = arg2
}



}
