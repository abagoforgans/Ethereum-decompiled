contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor1 = 418200 * 24 * 3600
    stor2 = 418872 * 24 * 3600
    stor5 = 250
    stor6 = 10^14
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[3262 len 20]
    require code.data[3294 len 20]
    stor3 = code.data[3262 len 20]
    stor4 = code.data[3294 len 20]
    return code.data[401 len 2849]
}



// =====================  Runtime code  =====================


const MAX_GAS_PRICE = 5 * 10^10


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 startTime;
uint256 endTime;
address wallet_address;
address token_address;
uint256 rate;
uint256 capTokens;
uint256 weiRaised;
uint256 tokensSold;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function token_address() {
    return token_address
}

function owner() {
    return owner
}

function capTokens() {
    return capTokens
}

function wallet_address() {
    return wallet_address
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function convertWeiToTokens(uint256 arg1) {
    if not arg1 / 10^10:
        return (arg1 / 10^10 * rate)
    require arg1 / 10^10
    require arg1 / 10^10 * rate / arg1 / 10^10 == rate
    return (arg1 / 10^10 * rate)
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.gasprice <= 5 * 10^10
    require msg.sender
    if msg.value / 10^10:
        require msg.value / 10^10
        require msg.value / 10^10 * rate / msg.value / 10^10 == rate
    require tokensSold + (msg.value / 10^10 * rate) >= tokensSold
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value
    require tokensSold + (msg.value / 10^10 * rate) <= capTokens
    if msg.value / 10^10:
        require msg.value / 10^10
        require msg.value / 10^10 * rate / msg.value / 10^10 == rate
    call wallet_address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(token_address)
    call token_address.0x23b872dd with:
         gas gas_remaining - 710 wei
        args wallet_address, msg.sender, msg.value / 10^10 * rate
    require ext_call.success
    if ext_call.return_data[0]:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require tokensSold + (msg.value / 10^10 * rate) >= tokensSold
        tokensSold += msg.value / 10^10 * rate
        emit TokenPurchase(msg.value, msg.value / 10^10 * rate, msg.sender, msg.sender);
}



}
