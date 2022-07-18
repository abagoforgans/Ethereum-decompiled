contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
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
    if this.address == arg1:
        revert with 0, '2'
    return sha3(spendNonce, this.address, arg2, arg1)
}

function spend(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    if arg2 > eth.balance(this.address):
        revert with 0, '3'
    if this.address == arg1:
        revert with 0, '2'
    signer = erecover(sha3(spendNonce, this.address, arg2, arg1), arg3 + 27 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    signer = erecover(sha3(spendNonce, this.address, arg2, arg1), arg6 + 27 << 248, arg7, arg8) 
    if address(signer) == address(signer):
        revert with 0, '5'
    if not stor0[address(signer)]:
        revert with 0, '5'
    if not stor0[address(signer)]:
        revert with 0, '5'
    spendNonce++
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Spent(address(arg1), arg2);
}



}
