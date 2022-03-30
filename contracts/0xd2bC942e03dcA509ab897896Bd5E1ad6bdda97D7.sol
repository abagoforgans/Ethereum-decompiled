contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 141]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function uintToBytes(uint256 arg1) {
    if 0 == arg1:
        return '0'
    s = 0
    idx = arg1
    while idx > 0:
        s = s / 256 or (idx % 10) + 48 << 248
        idx = idx / 10
        continue 
    return s
}



}
