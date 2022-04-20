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
uint16 stor8;
address stor8; offset 16

function _fallback() payable {
    stor1 = 1509469800
    stor4 = 35 * 10^14
    stor5 = 200000
    stor6 = 0
    stor7 = 0
    uint16(stor8.field_0) = 0
    require not msg.value
    address(stor8.field_16) = code.data[2532 len 20]
    stor0 = code.data[2500 len 20]
    stor2 = 60 * code.data[2552 len 32]
    stor3 = stor1 + (60 * code.data[2552 len 32])
    return code.data[200 len 2288]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
uint256 startICO;
uint256 periodICO;
uint256 stopICO;
uint256 price;
uint256 stor5;
uint256 tokenSold;
uint256 tokenFree;
uint8 crowdsaleClosed;
uint8 tokenWithdraw; offset 8
address owner; offset 16
uint256 stor8; offset 8

function sharesTokenAddress() {
    return sharesTokenAddress
}

function tokenWithdraw() {
    return bool(tokenWithdraw)
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

function tokenFree() {
    return tokenFree
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
    return bool(crowdsaleClosed)
}

function _fallback() payable {
    if block.timestamp > 1509471000:
        price = 105 * 10^14
    else:
        if block.timestamp > 1509470400:
            price = 7 * 10^15
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokenFree = ext_call.return_data[0]
    if block.timestamp < startICO:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if block.timestamp > stopICO:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if not tokenWithdraw:
                require ext_code.size(sharesTokenAddress)
                call sharesTokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(sharesTokenAddress)
                call sharesTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args 0x1f5c9ccfa511df548da8448530e2639bdddf5370, ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(sharesTokenAddress)
                call sharesTokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                tokenFree = ext_call.return_data[0]
                crowdsaleClosed = 1
                tokenWithdraw = 1
                stor8 = 0
        else:
            if crowdsaleClosed:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require price
                require msg.value / price * stor5 > 0
                require stor5
                if tokenFree >= msg.value / price * stor5:
                    call owner with:
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
                    tokenFree += -1 * msg.value / price * stor5
                    if not tokenFree - (msg.value / price * stor5):
                        crowdsaleClosed = 1
                else:
                    require stor5
                    call owner with:
                       value tokenFree * price / stor5 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, tokenFree
                    require ext_call.success
                    call msg.sender with:
                       value msg.value - (tokenFree * price / stor5) wei
                         gas 2300 * is_zero(value) wei
                    tokenSold += tokenFree
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    tokenFree = ext_call.return_data[0]
                    crowdsaleClosed = 1
    emit TokenFree(tokenFree);
    emit CrowdsaleClosed(bool(crowdsaleClosed));
}



}
