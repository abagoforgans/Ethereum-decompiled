contract main {




// =====================  Runtime code  =====================


const sub_4baf43e4(?) = 2


uint8 stor0; offset 160
address owner;
array of uint256 contactInformation;
mapping of uint8 stor2;
address monethaGatewayAddress;
uint32 stor4;
address merchantWalletAddress;
uint256 merchantIdHash;
mapping of struct withdrawals;

function isMonethaAddress(address arg1) {
    return bool(stor2[arg1])
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function paused() {
    return bool(stor0)
}

function withdrawals(uint256 arg1) {
    require withdrawals[arg1].field_0 <= 2
    return withdrawals[arg1].field_0, withdrawals[arg1].field_256, withdrawals[arg1].field_512, withdrawals[arg1].field_768
}

function monethaGateway() {
    return monethaGatewayAddress
}

function owner() {
    return owner
}

function merchantWallet() {
    return address(merchantWalletAddress)
}

function merchantIdHash() {
    return merchantIdHash
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMonethaGateway(address arg1) {
    require msg.sender == owner
    require arg1
    monethaGatewayAddress = arg1
}

function setContactInformation(string arg1) {
    require msg.sender == owner
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMonethaAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    emit MonethaAddressSet(address(arg1), arg2);
}

function setMerchantWallet(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1)
    call arg1.0xf0daba01 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == merchantIdHash
    address(merchantWalletAddress) = arg1
}

function withdrawRefund(uint256 arg1) {
    require not stor0
    require withdrawals[arg1].field_0 <= 2
    require 1 == withdrawals[arg1].field_0
    require not withdrawals[arg1].field_768
    withdrawals[arg1].field_0 = 2
    call withdrawals[arg1].field_512 with:
       value withdrawals[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PaymentWithdrawn(withdrawals[arg1].field_256, arg1, withdrawals[arg1].field_512);
}

function refundPayment(uint256 arg1, address arg2, string arg3) payable {
    require stor2[msg.sender]
    require not stor0
    require arg1 > 0
    require arg2
    require msg.value > 0
    require withdrawals[arg1].field_0 <= 2
    require not withdrawals[arg1].field_0
    withdrawals[arg1].field_0 = 1
    withdrawals[arg1].field_256 = msg.value
    withdrawals[arg1].field_512 = arg2
    withdrawals[arg1].field_768 = 0
    withdrawals[arg1].field_1024 = 0
    emit PaymentRefunding(msg.value, Array(len=arg3.length, data=arg3[all]), arg1, arg2);
}

function withdrawTokenRefund(uint256 arg1, address arg2) {
    require not stor0
    require arg2
    require withdrawals[arg1].field_0 <= 2
    require 1 == withdrawals[arg1].field_0
    require withdrawals[arg1].field_768 == arg2
    withdrawals[arg1].field_0 = 2
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args withdrawals[arg1].field_512, withdrawals[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PaymentWithdrawn(withdrawals[arg1].field_256, arg1, withdrawals[arg1].field_512);
}

function refundTokenPayment(uint256 arg1, address arg2, string arg3, uint256 arg4, address arg5) {
    require stor2[msg.sender]
    require not stor0
    require arg1 > 0
    require arg2
    require arg4 > 0
    require arg5
    require withdrawals[arg1].field_0 <= 2
    require not withdrawals[arg1].field_0
    require ext_code.size(arg5)
    call arg5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    withdrawals[arg1].field_0 = 1
    withdrawals[arg1].field_256 = arg4
    withdrawals[arg1].field_512 = arg2
    withdrawals[arg1].field_768 = arg5
    emit PaymentRefunding(arg4, Array(len=arg3.length, data=arg3[all]), arg1, arg2);
}

function payForOrder(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require not stor0
    require arg1 > 0
    require arg2
    require msg.value > 0
    require ext_code.size(address(merchantWalletAddress))
    call address(merchantWalletAddress).0x969596d6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(monethaGatewayAddress)
    if not ext_call.return_data[12 len 20]:
        call monethaGatewayAddress.acceptPayment(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, uint32(stor4), arg3, address(arg2), arg4, 2
    else:
        call monethaGatewayAddress.acceptPayment(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 0, arg3, address(arg2), arg4, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit OrderPaidInEther(msg.value, arg3, ext_call.return_data[0], arg1, arg2);
}

function payForOrderInTokens(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) {
    require not stor0
    require arg1 > 0
    require arg2
    require arg5 > 0
    require arg4
    require ext_code.size(address(merchantWalletAddress))
    call address(merchantWalletAddress).0x969596d6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args monethaGatewayAddress, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(monethaGatewayAddress)
    if not address(ext_call.return_data[0]):
        call monethaGatewayAddress.acceptTokenPayment(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor4), arg3, address(arg4), arg5
    else:
        call monethaGatewayAddress.acceptTokenPayment(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 0, arg3, address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OrderPaidInToken(arg5, arg3, arg1, arg2, arg4);
}



}
