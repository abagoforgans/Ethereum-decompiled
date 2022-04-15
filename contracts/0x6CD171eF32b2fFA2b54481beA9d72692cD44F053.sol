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
uint8 stor8;
address stor8; offset 8

function _fallback() payable {
    stor1 = block.timestamp
    stor4 = 35 * 10^14
    stor5 = 200000
    stor6 = 0
    stor7 = 0
    uint8(stor8.field_0) = 0
    require not msg.value
    address(stor8.field_8) = code.data[2229 len 20]
    stor0 = code.data[2197 len 20]
    stor2 = 3600 * code.data[2249 len 32]
    stor3 = stor1 + (3600 * code.data[2249 len 32])
    return code.data[194 len 1991]
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
uint8 stor8;
address stor8;
address owner; offset 8

function sharesTokenAddress() {
    return sharesTokenAddress
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
    return bool(uint8(stor8.field_0))
}

function unsoldTokensBack() {
    require uint8(stor8.field_0)
    require owner == msg.sender
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor8.field_0), ext_call.return_data[0]
    require ext_call.success
    tokenFree = 0
}

function _fallback() payable {
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
        if block.timestamp > stopICO + 1:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            uint8(stor8.field_0) = 1
        else:
            if uint8(stor8.field_0):
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require price
                require msg.value / price * stor5 > 0
                require stor5
                if tokenFree < msg.value / price * stor5:
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
                    tokenFree = 0
                    uint8(stor8.field_0) = 1
                else:
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
                        uint8(stor8.field_0) = 1
    emit TokenFree(tokenFree);
    emit CrowdsaleClosed(bool(uint8(stor8.field_0)));
}



}
