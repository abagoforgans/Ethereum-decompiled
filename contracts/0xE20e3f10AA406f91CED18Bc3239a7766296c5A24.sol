contract main {




// =====================  Runtime code  =====================


const sub_4baf43e4(?) = 2

const sub_c4cc3f4d(?) = 1000

const FEE_PERMILLE = 15


uint8 stor0; offset 160
address owner;
array of uint256 contactInformation;
mapping of uint8 stor2;
address monethaGatewayAddress;
address merchantHistoryAddress;
uint32 stor5;
address merchantWalletAddress;
uint256 merchantIdHash;
mapping of struct orders;

function isMonethaAddress(address arg1) {
    return bool(stor2[arg1])
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function merchantHistory() {
    return merchantHistoryAddress
}

function paused() {
    return bool(stor0)
}

function monethaGateway() {
    return monethaGatewayAddress
}

function owner() {
    return owner
}

function orders(uint256 arg1) {
    require orders[arg1].field_0 <= 6
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           orders[arg1].field_1792
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

function securePay(uint256 arg1) payable {
    require not stor0
    require orders[arg1].field_0 <= 6
    require 1 == orders[arg1].field_0
    require not orders[arg1].field_1280
    require msg.sender == orders[arg1].field_768
    require msg.value == orders[arg1].field_256
    orders[arg1].field_0 = 2
}

function setMerchantDealsHistory(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1)
    call arg1.0xf0daba01 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == merchantIdHash
    merchantHistoryAddress = arg1
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

function withdrawTokenRefund(uint256 arg1) {
    require not stor0
    require orders[arg1].field_0 <= 6
    require 4 == orders[arg1].field_0
    require orders[arg1].field_1280
    require ext_code.size(orders[arg1].field_1280)
    call orders[arg1].field_1280.0xa9059cbb with:
         gas gas_remaining wei
        args orders[arg1].field_1024, orders[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    orders[arg1].field_0 = 5
}

function withdrawRefund(uint256 arg1) {
    require not stor0
    require orders[arg1].field_0 <= 6
    require 4 == orders[arg1].field_0
    require not orders[arg1].field_1280
    require orders[arg1].field_1792 <= orders[arg1].field_256
    call orders[arg1].field_1024 with:
       value orders[arg1].field_256 - orders[arg1].field_1792 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    orders[arg1].field_0 = 5
}

function secureTokenPay(uint256 arg1) {
    require not stor0
    require orders[arg1].field_0 <= 6
    require 1 == orders[arg1].field_0
    require msg.sender == orders[arg1].field_768
    require orders[arg1].field_1280
    require ext_code.size(orders[arg1].field_1280)
    call orders[arg1].field_1280.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, orders[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    orders[arg1].field_0 = 2
}

function addOrder(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, address arg6, uint256 arg7) {
    require not stor0
    require orders[arg1].field_0 <= 6
    require 0 == orders[arg1].field_0
    require arg1 > 0
    require arg2 > 0
    require arg5 >= 0
    require 15 * arg2 / 15 == arg2
    require arg5 <= 15 * arg2 / 1000
    require arg3
    require arg4
    require not orders[arg1].field_256
    require not orders[arg1].field_512
    orders[arg1].field_0 = 1
    orders[arg1].field_256 = arg2
    orders[arg1].field_512 = arg5
    orders[arg1].field_768 = arg3
    orders[arg1].field_1024 = arg4
    orders[arg1].field_1280 = arg6
    orders[arg1].field_1536 = arg7
    orders[arg1].field_1792 = 0
}

function cancelOrder(uint256 arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) {
    require stor2[msg.sender]
    require not stor0
    require orders[arg1].field_0 <= 6
    require 1 == orders[arg1].field_0
    require arg5.length > 0
    require ext_code.size(merchantHistoryAddress)
    call merchantHistoryAddress.0x5d818e6b with:
         gas gas_remaining wei
        args 0, uint32(arg1), orders[arg1].field_1024, arg2 << 224, arg3, 0, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(merchantWalletAddress))
    call address(merchantWalletAddress).0xe25a51b6 with:
         gas gas_remaining wei
        args 0, 64, arg3 << 224, 5, 'total'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(merchantHistoryAddress)
    call merchantHistoryAddress.0xa0e5e821 with:
         gas gas_remaining wei
        args 0, uint32(arg1), orders[arg1].field_1024, arg2 << 224, arg3, arg4, 192, arg5.length, arg5[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    orders[arg1].field_0 = 6
}

function refundPayment(uint256 arg1, uint32 arg2, uint32 arg3, uint256 arg4, string arg5) {
    require stor2[msg.sender]
    require not stor0
    require orders[arg1].field_0 <= 6
    require 2 == orders[arg1].field_0
    require arg5.length > 0
    require ext_code.size(merchantHistoryAddress)
    call merchantHistoryAddress.0x5d818e6b with:
         gas gas_remaining wei
        args 0, uint32(arg1), orders[arg1].field_1024, arg2 << 224, arg3, 0, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(merchantWalletAddress))
    call address(merchantWalletAddress).0xe25a51b6 with:
         gas gas_remaining wei
        args 0, 64, arg3 << 224, 5, 'total'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(merchantHistoryAddress)
    call merchantHistoryAddress.0x188c668c with:
         gas gas_remaining wei
        args 0, uint32(arg1), orders[arg1].field_1024, arg2 << 224, arg3, arg4, 192, arg5.length, arg5[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    orders[arg1].field_0 = 4
}

function processPayment(uint256 arg1, uint32 arg2, uint32 arg3, uint256 arg4) {
    require stor2[msg.sender]
    require not stor0
    require orders[arg1].field_0 <= 6
    require 2 == orders[arg1].field_0
    require ext_code.size(address(merchantWalletAddress))
    call address(merchantWalletAddress).0x969596d6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not orders[arg1].field_1280:
        require ext_code.size(monethaGatewayAddress)
        if not ext_call.return_data[12 len 20]:
            call monethaGatewayAddress.acceptPayment(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
               value orders[arg1].field_256 wei
                 gas gas_remaining wei
                args 0, uint32(stor5), orders[arg1].field_512, orders[arg1].field_1024, orders[arg1].field_1536, 2
        else:
            call monethaGatewayAddress.acceptPayment(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
               value orders[arg1].field_256 wei
                 gas gas_remaining wei
                args 0, 0, orders[arg1].field_512, orders[arg1].field_1024, orders[arg1].field_1536, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            orders[arg1].field_1792 = ext_call.return_data[0]
    else:
        require ext_code.size(orders[arg1].field_1280)
        call orders[arg1].field_1280.0xa9059cbb with:
             gas gas_remaining wei
            args monethaGatewayAddress, orders[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(monethaGatewayAddress)
        if not ext_call.return_data[12 len 20]:
            call monethaGatewayAddress.acceptTokenPayment(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(stor5), orders[arg1].field_512, orders[arg1].field_1280, orders[arg1].field_256
        else:
            call monethaGatewayAddress.acceptTokenPayment(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, 0, orders[arg1].field_512, orders[arg1].field_1280, orders[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(merchantHistoryAddress)
    call merchantHistoryAddress.0x5d818e6b with:
         gas gas_remaining wei
        args 0, uint32(arg1), orders[arg1].field_1024, arg2 << 224, arg3, 1, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(merchantWalletAddress))
    call address(merchantWalletAddress).0xe25a51b6 with:
         gas gas_remaining wei
        args 0, 64, arg3 << 224, 5, 'total'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    orders[arg1].field_0 = 3
}



}
