contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[1681 len 20]
    stor1 = code.data[1713 len 20]
    return code.data[141 len 1528]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address multisigAddress;
uint256 totalTransferred;
uint256 purchaserCount;
mapping of uint256 paymentsByPurchaser;
mapping of uint256 paymentsByBenefactor;

function purchaserCount() {
    return purchaserCount
}

function multisig() {
    return multisigAddress
}

function owner() {
    return owner
}

function totalTransferred() {
    return totalTransferred
}

function halted() {
    return bool(stor0)
}

function paymentsByPurchaser(uint128 arg1) {
    return paymentsByPurchaser[arg1]
}

function paymentsByBenefactor(address arg1) {
    return paymentsByBenefactor[arg1]
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function _fallback() payable {
    require not stor0
    require msg.value
    require msg.sender
    emit PaymentForwarded(address(msg.sender), msg.value, 0, msg.sender);
    require msg.value + totalTransferred >= totalTransferred
    totalTransferred += msg.value
    if not paymentsByPurchaser[0]:
        purchaserCount++
    require msg.value + paymentsByPurchaser[0] >= paymentsByPurchaser[0]
    paymentsByPurchaser[0] += msg.value
    require msg.value + paymentsByBenefactor[address(msg.sender)] >= paymentsByBenefactor[address(msg.sender)]
    paymentsByBenefactor[address(msg.sender)] += msg.value
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchaseFor(uint128 arg1, address arg2) payable {
    require not stor0
    require msg.value
    require arg2
    emit PaymentForwarded(address(msg.sender), msg.value, arg1 << 128, arg2);
    require msg.value + totalTransferred >= totalTransferred
    totalTransferred += msg.value
    if not paymentsByPurchaser[arg1 << 128]:
        purchaserCount++
    require msg.value + paymentsByPurchaser[arg1 << 128] >= paymentsByPurchaser[arg1 << 128]
    paymentsByPurchaser[arg1 << 128] += msg.value
    require msg.value + paymentsByBenefactor[address(arg2)] >= paymentsByBenefactor[address(arg2)]
    paymentsByBenefactor[address(arg2)] += msg.value
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchase(uint128 arg1) payable {
    require not stor0
    require msg.value
    require msg.sender
    emit PaymentForwarded(address(msg.sender), msg.value, arg1 << 128, msg.sender);
    require msg.value + totalTransferred >= totalTransferred
    totalTransferred += msg.value
    if not paymentsByPurchaser[arg1 << 128]:
        purchaserCount++
    require msg.value + paymentsByPurchaser[arg1 << 128] >= paymentsByPurchaser[arg1 << 128]
    paymentsByPurchaser[arg1 << 128] += msg.value
    require msg.value + paymentsByBenefactor[address(msg.sender)] >= paymentsByBenefactor[address(msg.sender)]
    paymentsByBenefactor[address(msg.sender)] += msg.value
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
