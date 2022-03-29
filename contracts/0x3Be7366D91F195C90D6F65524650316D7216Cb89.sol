contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    mem[128 len 130] = code.data[295 len 130]
    stor0.length = 261
    s = 0
    idx = 128
    while 258 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[244 len 51]
    revert
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
