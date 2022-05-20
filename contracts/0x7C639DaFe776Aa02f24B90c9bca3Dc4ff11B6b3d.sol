contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 8074]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;

function getToken() {
    require msg.sender == owner
    return tokenAddress
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() {
  stop
}

function emergencyStop() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function release() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function setToken(address arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require not tokenAddress
    tokenAddress = arg1
}

function setWalletToClientAccount(bytes32 arg1, address arg2, bytes32 arg3) {
    require msg.sender == owner
    emit eSetWalletToClientAccount(arg1, address(arg2), arg3);
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function partnerAllocateRestrictedTokenTo(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    emit ePartnerAllocateRestrictedTokenTo(arg3, arg1, arg2);
}

function allocateRestrictedTokenToPartner(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    emit eAllocateRestrictedTokenToPartner(arg2, arg3, arg1);
}

function allocateRestrictedTokenTo(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    emit eAllocateRestrictedTokenTo(arg3, arg4, arg1, arg2);
}

function withdrawUnallocatedRestrictedToken(uint256 arg1, bytes32 arg2) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit eWithdrawUnallocatedRestrictedToken(arg1, arg2);
}

function confirmReturnToken(bytes32 arg1, string arg2, bytes32 arg3, bytes32 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    emit eConfirmReturnToken(Array(len=arg2.length, data=arg2[all]), arg5, arg6, arg9, arg1, arg3);
    emit eConfirmReturnToken(Array(len=arg2.length, data=arg2[all]), arg7, arg8, arg9, arg1, arg4);
}

function withdrawTokenToClientAccount(bytes32 arg1, bytes32 arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require arg4 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg4
    require ext_call.success
    emit eWithdrawTokenToClientAccount(arg2, arg4, arg3, arg1);
}

function cancelTransaction(bytes32 arg1, string arg2, bytes32 arg3, bytes32 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    emit eCancelTransactionEvent(Array(len=arg2.length, data=arg2[all]), arg5, arg6, arg9, arg1, arg3);
    emit eCancelTransactionEvent(Array(len=arg2.length, data=arg2[all]), arg7, arg8, arg9, arg1, arg4);
}

function confirmTokenTransferToBooking(bytes32 arg1, string arg2, bytes32 arg3, bytes32 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    emit eConfirmTokenTransferToBooking(Array(len=arg2.length, data=arg2[all]), arg3, arg4, arg5, arg6, arg7, arg8, arg1);
    emit eTransactionFeeForBooking(Array(len=arg2.length, data=arg2[all]), arg3, arg4, arg9, arg10, arg11, arg12, arg1);
}

function receiveTokenByClientAccount(string arg1, uint256 arg2, address arg3) {
    mem[128 len arg1.length] = arg1[all]
    require not uint8(stor0.field_160)
    require arg2 > 0
    mem[ceil32(arg1.length) + 128] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg3), address(this.address), arg2
    require ext_call.success
    if arg1.length:
        emit eReceiveTokenByClientAccount(arg2, arg3, mem[128]);
    else:
        emit eReceiveTokenByClientAccount(bytes32 arg1, uint256 arg2, address arg3):
                                          arg2,
                                          arg3,
        emit 0x0: arg2, arg3
}

function killTransaction(bytes32 arg1, bytes32 arg2, string arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == owner
    require not uint8(stor0.field_160)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit eKillTransactionEvent(arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 160);
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
        emit eKillTransactionEvent(arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 160);
}

function AdjustClientAccountBalance(bytes32 arg1, bytes32 arg2, bytes32 arg3, string arg4, uint256 arg5, string arg6, uint256 arg7) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg6.length
    mem[ceil32(arg4.length) + 160 len arg6.length] = arg6[all]
    require msg.sender == owner
    require not uint8(stor0.field_160)
    mem[ceil32(arg4.length) + ceil32(arg6.length) + 160] = arg2
    mem[ceil32(arg4.length) + ceil32(arg6.length) + 384 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + 384] = arg6.length
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + 416 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        emit eAdjustClientAccountBalance(arg2, arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg6.length) + 384 len arg6.length + arg4.length + -ceil32(arg4.length) + 32]), arg5, arg4.length + 224, arg7, arg1);
    else:
        mem[floor32(arg6.length) + arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + 416] = mem[floor32(arg6.length) + arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + -(arg6.length % 32) + 448 len arg6.length % 32]
        emit eAdjustClientAccountBalance(arg2, arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg6.length) + 384 len floor32(arg6.length) + arg4.length + -ceil32(arg4.length) + 64]), arg5, arg4.length + 224, arg7, arg1);
}



}
