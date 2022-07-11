contract main {




// =====================  Runtime code  =====================


array of address stor0;

function _fallback() payable {
    revert
}

function ifillArray() {
    if stor0.length < 1500:
        idx = 0
        while idx < 350:
            stor0.length++
            mem[0] = 0
            stor0[stor0.length] = msg.sender
            idx = idx + 1
            continue 
        return 1
    stor0.length = 0
    idx = 0
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    return 0
}



}
