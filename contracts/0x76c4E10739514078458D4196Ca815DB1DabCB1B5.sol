contract main {




// =====================  Runtime code  =====================


#
#  - spend(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8)
#
uint256 spendNonce;
uint256 unchainedMultisigVersionMajor;
uint256 unchainedMultisigVersionMinor;

function unchainedMultisigVersionMajor() {
    return unchainedMultisigVersionMajor
}

function spendNonce() {
    return spendNonce
}

function unchainedMultisigVersionMinor() {
    return unchainedMultisigVersionMinor
}

function _fallback() payable {
    emit Funded(eth.balance(this.address));
}

function generateMessageToSign(address arg1, uint256 arg2) {
    if arg1 == this.address:
        revert with 0, '2'
    return sha3(spendNonce, this.address, arg2, Mask(96, 64, arg1) >> 64 >> 512, mem[328 len 8])
}



}
