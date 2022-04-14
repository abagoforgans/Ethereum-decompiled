contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9; offset 8
address stor10;

function _fallback() payable {
    stor1 = block.timestamp
    stor4 = 1308900524
    stor5 = 100000
    stor6 = 20
    stor8 = 0
    uint8(stor9.field_0) = 0
    require not msg.value
    stor10 = code.data[1637 len 20]
    stor0 = code.data[1605 len 20]
    stor2 = 3600 * code.data[1657 len 32]
    stor3 = stor1 + (3600 * code.data[1657 len 32])
    stor7 = 10^12 * stor6 / 100
    address(stor9.field_8) = code.data[1637 len 20]
    return code.data[226 len 1367]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
uint256 startICO;
uint256 periodICO;
uint256 stopICO;
uint256 price;
uint256 stor5;
uint256 tokenForSale;
uint256 tokenSold;
uint8 stor9;
address multisigAddress; offset 8
address owner;

function sharesTokenAddress() {
    return sharesTokenAddress
}

function tokenForSale() {
    return tokenForSale
}

function multisig() {
    return multisigAddress
}

function tokenSold() {
    return tokenSold
}

function startICO() {
    return startICO
}

function owner() {
    return owner
}

function price() {
    return price
}

function periodICO() {
    return periodICO
}

function stopICO() {
    return stopICO
}

function crowdsaleClosed() {
    return bool(stor9)
}

function _fallback() payable {
    if block.timestamp <= startICO:
        stor9 = 1
        revert
    if block.timestamp >= stopICO + 1:
        stor9 = 1
        revert
    if tokenSold >= tokenForSale:
        stor9 = 1
        revert
    require price
    require stor5
    require not stor9
    require msg.value / price * stor5 > 0
    if tokenForSale - tokenSold < msg.value / price * stor5:
        require stor5
        call multisigAddress with:
           value (tokenForSale * price) - (tokenSold * price) / stor5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, tokenForSale - tokenSold
        require ext_call.success
        call msg.sender with:
           value msg.value - ((tokenForSale * price) - (tokenSold * price) / stor5) wei
             gas 2300 * is_zero(value) wei
        tokenSold = tokenForSale
        stor9 = 1
    else:
        call multisigAddress with:
           value msg.value / price * stor5 * price / stor5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value > msg.value / price * stor5 * price / stor5:
            call msg.sender with:
               value msg.value - (msg.value / price * stor5 * price / stor5) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price * stor5
        require ext_call.success
        tokenSold += msg.value / price * stor5
}



}
