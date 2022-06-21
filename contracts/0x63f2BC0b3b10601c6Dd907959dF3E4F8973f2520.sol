contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;

function _fallback() payable {
    revert
}

function message() {
    mem[128] = 'bdimych test juy mar  7 19:30:45'
    mem[160] = ' -05 2019'
    stor0.length = 83
    s = 0
    idx = 128
    while 169 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
}



}
