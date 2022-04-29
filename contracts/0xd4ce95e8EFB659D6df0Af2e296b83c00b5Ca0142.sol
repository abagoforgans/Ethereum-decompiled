contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 509]




// =====================  Runtime code  =====================


array of uint256 stor0;

function assignment() {
    revert
}

function memoryAlloc() {
    revert
}

function _fallback() payable {
    revert
}

function storageAlloc() {
    stor0.length++
    if not stor0.length > stor0.length + 1:
        stor0[stor0.length] = 2
        stor0.length++
    else:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
        stor0[stor0.length] = 2
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = stor0.length + 1
            while stor0.length > idx:
                stor0[idx] = 0
                idx = idx + 1
                continue 
    stor0[stor0.length] = 3
    require stor0.length == 4
}



}
