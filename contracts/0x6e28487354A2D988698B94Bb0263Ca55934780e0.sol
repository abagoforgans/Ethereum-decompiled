contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address sub_b32c5c45Address;
address sub_b43114f8Address;
address sub_21f1f766Address;
mapping of address linkClaimedTo;

function sub_21f1f766(?) {
    return sub_21f1f766Address
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function stopped() {
    return bool(uint8(stor0.field_168))
}

function owner() {
    return owner
}

function sub_b32c5c45(?) {
    return sub_b32c5c45Address
}

function sub_b43114f8(?) {
    return sub_b43114f8Address
}

function linkClaimedTo(address arg1) {
    return linkClaimedTo[address(arg1)]
}

function _fallback() payable {
    revert
}

function isLinkClaimed(address arg1) {
    return not not linkClaimedTo[address(arg1)]
}

function stop() {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    Mask(88, 0, stor0.field_168) = 1
    emit Stop()
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function verifyReceiverAddress(address arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function verifyLinkPrivateKey(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2, arg3), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function checkWithdrawal(address arg1, uint256 arg2, address arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require not linkClaimedTo[address(arg3)]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg3, arg2), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == sub_21f1f766Address
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == arg3
    return 1
}

function withdraw(address arg1, uint256 arg2, address arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require not uint8(stor0.field_160)
    require not uint8(stor0.field_168)
    require not linkClaimedTo[address(arg3)]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg3, arg2), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == sub_21f1f766Address
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == arg3
    linkClaimedTo[address(arg3)] = arg1
    require ext_code.size(sub_b32c5c45Address)
    call sub_b32c5c45Address.0x23b872dd with:
         gas gas_remaining wei
        args sub_b43114f8Address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogWithdraw(address(arg1), block.timestamp, arg3, arg2);
    return 1
}



}
