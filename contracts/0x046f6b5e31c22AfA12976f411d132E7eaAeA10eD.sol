contract main {




// =====================  Runtime code  =====================


mapping of uint256 blockhashes;
uint256 last;

function last() {
    return last
}

function blockhashes(uint256 arg1) {
    return blockhashes[arg1]
}

function _fallback() payable {
    revert
}

function store() {
    if last >= block.number - 256:
        idx = last
        while idx < block.number:
            mem[0] = last
            mem[32] = 0
            blockhashes[stor1] = block.hash(last)
            idx = idx + 1
            continue 
    else:
        idx = block.number - 256
        while idx < block.number:
            mem[0] = last
            mem[32] = 0
            blockhashes[stor1] = block.hash(last)
            idx = idx + 1
            continue 
    last = block.number
}



}
