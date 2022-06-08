contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
address exchangerAddress;
address stor2;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 160
address sub_c30709faAddress;
uint256 exchangeRate;

function exchangeRate() {
    return exchangeRate
}

function exchanger() {
    return exchangerAddress
}

function owner() {
    return owner
}

function currentTokenContract() {
    return sub_c30709faAddress
}

function sub_c30709fa(?) {
    return sub_c30709faAddress
}

function sub_e0567c05(?) {
    return bool(uint8(stor3.field_168))
}

function sub_e303818d(?) {
    return bool(uint8(stor3.field_160))
}

function ownerKill() {
    if owner != msg.sender:
        revert with 0, 'caller is not contract owner'
    if not stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target wallet not set, can't withdraw!'
    require ext_code.size(sub_c30709faAddress)
    call sub_c30709faAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c30709faAddress)
    call sub_c30709faAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Withdraw tokens back to owner failed before self desctruction!'
    selfdestruct(stor2)
}

function sub_9f5d8046(?) {
    if owner != msg.sender:
        revert with 0, 'caller is not contract owner'
    exchangerAddress = arg1
}

function safeAdd(uint256 arg1, uint256 arg2) {
    if arg1 + arg2 < arg1:
        revert with 0, 'an overflow occured'
    return (arg1 + arg2)
}

function safeSub(uint256 arg1, uint256 arg2) {
    if arg2 > arg1:
        revert with 0, 'can't end up with negative value'
    return (arg1 - arg2)
}

function updateTokenContract(address arg1) {
    if owner != msg.sender:
        revert with 0, 'caller is not contract owner'
    sub_c30709faAddress = arg1
}

function safeDiv(uint256 arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'can't end up with negative value'
    require arg2
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        if arg1 * arg2 / arg1 != arg2:
            revert with 0, 'results exceeded 256 bits'
    return (arg1 * arg2)
}

function activate(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'caller is not contract owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    emit 0xd5a64463: Array(len=20, data='allow token exchange'), arg1
}

function updateWithdrawAddress(address arg1) {
    if owner != msg.sender:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'caller is not contract owner nor existing withdrawer'
    stor2 = arg1
}

function setExchangeRate(uint256 arg1) {
    if not exchangerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exchanger not set, can't trigger any function!'
    if exchangerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the pit master / exchange owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exchange rate can never be set to 0 or negative'
    exchangeRate = arg1
    emit 0x80d50ed5: Array(len=21, data='New exchange rate set'), arg1
}

function _fallback() payable {
    if not uint8(stor3.field_160):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'token exchange not allowed, or you are not contract owner'
    if msg.sender == stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target wallet is prohibited to exchange tokens!'
    if msg.value:
        require msg.value
        if msg.value * exchangeRate / msg.value != exchangeRate:
            revert with 0, 'results exceeded 256 bits'
    if msg.value * exchangeRate / 10^18 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'something went wrong on our math, token value negative'
    require ext_code.size(sub_c30709faAddress)
    call sub_c30709faAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * exchangeRate / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Exchanged token transfer failed!'
    emit 0xf78197ee: msg.value, msg.value * exchangeRate / 10^18, msg.sender
    if stor2:
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawal(msg.sender, stor2, msg.value);
}

function takerBuyAsset() payable {
    if not uint8(stor3.field_160):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'token exchange not allowed, or you are not contract owner'
    if msg.sender == stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target wallet is prohibited to exchange tokens!'
    if msg.value:
        require msg.value
        if msg.value * exchangeRate / msg.value != exchangeRate:
            revert with 0, 'results exceeded 256 bits'
    if msg.value * exchangeRate / 10^18 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'something went wrong on our math, token value negative'
    require ext_code.size(sub_c30709faAddress)
    call sub_c30709faAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * exchangeRate / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Exchanged token transfer failed!'
    emit 0xf78197ee: msg.value, msg.value * exchangeRate / 10^18, msg.sender
    if stor2:
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawal(msg.sender, stor2, msg.value);
}



}
