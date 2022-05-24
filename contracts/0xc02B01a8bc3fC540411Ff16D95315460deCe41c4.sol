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
    if last < block.number - 256:
        last = block.number - 256
    # nil
}



}
