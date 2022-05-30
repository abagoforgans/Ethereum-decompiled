contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function getRandomNumber(int256 arg1, int256 arg2) {
    stor0++
    stor1 += 2
    if 0x769ffe070eb0d083b9576eeda5f30d9a46a32973 != msg.sender:
        if arg2 - arg1:
            return ((sha3(stor0 + (3 * stor1) + tx.origin + (4 * block.timestamp) + this.address + block.coinbase) % arg2 - arg1) + arg1)
    else:
        if arg2 - arg1:
            return ((sha3(stor0 + (2 * stor1) + tx.origin + (4 * block.timestamp) + this.address + block.coinbase) % arg2 - arg1) + arg1)
    ('iszero', ('add', ('param', 'arg2'), ('mul', -1, ('param', 'arg1'))))
    revert
}



}
