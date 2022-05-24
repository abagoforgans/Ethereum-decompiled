contract main {




// =====================  Runtime code  =====================


#
#  - redeemWithdrawalCertificate(string arg1, uint256 arg2, address arg3, bytes arg4)
#  - generateWithdrawalHash(string arg1, uint256 arg2, address arg3, uint256 arg4)
#
address owner;
address pendingOwner;
mapping of uint8 stor2;
mapping of uint256 nonces;
address tokenAddress;
address tokenHolderAddress;

function tokenHolder() {
    return tokenHolderAddress
}

function signers(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function nonces(bytes32 arg1) {
    return nonces[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function addSigner(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function removeSigner(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function updateTokenHolder(address arg1) {
    require msg.sender == owner
    tokenHolderAddress = arg1
    emit TokenHolderChanged(tokenHolderAddress, arg1);
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function setNonce(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    require arg2 > nonces[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]]
    nonces[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]] = arg2
    mem[arg1.length + ceil32(arg1.length) + 160] = nonces[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]]
    emit AccountNonceChanged(mem[arg1.length + ceil32(arg1.length) + 160], arg2);
}



}
