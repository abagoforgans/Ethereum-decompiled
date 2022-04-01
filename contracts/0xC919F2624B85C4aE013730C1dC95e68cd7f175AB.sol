contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 669]




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isAddressAllowedInPresale(address arg1) {
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function removePresaleContributor(address arg1) {
    stor0[address(arg1)] = 0
}

function addPresaleContributors(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}



}
