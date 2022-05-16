contract main {




// =====================  Runtime code  =====================


const EXPECTED = 'yes'


address owner;
uint256 expiration;
uint8 stor2;
address depositorAddress; offset 8
address beneficiaryAddress;
address stor4;

function contractExecuted() {
    return bool(stor2)
}

function beneficiary() {
    return beneficiaryAddress
}

function expiration() {
    return expiration
}

function owner() {
    return owner
}

function depositor() {
    return depositorAddress
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    if depositorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the depositor may call this function.'
    require not stor2
    require block.timestamp < expiration
}

function requestOracleValue() {
    require msg.sender == owner
    require ext_code.size(stor4)
    call stor4.current() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function executeContract() {
    if owner != msg.sender:
        if depositorAddress != msg.sender:
            if beneficiaryAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only authorized users may call this function.'
    require eth.balance(this.address) > 0
    require ext_code.size(stor4)
    call stor4.current() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 'yes':
        stor2 = 1
        emit ContractExecuted('Payment sent to beneficiary.');
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp >= expiration:
            stor2 = 1
            emit ContractExecuted('Payment refunded to depositor.');
            call depositorAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
