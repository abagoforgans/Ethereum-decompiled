contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[4716 len 20]
    stor3 = code.data[4748 len 20]
    return code.data[123 len 4581]
}



// =====================  Runtime code  =====================


address owner;
address newOwnerCandidate;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
mapping of uint8 stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address liquidPledgingAddress;
array of struct payments;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function nPayments() {
    return payments.length
}

function liquidPledging() {
    return liquidPledgingAddress
}

function payments(uint256 arg1) {
    require arg1 < payments.length
    require payments[arg1].field_0 <= 2
    return payments[arg1].field_0, payments[arg1].field_256, payments[arg1].field_512, payments[arg1].field_768
}

function owner() {
    return owner
}

function autoPay() {
    return bool(uint8(stor5.field_160))
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function escapeHatchDestination() {
    return escapeHatchDestinationAddress
}

function _fallback() payable {
  stop
}

function isTokenEscapable(address arg1) {
    return not bool(stor4[address(arg1)])
}

function setAutopay(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
    emit AutoPaySet()
}

function setLiquidPledging(address arg1) {
    require owner == msg.sender
    require not liquidPledgingAddress
    liquidPledgingAddress = arg1
}

function proposeOwnership(address arg1) {
    require owner == msg.sender
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, arg1);
}

function removeOwnership(address arg1) {
    require owner == msg.sender
    require arg1 == 3500
    owner = 0
    newOwnerCandidate = 0
    emit OwnershipRemoved()
}

function changeHatchEscapeCaller(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    escapeHatchCallerAddress = arg1
}

function changeOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, arg1);
}

function acceptOwnership() {
    require newOwnerCandidate == msg.sender
    owner = newOwnerCandidate
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, newOwnerCandidate);
}

function cancelPayment(uint256 arg1) {
    require owner == msg.sender
    require arg1 < payments.length
    require payments[arg1].field_0 <= 2
    require not payments[arg1].field_0
    payments[arg1].field_0 = 2
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.cancelPayment(uint64 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args payments[arg1].field_256, payments[arg1].field_768
    require ext_call.success
    emit CancelPayment(arg1, payments[arg1].field_256);
}

function confirmPayment(uint256 arg1) {
    require owner == msg.sender
    require arg1 < payments.length
    require payments[arg1].field_0 <= 2
    require not payments[arg1].field_0
    payments[arg1].field_0 = 1
    require ext_code.size(liquidPledgingAddress)
    call liquidPledgingAddress.confirmPayment(uint64 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args payments[arg1].field_256, payments[arg1].field_768
    require ext_call.success
    call payments[arg1].field_512 with:
       value payments[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    emit ConfirmPayment(arg1, payments[arg1].field_256);
}

function escapeFunds(address arg1, uint256 arg2) {
    require owner == msg.sender
    if not arg1:
        require eth.balance(this.address) >= arg2
        call escapeHatchDestinationAddress with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EscapeHatchCalled(address(arg1), arg2);
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= arg2
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args escapeHatchDestinationAddress, arg2
        require ext_call.success
        require ext_call.return_data[0]
        emit EscapeFundsCalled(address(arg1), arg2);
}

function escapeHatch(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    require not stor4[address(arg1)]
    if not arg1:
        call escapeHatchDestinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EscapeHatchCalled(address(arg1), eth.balance(this.address));
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args escapeHatchDestinationAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit EscapeHatchCalled(address(arg1), ext_call.return_data[0]);
}

function multiCancel(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 128] < payments.length
        mem[0] = 6
        require payments[mem[(32 * idx) + 128]].field_0 <= 2
        require not payments[mem[(32 * idx) + 128]].field_0
        payments[mem[(32 * idx) + 128]].field_0 = 2
        mem[(32 * arg1.length) + 128] = 0xe9c211e200000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = payments[_12].field_256
        mem[(32 * arg1.length) + 164] = payments[_12].field_768
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.cancelPayment(uint64 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args payments[_12].field_256, payments[_12].field_768
        require ext_call.success
        emit CancelPayment(_12, payments[_12].field_256);
        idx = idx + 1
        continue 
}

function multiConfirm(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 128] < payments.length
        mem[0] = 6
        require payments[mem[(32 * idx) + 128]].field_0 <= 2
        require not payments[mem[(32 * idx) + 128]].field_0
        payments[mem[(32 * idx) + 128]].field_0 = 1
        mem[(32 * arg1.length) + 128] = 0x2ee8880800000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = payments[_14].field_256
        mem[(32 * arg1.length) + 164] = payments[_14].field_768
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.confirmPayment(uint64 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args payments[_14].field_256, payments[_14].field_768
        require ext_call.success
        call payments[_14].field_512 with:
           value payments[_14].field_768 wei
             gas 2300 * is_zero(value) wei
        emit ConfirmPayment(_14, payments[_14].field_256);
        idx = idx + 1
        continue 
}

function authorizePayment(bytes32 arg1, address arg2, uint256 arg3) {
    require liquidPledgingAddress == msg.sender
    payments.length++
    if not payments.length <= payments.length + 1:
        idx = 4 * payments.length + 1
        while 4 * payments.length > idx:
            payments[idx].field_0 = 0
            payments[idx].field_256 = 0
            payments[idx].field_512 = 0
            payments[idx].field_768 = 0
            idx = idx + 4
            continue 
    require payments.length < payments.length
    payments[payments.length].field_0 = 0
    require payments.length < payments.length
    payments[payments.length].field_256 = arg1
    payments[payments.length].field_512 = arg2
    payments[payments.length].field_768 = arg3
    emit AuthorizePayment(arg3, payments.length, arg1, arg2);
    if uint8(stor5.field_160):
        require payments.length < payments.length
        require payments[payments.length].field_0 <= 2
        require not payments[payments.length].field_0
        payments[payments.length].field_0 = 1
        require ext_code.size(liquidPledgingAddress)
        call liquidPledgingAddress.confirmPayment(uint64 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args payments[payments.length].field_256, payments[payments.length].field_768
        require ext_call.success
        call payments[payments.length].field_512 with:
           value payments[payments.length].field_768 wei
             gas 2300 * is_zero(value) wei
        emit ConfirmPayment(payments.length, payments[payments.length].field_256);
    return payments.length
}



}
