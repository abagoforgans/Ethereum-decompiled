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
uint256 stor9;
uint8 stor10;
address stor10; offset 8
address stor11;

function _fallback() payable {
    stor1 = block.timestamp
    stor4 = 3272251308900524
    stor5 = 100000
    stor6 = 20
    stor7 = 0
    stor9 = 0
    uint8(stor10.field_0) = 0
    require not msg.value
    stor11 = code.data[1734 len 20]
    stor0 = code.data[1702 len 20]
    stor2 = 3600 * code.data[1754 len 32]
    stor3 = stor1 + (3600 * code.data[1754 len 32])
    stor8 = 10^12 * stor6 / 100
    address(stor10.field_8) = code.data[1734 len 20]
    return code.data[234 len 1456]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
uint256 startICO;
uint256 periodICO;
uint256 stopICO;
uint256 price;
uint256 stor5;
uint256 amount;
uint256 tokenForSale;
uint256 tokenSold;
uint8 stor10;
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

function amount() {
    return amount
}

function periodICO() {
    return periodICO
}

function stopICO() {
    return stopICO
}

function crowdsaleClosed() {
    return bool(stor10)
}

function withdrawal(uint256 arg1) {
    require owner == msg.sender
    amount -= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if block.timestamp <= startICO:
        stor10 = 1
        revert
    if block.timestamp >= stopICO + 1:
        stor10 = 1
        revert
    if tokenSold >= tokenForSale:
        stor10 = 1
        revert
    require price
    require stor5
    require not stor10
    require msg.value / price * stor5 > 0
    if tokenForSale - tokenSold < msg.value / price * stor5:
        require stor5
        amount += (tokenForSale * price) - (tokenSold * price) / stor5
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, tokenForSale - tokenSold
        require ext_call.success
        call msg.sender with:
           value msg.value - ((tokenForSale * price) - (tokenSold * price) / stor5) wei
             gas 2300 * is_zero(value) wei
        tokenSold = tokenForSale
        stor10 = 1
    else:
        amount += msg.value / price * stor5 * price / stor5
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
