contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint16 stor12;

function _fallback() payable {
    stor3 = 1513728060
    stor4 = 1521504060
    stor5 = 1516406460
    stor6 = 1519084860
    bool(stor7.length) = 0
    stor7.length.field_1 = 28
    stor7.length.field_8 = '0.0035 Ether for 1 microBDSM' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 35 * 10^14
    stor9 = 100000
    stor10 = 0
    stor11 = 0
    stor12 = 0
    require not msg.value
    stor1 = code.data[3481 len 20]
    stor0 = code.data[3449 len 20]
    stor2 = code.data[3513 len 20]
    return code.data[440 len 2997]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
address owner;
address safeContractAddress;
uint256 startICO_20_December;
uint256 stopICO_20_March;
uint256 priceIncrease_20_January;
uint256 priceIncrease_20_February;
array of uint256 price;
uint256 stor8;
uint256 stor9;
uint256 tokenSold;
uint256 tokenFree;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8

function sharesTokenAddress() {
    return sharesTokenAddress
}

function startICO_20_December() {
    return startICO_20_December
}

function priceIncrease_20_February() {
    return priceIncrease_20_February
}

function priceIncrease_20_January() {
    return priceIncrease_20_January
}

function tokensWithdrawn() {
    return bool(uint8(stor12.field_8))
}

function tokenSold() {
    return tokenSold
}

function owner() {
    return owner
}

function tokenFree() {
    return tokenFree
}

function price() {
    return price[0 len price.length].field_0
}

function stopICO_20_March() {
    return stopICO_20_March
}

function crowdsaleClosed() {
    return bool(uint8(stor12.field_0))
}

function safeContract() {
    return safeContractAddress
}

function _fallback() payable {
    if block.timestamp > priceIncrease_20_February:
        bool(price.length) = 0
        price.length.field_1 = 27
        price.length.field_8 = '0.007 Ether for 1 microBDSM' / 256
        idx = 0
        while price.length + 31 / 32 > idx:
            price[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor8 = 7 * 10^15
    else:
        if block.timestamp > priceIncrease_20_January:
            bool(price.length) = 0
            price.length.field_1 = 29
            price.length.field_8 = '0.00525 Ether for 1 microBDSM' / 256
            idx = 0
            while price.length + 31 / 32 > idx:
                price[idx].field_0 = 0
                idx = idx + 1
                continue 
            stor8 = 525 * 10^13
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokenFree = ext_call.return_data[0]
    if block.timestamp < startICO_20_December:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if block.timestamp > stopICO_20_March:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if not uint8(stor12.field_8):
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
                uint8(stor12.field_0) = 1
                uint8(stor12.field_8) = 1
                Mask(248, 0, stor12.field_8) = 0
        else:
            if uint8(stor12.field_0):
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                require stor8
                if msg.value / stor8 * stor9 <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require msg.value / stor8 * stor9 > 0
                require stor9
                if tokenFree >= msg.value / stor8 * stor9:
                    call owner with:
                       value msg.value / stor8 * stor9 * stor8 / stor9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if msg.value > msg.value / stor8 * stor9 * stor8 / stor9:
                        call msg.sender with:
                           value msg.value - (msg.value / stor8 * stor9 * stor8 / stor9) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / stor8 * stor9
                    require ext_call.success
                    tokenSold += msg.value / stor8 * stor9
                    tokenFree += -1 * msg.value / stor8 * stor9
                    if not tokenFree - (msg.value / stor8 * stor9):
                        uint8(stor12.field_0) = 1
                else:
                    require stor9
                    call owner with:
                       value tokenFree * stor8 / stor9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, tokenFree
                    require ext_call.success
                    call msg.sender with:
                       value msg.value - (tokenFree * stor8 / stor9) wei
                         gas 2300 * is_zero(value) wei
                    tokenSold += tokenFree
                    require ext_code.size(sharesTokenAddress)
                    call sharesTokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    tokenFree = ext_call.return_data[0]
                    uint8(stor12.field_0) = 1
    emit TokenFree(tokenFree);
    emit CrowdsaleClosed(bool(uint8(stor12.field_0)));
}



}
