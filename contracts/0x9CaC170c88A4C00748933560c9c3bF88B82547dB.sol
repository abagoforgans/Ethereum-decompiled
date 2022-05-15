contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address addressToken;
uint256 priceOneToken;
uint8 stor3;

function getPriceOneToken() {
    return priceOneToken
}

function getTradeIsOpen() {
    return bool(stor3)
}

function owner() {
    return owner
}

function getAddressToken() {
    return addressToken
}

function _fallback() payable {
    revert
}

function setTradeIsOpen(bool arg1) {
    require msg.sender == owner
    stor3 = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setAddressToken(address arg1) {
    require msg.sender == owner
    require arg1
    addressToken = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPriceOneToken(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 > 0
    require arg2
    priceOneToken = 10^18 * arg1 / arg2
}

function outputMoney(address arg1, uint256 arg2) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getBalanceToken() {
    require ext_code.size(addressToken)
    call addressToken.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function buyToken(uint256 arg1) payable {
    require stor3
    require arg1 > 0
    require arg1 <= arg1 * priceOneToken
    require msg.value > 0
    require msg.value == arg1 * priceOneToken
    require ext_code.size(addressToken)
    call addressToken.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit PaymentOfTokens(msg.sender, arg1, msg.value);
    return 1
}



}
