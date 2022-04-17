contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint8 stor8;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 418560 * 24 * 3600
    stor2 = 419424 * 24 * 3600
    stor5 = 33815
    stor8 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[2775 len 20]
    require code.data[2807 len 20]
    stor3 = code.data[2775 len 20]
    stor4 = code.data[2807 len 20]
    return code.data[231 len 2532]
}



// =====================  Runtime code  =====================


const MAX_GAS_PRICE = 10^11


uint8 stor0; offset 160
address owner;
uint256 startTime;
uint256 endTime;
address wallet_address;
address token_address;
uint256 sub_d73d56bb;
uint256 weiRaised;
uint256 tokensSold;
uint8 stor8;

function endTime() {
    return endTime
}

function icoFinished() {
    return bool(stor8)
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(stor0)
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

function sub_d73d56bb(?) {
    return sub_d73d56bb
}

function wallet_address() {
    return wallet_address
}

function setEthPrice(uint256 arg1) {
    require owner == msg.sender
    sub_d73d56bb = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier() {
    if block.timestamp < 419136 * 24 * 3600:
        return 50
    if block.timestamp >= 419304 * 24 * 3600:
        return 30
    return 40
}

function endICO(address arg1) {
    require owner == msg.sender
    require not stor0
    if tokensSold:
        require tokensSold
        require 13 * tokensSold / tokensSold == 13
    require ext_code.size(token_address)
    call token_address.0x23b872dd with:
         gas gas_remaining - 710 wei
        args wallet_address, address(arg1), 13 * tokensSold / 100
    require ext_call.success
    stor8 = 1
}

function convertWeiToTokens(uint256 arg1) {
    if block.timestamp < 419136 * 24 * 3600:
        if not arg1 / 10^10:
            return (sub_d73d56bb * arg1 / 10^10 / 500)
        if arg1 / 10^10:
            if sub_d73d56bb * arg1 / 10^10 / arg1 / 10^10 == sub_d73d56bb:
                return (sub_d73d56bb * arg1 / 10^10 / 500)
    else:
        if block.timestamp >= 419304 * 24 * 3600:
            if not arg1 / 10^10:
                return (sub_d73d56bb * arg1 / 10^10 / 300)
            if arg1 / 10^10:
                if sub_d73d56bb * arg1 / 10^10 / arg1 / 10^10 == sub_d73d56bb:
                    return (sub_d73d56bb * arg1 / 10^10 / 300)
        else:
            if not arg1 / 10^10:
                return (sub_d73d56bb * arg1 / 10^10 / 400)
            if arg1 / 10^10:
                if sub_d73d56bb * arg1 / 10^10 / arg1 / 10^10 == sub_d73d56bb:
                    return (sub_d73d56bb * arg1 / 10^10 / 400)
    revert
}

function _fallback() payable {
    require not stor0
    require block.gasprice <= 10^11
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 5 * 10^16
    require not stor8
    if msg.value / 10^10:
        require msg.value / 10^10
        require sub_d73d56bb * msg.value / 10^10 / msg.value / 10^10 == sub_d73d56bb
    call wallet_address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(token_address)
    if block.timestamp < 419136 * 24 * 3600:
        call token_address.0x23b872dd with:
             gas gas_remaining - 710 wei
            args wallet_address, msg.sender, sub_d73d56bb * msg.value / 10^10 / 500
        require ext_call.success
        if ext_call.return_data[0]:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (sub_d73d56bb * msg.value / 10^10 / 500) + tokensSold >= tokensSold
            tokensSold += sub_d73d56bb * msg.value / 10^10 / 500
            emit TokenPurchase(msg.value, sub_d73d56bb * msg.value / 10^10 / 500, msg.sender, msg.sender);
    else:
        if block.timestamp >= 419304 * 24 * 3600:
            call token_address.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args wallet_address, msg.sender, sub_d73d56bb * msg.value / 10^10 / 300
            require ext_call.success
            if ext_call.return_data[0]:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (sub_d73d56bb * msg.value / 10^10 / 300) + tokensSold >= tokensSold
                tokensSold += sub_d73d56bb * msg.value / 10^10 / 300
                emit TokenPurchase(msg.value, sub_d73d56bb * msg.value / 10^10 / 300, msg.sender, msg.sender);
        else:
            call token_address.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args wallet_address, msg.sender, sub_d73d56bb * msg.value / 10^10 / 400
            require ext_call.success
            if ext_call.return_data[0]:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (sub_d73d56bb * msg.value / 10^10 / 400) + tokensSold >= tokensSold
                tokensSold += sub_d73d56bb * msg.value / 10^10 / 400
                emit TokenPurchase(msg.value, sub_d73d56bb * msg.value / 10^10 / 400, msg.sender, msg.sender);
}



}
