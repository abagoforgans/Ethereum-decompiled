contract main {




// =====================  Runtime code  =====================


const name = 'Silvertoken'

const decimals = 8

const symbol = 'SLVT'


mapping of uint8 stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
address stor3;
uint256 transferFee;
uint256 transferFreeAmount;
uint256 transferDiscountAmount;
uint256 transferDiscountFee;
uint256 purchaseFee;
uint256 redemptionFee;
uint256 percentage;
address feeReturnAddress;
address sub_50883f13Address;
uint256 sub_829d8f7d;
uint256 sub_b4275654;
uint256 sub_93a6bb79;
uint256 multiplier;
uint256 tokenPrice;
uint256 sub_c0d32c56;
uint256 sub_a19bf3d2;
uint8 canPurchase;
uint8 canTransfer; offset 8
uint256 stor21; offset 8

function purchaseFee() {
    require stor0[address(msg.sender)]
    return purchaseFee
}

function multiplier() {
    require stor0[address(msg.sender)]
    return multiplier
}

function canPurchase() {
    require stor0[address(msg.sender)]
    return bool(canPurchase)
}

function isPermitted(address arg1) {
    return bool(stor0[address(arg1)])
}

function redemptionFee() {
    require stor0[address(msg.sender)]
    return redemptionFee
}

function sub_50883f13(?) {
    require stor0[address(msg.sender)]
    return sub_50883f13Address
}

function transferDiscountFee() {
    require stor0[address(msg.sender)]
    return transferDiscountFee
}

function tokenPrice() {
    require stor0[address(msg.sender)]
    return tokenPrice
}

function sub_829d8f7d(?) {
    require stor0[address(msg.sender)]
    return sub_829d8f7d
}

function sub_93a6bb79(?) {
    require stor0[address(msg.sender)]
    return sub_93a6bb79
}

function sub_a19bf3d2(?) {
    require stor0[address(msg.sender)]
    return sub_a19bf3d2
}

function transferFee() {
    require stor0[address(msg.sender)]
    return transferFee
}

function sub_b4275654(?) {
    require stor0[address(msg.sender)]
    return sub_b4275654
}

function sub_c0d32c56(?) {
    require stor0[address(msg.sender)]
    return sub_c0d32c56
}

function feeReturnAddress() {
    require stor0[address(msg.sender)]
    return feeReturnAddress
}

function percentage() {
    require stor0[address(msg.sender)]
    return percentage
}

function transferDiscountAmount() {
    require stor0[address(msg.sender)]
    return transferDiscountAmount
}

function canTransfer() {
    require stor0[address(msg.sender)]
    return bool(canTransfer)
}

function transferFreeAmount() {
    require stor0[address(msg.sender)]
    return transferFreeAmount
}

function kill() {
    require stor0[address(msg.sender)]
    selfdestruct(msg.sender)
}

function sub_6402cdc3(?) {
    require stor0[address(msg.sender)]
    purchaseFee = arg1
    return 0
}

function sub_2420f043(?) {
    require stor0[address(msg.sender)]
    sub_a19bf3d2 = arg1
    return 0
}

function sub_348cffd1(?) {
    require stor0[address(msg.sender)]
    sub_829d8f7d = arg1
    return 0
}

function sub_85e24b8a(?) {
    require stor0[address(msg.sender)]
    sub_93a6bb79 = arg1
    return 0
}

function sub_97e4f256(?) {
    require stor0[address(msg.sender)]
    sub_c0d32c56 = arg1
    return 0
}

function sub_cf565839(?) {
    require stor0[address(msg.sender)]
    sub_b4275654 = arg1
    return 0
}

function sub_28b8461d(?) {
    require stor0[address(msg.sender)]
    transferDiscountFee = arg1
    return 0
}

function sub_bc1af928(?) {
    require stor0[address(msg.sender)]
    sub_50883f13Address = arg1
    return 0
}

function setPercentage(uint256 arg1) {
    require stor0[address(msg.sender)]
    percentage = arg1
    return 0
}

function setMultiplier(uint256 arg1) {
    require stor0[address(msg.sender)]
    multiplier = arg1
    return 0
}

function setTokenPrice(uint256 arg1) {
    require stor0[address(msg.sender)]
    tokenPrice = arg1
    return 0
}

function setTransferFee(uint256 arg1) {
    require stor0[address(msg.sender)]
    transferFee = arg1
    return 0
}

function setRedemptionFee(uint256 arg1) {
    require stor0[address(msg.sender)]
    redemptionFee = arg1
    return 0
}

function setCanPurchase(bool arg1) {
    require stor0[address(msg.sender)]
    canPurchase = uint8(arg1)
    return 0
}

function setCanTransfer(bool arg1) {
    require stor0[address(msg.sender)]
    stor21 = Mask(248, 0, arg1)
    return 0
}

function permit(address arg1, bool arg2) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = uint8(arg2)
}

function setFeeReturnAddress(address arg1) {
    require stor0[address(msg.sender)]
    feeReturnAddress = arg1
    return 0
}

function setTransferFreeAmount(uint256 arg1) {
    require stor0[address(msg.sender)]
    transferFreeAmount = arg1
    return 0
}

function setTransferDiscountAmount(uint256 arg1) {
    require stor0[address(msg.sender)]
    transferDiscountAmount = arg1
    return 0
}

function _approve(address arg1, address arg2, uint256 arg3) {
    require stor0[address(msg.sender)]
    stor2[address(arg1)][address(arg2)] = arg3
    emit Approval(address(arg1), address(arg2), arg3);
    return 1
}

function _transfer(address arg1, address arg2, uint256 arg3) {
    require stor0[address(msg.sender)]
    require arg3 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg3
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    emit Transfer(address(arg1), address(arg2), arg3);
    return 1
}

function totalSupply() {
    require ext_code.size(0xd685a61bac88ccc520fcb069dbc9b2158b492d8b)
    delegate 0xd685a61bac88ccc520fcb069dbc9b2158b492d8b.0xf582790a with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(0xd685a61bac88ccc520fcb069dbc9b2158b492d8b)
    delegate 0xd685a61bac88ccc520fcb069dbc9b2158b492d8b.0xee50799e with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getTokensInAction() {
    require stor0[address(msg.sender)]
    require ext_code.size(0xaefc645c917a28c914d1c9211b1746d019739a41)
    delegate 0xaefc645c917a28c914d1c9211b1746d019739a41.0xeb4fc892 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(0xd685a61bac88ccc520fcb069dbc9b2158b492d8b)
    delegate 0xd685a61bac88ccc520fcb069dbc9b2158b492d8b.0x1dfc6d31 with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)]
    require arg1
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(0xd685a61bac88ccc520fcb069dbc9b2158b492d8b)
    delegate 0xd685a61bac88ccc520fcb069dbc9b2158b492d8b.0xa0ef8710 with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0xaefc645c917a28c914d1c9211b1746d019739a41)
    delegate 0xaefc645c917a28c914d1c9211b1746d019739a41.0x1676ff13 with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getTokensPrice(uint256 arg1, bool arg2) {
    require stor0[address(msg.sender)]
    require ext_code.size(0xaefc645c917a28c914d1c9211b1746d019739a41)
    delegate 0xaefc645c917a28c914d1c9211b1746d019739a41.0xddab0c28 with:
         gas gas_remaining wei
        args 1, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0xaefc645c917a28c914d1c9211b1746d019739a41)
    delegate 0xaefc645c917a28c914d1c9211b1746d019739a41.0x381514ca with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function _redeem(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)]
    require percentage
    require arg2 > 0
    require arg1
    require arg2 + (arg2 * redemptionFee / percentage) >= arg2
    require arg2 + (arg2 * redemptionFee / percentage) >= 0
    require arg2 + (arg2 * redemptionFee / percentage) >= arg2
    require stor1[address(arg1)] >= arg2 + (arg2 * redemptionFee / percentage)
    require arg2 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg2
    require stor1[stor13] + arg2 >= stor1[stor13]
    stor1[stor13] += arg2
    if arg2 * redemptionFee / percentage <= 0:
        emit 0xce4385af: address(arg1), arg2
    else:
        require arg2 * redemptionFee / percentage <= stor1[address(arg1)]
        stor1[address(arg1)] -= arg2 * redemptionFee / percentage
        require stor1[stor12] + (arg2 * redemptionFee / percentage) >= stor1[stor12]
        stor1[stor12] += arg2 * redemptionFee / percentage
        emit 0xce4385af: address(arg1), arg2
        if arg2 * redemptionFee / percentage > 0:
            emit Transfer(address(arg1), feeReturnAddress, arg2 * redemptionFee / percentage);
            emit FeeApplied(string arg1, address arg2, uint256 arg3):
                            address(arg1),
                            address(arg1),
                            arg2 * redemptionFee / percentage,
                            6,
                            'Redeem',
}

function purchase() payable {
    require canPurchase
    require purchaseFee + percentage
    require percentage
    require tokenPrice
    require msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice > 0
    require stor1[stor3] >= msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice
    require stor1[address(msg.sender)] + (msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice) >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice
    require msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice <= stor1[stor3]
    stor1[stor3] -= msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice
    if msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage <= 0:
        emit TokenPurchased(msg.sender, msg.value, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
        emit Transfer(stor3, msg.sender, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
    else:
        call feeReturnAddress with:
           value msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchased(msg.sender, msg.value, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
        emit Transfer(stor3, msg.sender, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
        if msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage > 0:
            emit FeeApplied(string arg1, address arg2, uint256 arg3):
                            stor3,
                            address(msg.sender),
                            msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage,
                            8,
                            'Purchase',
}

function _fallback() payable {
    require canPurchase
    require purchaseFee + percentage
    require percentage
    require tokenPrice
    require msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice > 0
    require stor1[stor3] >= msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice
    require stor1[address(msg.sender)] + (msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice) >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice
    require msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice <= stor1[stor3]
    stor1[stor3] -= msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice
    if msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage <= 0:
        emit TokenPurchased(msg.sender, msg.value, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
        emit Transfer(stor3, msg.sender, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
    else:
        call feeReturnAddress with:
           value msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchased(msg.sender, msg.value, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
        emit Transfer(stor3, msg.sender, msg.value * percentage / purchaseFee + percentage * multiplier / tokenPrice);
        if msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage > 0:
            emit FeeApplied(string arg1, address arg2, uint256 arg3):
                            stor3,
                            address(msg.sender),
                            msg.value * percentage / purchaseFee + percentage * purchaseFee / percentage,
                            8,
                            'Purchase',
}



}
