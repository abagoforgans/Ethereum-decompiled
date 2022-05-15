contract main {




// =====================  Runtime code  =====================


#
#  - batchRelay(bytes16[] arg1, address[] arg2, address[] arg3, uint256[] arg4, uint16[] arg5, uint128[] arg6, uint8[] arg7, bytes32[] arg8, bytes32[] arg9, uint8[] arg10)
#
address arbitratorAddress;
address owner;
uint32 requestCancellationMinimumTime; offset 160
address relayerAddress;
uint256 feesAvailableForWithdraw;
mapping of struct escrows;

function escrows(bytes32 arg1) {
    return bool(escrows[arg1].field_0), escrows[arg1].field_0, escrows[arg1].field_40
}

function requestCancellationMinimumTime() {
    return requestCancellationMinimumTime
}

function arbitrator() {
    return arbitratorAddress
}

function relayer() {
    return relayerAddress
}

function owner() {
    return owner
}

function feesAvailableForWithdraw() {
    return feesAvailableForWithdraw
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    owner = arg1
}

function setRelayer(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    relayerAddress = arg1
}

function setArbitrator(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    arbitratorAddress = arg1
}

function setRequestCancellationMinimumTime(uint32 arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    requestCancellationMinimumTime = arg1
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawFees(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if arg2 > feesAvailableForWithdraw:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount is higher than amount available'
    feesAvailableForWithdraw -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function disableSellerCancel(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5) {
    if arg3 != msg.sender:
        revert with 0, 'Must be buyer'
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        return 0
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8:
        return 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 = 0
    emit SellerCancelDisabled(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
    if msg.sender == relayerAddress:
        escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 = uint128(escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 + (28944 * block.gasprice))
    return 1
}

function sellerRequestCancel(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5) {
    if arg2 != msg.sender:
        revert with 0, 'Must be seller'
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        return 0
    if escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 != 1:
        return 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 = uint32(requestCancellationMinimumTime + block.timestamp)
    emit SellerRequestedCancel(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
    if msg.sender == relayerAddress:
        escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 = uint128(escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 + (29507 * block.gasprice))
    return 1
}

function buyerCancel(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5) {
    if arg3 != msg.sender:
        revert with 0, 'Must be buyer'
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        return 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0 = 0
    emit CancelledByBuyer(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
    if msg.sender == relayerAddress:
        if arg4 >= arg4 - uint128((46255 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40):
            feesAvailableForWithdraw += uint128((46255 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40)
            call arg2 with:
               value arg4 - uint128((46255 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg4 >= arg4 - escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40:
            feesAvailableForWithdraw += escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40
            call arg2 with:
               value arg4 - escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function createEscrow(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5, uint32 arg6, uint32 arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) payable {
    if escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        revert with 0, 'Trade already exists'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5), arg6, arg7)), arg8 << 248, arg9, arg10) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != relayerAddress:
        revert with 0, 'Must be relayer'
    if block.timestamp >= arg7:
        revert with 0, 'Signature has expired'
    if arg4 != msg.value:
        revert with 0, 'Incorrect ether sent'
    if msg.value <= 0:
        revert with 0, 'Incorrect ether sent'
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0 = 1
    if not arg6:
        escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 = 1
        escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_16 = 0
    else:
        escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 = uint32(block.timestamp + arg6)
        escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 = 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_168 = 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_256 = 0
    emit Created(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
}

function release(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5) {
    if arg2 != msg.sender:
        revert with 0, 'Must be seller'
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        return 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0 = 0
    emit Released(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
    if msg.sender == relayerAddress:
        if arg4 >= arg4 - uint128((46588 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) - (arg4 * arg5 / 10000):
            feesAvailableForWithdraw = uint128((46588 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) + (arg4 * arg5 / 10000) + feesAvailableForWithdraw
            call arg3 with:
               value arg4 - uint128((46588 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) - (arg4 * arg5 / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg4 >= arg4 - escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 - (arg4 * arg5 / 10000):
            feesAvailableForWithdraw = escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 + (arg4 * arg5 / 10000) + feesAvailableForWithdraw
            call arg3 with:
               value arg4 - escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 - (arg4 * arg5 / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sellerCancel(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5) {
    if arg2 != msg.sender:
        revert with 0, 'Must be seller'
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        return 0
    if escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 <= 1:
        return 0
    if escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_8 > block.timestamp:
        return 0
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0 = 0
    emit CancelledBySeller(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
    if msg.sender == relayerAddress:
        if arg4 >= arg4 - uint128((46815 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40):
            feesAvailableForWithdraw += uint128((46815 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40)
            call arg2 with:
               value arg4 - uint128((46815 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg4 >= arg4 - escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40:
            feesAvailableForWithdraw += escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40
            call arg2 with:
               value arg4 - escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function resolveDispute(bytes16 arg1, address arg2, address arg3, uint256 arg4, uint16 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint8 arg9) {
    if arbitratorAddress != msg.sender:
        revert with 0, 'Must be arbitrator'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(136, 120, uint8(arg1), 6, 0, 0) >> 120)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg3:
        if address(signer) != arg2:
            revert with 0, 'Must be buyer or seller'
    if not escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0:
        revert with 0, 'Escrow does not exist'
    if arg9 > 100:
        revert with 0, '_buyerPercent must be 100 or lower'
    if arg4 < arg4 - uint128((36100 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40):
        revert with 0, 'Overflow error'
    feesAvailableForWithdraw += uint128((36100 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40)
    escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_0 = 0
    emit DisputeResolved(sha3(arg1, arg2, arg3, uint64(arg4), Mask(192, 0, arg4), arg5));
    call arg3 with:
       value (arg4 * arg9) - (uint128((36100 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) * arg9) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value (arg4 * uint8(-arg9 + 100)) - (uint128((36100 * block.gasprice) + escrows[arg1][arg2][arg3][uint64(arg4)][Mask(192, 0, arg4)][arg5].field_40) * uint8(-arg9 + 100)) / 100 wei
         gas 2300 * is_zero(value) wei
}



}
