contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 1
    stor4 = 2
    stor0 = msg.sender
    return code.data[66 len 2521]
}



// =====================  Runtime code  =====================


uint64 stor0;
uint128 stor0; offset 64
address contractOwner;
uint64 stor1;
address pendingContractOwner;
address assetAddress;
uint256 buyPrice;
uint256 sellPrice;

function asset() {
    return assetAddress
}

function sellPrice() {
    return sellPrice
}

function pendingContractOwner() {
    return address(pendingContractOwner)
}

function buyPrice() {
    return buyPrice
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
  stop
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    address(pendingContractOwner) = arg1
    return 1
}

function init(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if assetAddress:
        return 0
    assetAddress = arg1
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    if arg2 < arg1:
        return 0
    buyPrice = arg1
    sellPrice = arg2
    return 1
}

function claimContractOwnership() {
    if address(pendingContractOwner) != msg.sender:
        return 0
    uint64(stor0.field_0) = uint64(stor1)
    Mask(96, 0, stor0.field_64) = 0
    address(pendingContractOwner) = 0
    return 1
}

function withdrawEth(address arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    if eth.balance(this.address) < arg2:
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit WithdrawEth(arg2, arg1);
    return 1
}

function withdrawAllEth(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if eth.balance(this.address) < eth.balance(this.address):
        return 0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit WithdrawEth(eth.balance(this.address), arg1);
    return 1
}

function buy(uint256 arg1, uint256 arg2) payable {
    require arg2 >= sellPrice
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require arg2 * arg1 == msg.value
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Buy(arg1, arg2 * arg1, msg.sender);
    return 1
}

function withdrawTokens(address arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit WithdrawTokens(arg2, arg1);
    return 1
}

function sell(uint256 arg1, uint256 arg2) {
    if arg2 > buyPrice:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg1:
        return 0
    if eth.balance(this.address) < arg1 * arg2:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call msg.sender with:
       value arg1 * arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Sell(arg1, arg1 * arg2, msg.sender);
    return 1
}

function withdrawAllTokens(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0]:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit WithdrawTokens(ext_call.return_data[0], arg1);
    return 1
}

function withdrawAll(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0]:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit WithdrawTokens(ext_call.return_data[0], arg1);
    require contractOwner == msg.sender
    require eth.balance(this.address) >= eth.balance(this.address)
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawEth(eth.balance(this.address), arg1);
    return 1
}



}
