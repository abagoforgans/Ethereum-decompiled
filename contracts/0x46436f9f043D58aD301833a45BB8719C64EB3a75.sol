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
    stor5 = 421968 * 24 * 3600
    stor6 = 421224 * 24 * 3600
    stor7 = 35 * 10^14
    stor8 = 100000
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor1 = code.data[2582 len 20]
    stor0 = code.data[2550 len 20]
    stor2 = code.data[2614 len 20]
    stor3 = block.timestamp + (720 * 24 * 3600)
    stor4 = block.timestamp + (2880 * 24 * 3600)
    return code.data[207 len 2331]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
address owner;
address safeContractAddress;
uint256 startTime;
uint256 stopICO;
uint256 stor5;
uint256 stor6;
uint256 price;
uint256 stor8;
uint256 tokenSold;
uint256 tokenFree;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8

function sharesTokenAddress() {
    return sharesTokenAddress
}

function tokenWithdraw() {
    return bool(uint8(stor11.field_8))
}

function tokenSold() {
    return tokenSold
}

function startTime() {
    return startTime
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
    return bool(uint8(stor11.field_0))
}

function safeContract() {
    return safeContractAddress
}

function _fallback() payable {
    if block.timestamp > stor5:
        price = 105 * 10^14
    else:
        if block.timestamp > stor6:
            price = 7 * 10^15
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokenFree = ext_call.return_data[0]
    if block.timestamp < startTime:
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
            if not uint8(stor11.field_8):
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
                uint8(stor11.field_0) = 1
                uint8(stor11.field_8) = 1
                Mask(248, 0, stor11.field_8) = 0
        else:
            if uint8(stor11.field_0):
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
                        uint8(stor11.field_0) = 1
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
                    uint8(stor11.field_0) = 1
    emit TokenFree(tokenFree);
    emit CrowdsaleClosed(bool(uint8(stor11.field_0)));
}



}
