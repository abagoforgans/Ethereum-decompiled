contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint256 stor13; offset 8

function _fallback() payable {
    stor7 = 4
    stor8 = 10^stor7
    stor9 = 25000 * 3600 * stor8
    stor10 = 631 * stor8
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    Mask(248, 0, stor13.field_8) = 0
    uint8(stor13.field_0) = 0
    stor2 = 1513908673
    stor3 = 421504 * 3600
    stor4 = 0x3bada155408ab1c9898fdf28e545b51f2f9a65cc
    stor5 = 0x3efae2e152f62f5cc12cc0794b816d22d416a721
    stor1 = 0x80e7a4d750ade616da896c49049b7ede9e04c191
    return code.data[514 len 3209]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
address ownerAddress;
uint256 weiRaised;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 PRICE_VARIABLE;
uint256 astrSold;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function ownerAddress() {
    return ownerAddress
}

function PRICE_VARIABLE() {
    return PRICE_VARIABLE
}

function halted() {
    return bool(uint8(stor13.field_0))
}

function astrSold() {
    return astrSold
}

function crowdsaleClosed() {
    return bool(uint8(stor13.field_8))
}

function token() {
    return tokenAddress
}

function pause() {
    require msg.sender == owner
    uint8(stor13.field_0) = 1
}

function setFixedRate() {
    require msg.sender == owner
    PRICE_VARIABLE = 0
}

function unpause() {
    require msg.sender == owner
    uint8(stor13.field_0) = 0
}

function closeSaleAnyway() {
    require msg.sender == owner
    Mask(248, 0, stor13.field_8) = 1
}

function setNewRate(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 0:
        PRICE_VARIABLE = arg1 * stor8
}

function safeCloseSale() {
    require msg.sender == owner
    if block.timestamp >= endTime:
        Mask(248, 0, stor13.field_8) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require stor9 - astrSold > 0
    require not uint8(stor13.field_8)
    require not uint8(stor13.field_0)
    if PRICE_VARIABLE <= 0:
        if msg.value:
            require msg.value
            require msg.value * stor10 / msg.value == stor10
        require stor9 - astrSold >= msg.value * stor10 / 10^18
        weiRaised += msg.value
        astrSold += msg.value * stor10 / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args ownerAddress, msg.sender, msg.value * stor10 / 10^18
    else:
        if msg.value:
            require msg.value
            require msg.value * PRICE_VARIABLE / msg.value == PRICE_VARIABLE
        require stor9 - astrSold >= msg.value * PRICE_VARIABLE / 10^18
        weiRaised += msg.value
        astrSold += msg.value * PRICE_VARIABLE / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args ownerAddress, msg.sender, msg.value * PRICE_VARIABLE / 10^18
    require ext_call.success
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
