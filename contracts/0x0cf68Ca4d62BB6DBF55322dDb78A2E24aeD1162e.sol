contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint16 stor11;

function _fallback() payable {
    stor3 = 420477 * 3600
    stor4 = 422637 * 3600
    stor5 = 421221 * 3600
    stor6 = 421965 * 3600
    stor7 = 35 * 10^14
    stor8 = 100000
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor1 = code.data[2687 len 20]
    stor0 = code.data[2655 len 20]
    stor2 = code.data[2719 len 20]
    return code.data[204 len 2439]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
address owner;
address safeContractAddress;
uint256 startICO;
uint256 stopICO;
uint256 price2;
uint256 price3;
uint256 price;
uint256 stor8;
uint256 tokenSold;
uint256 tokenFree;
uint8 crowdsaleClosed;
uint8 tokenWithdraw; offset 8
uint256 stor11; offset 8

function price2() {
    return price2
}

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

function stopICO() {
    return stopICO
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function price3() {
    return price3
}

function safeContract() {
    return safeContractAddress
}

function _fallback() payable {
    if block.timestamp > price3:
        price = 7 * 10^16
    else:
        if block.timestamp > price2:
            price = 525 * 10^13
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
                    args safeContractAddress, ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(sharesTokenAddress)
                call sharesTokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                tokenFree = ext_call.return_data[0]
                crowdsaleClosed = 1
                tokenWithdraw = 1
                stor11 = 0
        else:
            if crowdsaleClosed:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require price
                if msg.value / price * stor8 <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require msg.value / price * stor8 > 0
                require stor8
                if tokenFree >= msg.value / price * stor8:
                    call owner with:
                       value msg.value / price * stor8 * price / stor8 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if msg.value > msg.value / price * stor8 * price / stor8:
                        call msg.sender with:
                           value msg.value - (msg.value / price * stor8 * price / stor8) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / price * stor8
                    require ext_call.success
                    tokenSold += msg.value / price * stor8
                    tokenFree += -1 * msg.value / price * stor8
                    if not tokenFree - (msg.value / price * stor8):
                        crowdsaleClosed = 1
                else:
                    require stor8
                    call owner with:
                       value tokenFree * price / stor8 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, tokenFree
                    require ext_call.success
                    call msg.sender with:
                       value msg.value - (tokenFree * price / stor8) wei
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
