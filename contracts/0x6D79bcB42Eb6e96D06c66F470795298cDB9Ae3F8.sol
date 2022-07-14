contract main {




// =====================  Runtime code  =====================


address owner;
uint256 commission;
address sub_ff69909eAddress;
uint256 min_payment;
mapping of uint256 buyers;

function owner() {
    return owner
}

function buyers(address arg1) {
    return buyers[arg1]
}

function commission() {
    return commission
}

function min_payment() {
    return min_payment
}

function sub_ff69909e(?) {
    return sub_ff69909eAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6d427fa3(?) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    emit 0x7a4e22fa: min_payment, arg1
    min_payment = arg1
}

function setCommission(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    emit 0x1fcbacac: commission, arg1
    commission = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_18287008(?) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    emit 0xc92ec79b: sub_ff69909eAddress, arg1
    sub_ff69909eAddress = arg1
}

function _fallback() payable {
    if msg.value < min_payment:
        revert with 0, 'Too small amount'
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if not mem[128 len 20]:
        revert with 0, 'Zero address middleman'
    if mem[128 len 20] != sub_ff69909eAddress:
        if buyers[mem[128 len 20]] <= 0:
            revert with 0, 'The mediator did not make purchases'
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'NaN'
        call sub_ff69909eAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call mem[128 len 20] with:
             gas 2300 wei
        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
            revert with 0, 'NaN'
        buyers[address(msg.sender)] += msg.value
        emit 0x554e97a0: msg.value, 0, msg.sender, sub_ff69909eAddress, mem[128 len 20]
    else:
        require msg.value
        if msg.value * commission / msg.value != commission:
            revert with 0, 'NaN'
        if msg.value * commission / 100 > msg.value:
            revert with 0, 'NaN'
        call sub_ff69909eAddress with:
           value msg.value - (msg.value * commission / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call mem[128 len 20] with:
           value msg.value * commission / 100 wei
             gas 2300 * is_zero(value) wei
        if buyers[address(msg.sender)] + msg.value < buyers[address(msg.sender)]:
            revert with 0, 'NaN'
        buyers[address(msg.sender)] += msg.value
        emit 0x554e97a0: msg.value - (msg.value * commission / 100), msg.value * commission / 100, msg.sender, sub_ff69909eAddress, mem[128 len 20]
}



}
