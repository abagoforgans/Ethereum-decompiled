contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1378 len 20]
    stor0 = code.data[1346 len 20]
    return code.data[130 len 1204]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address teamMultisigAddress;
uint256 totalTransferred;
uint256 customerCount;
mapping of uint256 paymentsByCustomer;
mapping of uint256 paymentsByBenefactor;

function owner() {
    return owner
}

function customerCount() {
    return customerCount
}

function totalTransferred() {
    return totalTransferred
}

function halted() {
    return bool(stor0)
}

function teamMultisig() {
    return teamMultisigAddress
}

function paymentsByBenefactor(address arg1) {
    return paymentsByBenefactor[arg1]
}

function paymentsByCustomer(uint128 arg1) {
    return paymentsByCustomer[arg1]
}

function _fallback() payable {
    revert 
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

function pay(uint128 arg1, address arg2) payable {
    require not stor0
    emit PaymentForwarded(address(msg.sender), msg.value, arg1 << 128, arg2);
    totalTransferred += msg.value
    if not paymentsByCustomer[arg1 << 128]:
        customerCount++
    paymentsByCustomer[arg1 << 128] += msg.value
    paymentsByBenefactor[address(arg2)] += msg.value
    call teamMultisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function payForMyself(uint128 arg1) payable {
    require not stor0
    emit PaymentForwarded(address(msg.sender), msg.value, arg1 << 128, msg.sender);
    totalTransferred += msg.value
    if not paymentsByCustomer[arg1 << 128]:
        customerCount++
    paymentsByCustomer[arg1 << 128] += msg.value
    paymentsByBenefactor[address(msg.sender)] += msg.value
    call teamMultisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
