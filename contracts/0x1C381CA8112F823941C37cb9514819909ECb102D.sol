contract main {


// =======================  Init code  ======================


uint8 stor0; offset 168
uint128 stor0; offset 160
address stor0;
address stor3;
uint256 stor8;
uint256 stor10;
address stor11;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    uint8(stor0.field_168) = 0
    stor8 = 24 * 3600
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor10 = code.data[12728 len 32]
    stor11 = code.data[12708 len 20]
    create contract with 0 wei
                    code: code.data[7782 len 4914]
    require create.new_address
    stor3 = address(create.new_address)
    return code.data[391 len 7391]
}



// =====================  Runtime code  =====================


const rateCent = 2 * 10^15

const ICOTokenHardCap = 1540000 * 10^18

const preICOTokenHardCap = 440000 * 10^18


uint8 stor0;
uint8 stor0; offset 160
uint8 state; offset 168
uint128 stor0; offset 160
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
address tokenAddress;
uint256 startICO;
uint256 startPreICO;
uint256 period;
uint256 collectedCent;
uint256 stor8;
uint256 soldTokens;
uint256 priceUSD;
address stor11;
address oracleAddress;

function soldTokens() {
    return soldTokens
}

function oracle() {
    return oracleAddress
}

function startICO() {
    return startICO
}

function owner() {
    return owner
}

function priceUSD() {
    return priceUSD
}

function collectedCent() {
    return collectedCent
}

function startPreICO() {
    return startPreICO
}

function state() {
    require state <= 7
    return state
}

function period() {
    return period
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function changeOracle(address arg1) {
    require msg.sender == owner
    require arg1
    oracleAddress = arg1
}

function setPriceUSD(uint256 arg1) {
    if oracleAddress != msg.sender:
        require msg.sender == owner
    priceUSD = arg1
}

function pauseSale() {
    require msg.sender == owner
    require state <= 7
    require state == 4
    state = 5
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 5);
}

function pausePreSale() {
    require msg.sender == owner
    require state <= 7
    require state == 1
    state = 2
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 2);
}

function startCompanySell() {
    require msg.sender == owner
    require state <= 7
    require state == 6
    state = 7
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 7);
}

function finishMinting() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function finishICO() {
    require msg.sender == owner
    require state <= 7
    require state == 4
    state = 6
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 6);
    call stor11 with:
       value eth.balance(this.address) wei
         gas 3 * 10^6 wei
    require ext_call.success
}

function finishPreIco() {
    require msg.sender == owner
    require state <= 7
    require state == 1
    state = 3
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 3);
    call stor11 with:
       value eth.balance(this.address) wei
         gas 3 * 10^6 wei
    require ext_call.success
}

function startPreIco(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > 0
    require state <= 7
    if state:
        require state <= 7
        require state == 2
    priceUSD = arg2
    startPreICO = block.timestamp
    period = arg1 * stor8
    state = 1
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 1);
}

function startIco(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > 0
    require state <= 7
    if state != 1:
        require state <= 7
        if state != 5:
            require state <= 7
            require state == 3
    priceUSD = arg2
    startICO = block.timestamp
    period = arg1 * stor8
    state = 4
    require state <= 7
    emit StateChanged(uint8(stor0.field_0), 4);
}

function usdSale(address arg1, uint256 arg2) {
    require msg.sender == owner
    require 2 * 10^17 * arg2 / 2 * 10^15 == 100 * arg2
    collectedCent += 100 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 2 * 10^17 * arg2
    require ext_call.success
    require state <= 7
    if state == 4:
        stor2[address(arg1)] += 2 * 10^17 * arg2
    else:
        require state <= 7
        if state != 3:
            stor1[address(arg1)] += 2 * 10^17 * arg2
        else:
            stor2[address(arg1)] += 2 * 10^17 * arg2
    soldTokens += 2 * 10^17 * arg2
}

function getDouble() {
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    require state <= 7
    require state <= 7
    if state != 4:
        require state == 7
    if state == 4:
        stor1[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, stor1[address(msg.sender)]
        require ext_call.success
        stor2[address(msg.sender)] += stor1[address(msg.sender)]
    else:
        require state <= 7
        if state == 7:
            stor1[address(msg.sender)] = 0
            stor2[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor1[address(msg.sender)] + stor2[address(msg.sender)]
            require ext_call.success
    Mask(96, 0, stor0.field_160) = 0
}

function _fallback() payable {
    require state <= 7
    if state != 1:
        require state <= 7
        require state == 4
    if block.timestamp >= startICO + period:
        require block.timestamp < startPreICO + period
    require state <= 7
    if state == 1:
        require soldTokens < 440000 * 10^18
    else:
        require state <= 7
        if state != 4:
            require soldTokens < 0
        else:
            require soldTokens < 1540000 * 10^18
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    require priceUSD
    require 2 * 10^15 * msg.value / priceUSD / 2 * 10^15 == msg.value / priceUSD
    require state <= 7
    if state == 1:
        if soldTokens + (2 * 10^15 * msg.value / priceUSD) <= 440000 * 10^18:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2 * 10^15 * msg.value / priceUSD
            require ext_call.success
            collectedCent += msg.value / priceUSD
            soldTokens += 2 * 10^15 * msg.value / priceUSD
            require state <= 7
            if state != 1:
                stor2[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
            else:
                stor1[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
        else:
            require soldTokens <= 440000 * 10^18
            if -soldTokens + 440000 * 10^18 / 2 * 10^15:
                require -soldTokens + 440000 * 10^18 / 2 * 10^15
                require -soldTokens + 440000 * 10^18 / 2 * 10^15 * priceUSD / -soldTokens + 440000 * 10^18 / 2 * 10^15 == priceUSD
            call msg.sender with:
               value msg.value - (-soldTokens + 440000 * 10^18 / 2 * 10^15 * priceUSD) wei
                 gas 3 * 10^6 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, -soldTokens + 440000 * 10^18
            require ext_call.success
            collectedCent += -soldTokens + 440000 * 10^18 / 2 * 10^15
            soldTokens = 440000 * 10^18
            require state <= 7
            if state != 1:
                stor2[address(msg.sender)] = stor2[address(msg.sender)] + -soldTokens + 440000 * 10^18
            else:
                stor1[address(msg.sender)] = stor1[address(msg.sender)] + -soldTokens + 440000 * 10^18
    else:
        require state <= 7
        if state != 4:
            if soldTokens + (2 * 10^15 * msg.value / priceUSD) <= 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2 * 10^15 * msg.value / priceUSD
                require ext_call.success
                collectedCent += msg.value / priceUSD
                soldTokens += 2 * 10^15 * msg.value / priceUSD
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
                else:
                    stor1[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
            else:
                require soldTokens <= 0
                if -soldTokens / 2 * 10^15:
                    require -soldTokens / 2 * 10^15
                    require -soldTokens / 2 * 10^15 * priceUSD / -soldTokens / 2 * 10^15 == priceUSD
                call msg.sender with:
                   value msg.value - (-soldTokens / 2 * 10^15 * priceUSD) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -soldTokens
                require ext_call.success
                collectedCent += -soldTokens / 2 * 10^15
                soldTokens = 0
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] -= soldTokens
                else:
                    stor1[address(msg.sender)] -= soldTokens
        else:
            if soldTokens + (2 * 10^15 * msg.value / priceUSD) <= 1540000 * 10^18:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2 * 10^15 * msg.value / priceUSD
                require ext_call.success
                collectedCent += msg.value / priceUSD
                soldTokens += 2 * 10^15 * msg.value / priceUSD
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
                else:
                    stor1[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
            else:
                require soldTokens <= 1540000 * 10^18
                if -soldTokens + 1540000 * 10^18 / 2 * 10^15:
                    require -soldTokens + 1540000 * 10^18 / 2 * 10^15
                    require -soldTokens + 1540000 * 10^18 / 2 * 10^15 * priceUSD / -soldTokens + 1540000 * 10^18 / 2 * 10^15 == priceUSD
                call msg.sender with:
                   value msg.value - (-soldTokens + 1540000 * 10^18 / 2 * 10^15 * priceUSD) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -soldTokens + 1540000 * 10^18
                require ext_call.success
                collectedCent += -soldTokens + 1540000 * 10^18 / 2 * 10^15
                soldTokens = 1540000 * 10^18
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] = stor2[address(msg.sender)] + -soldTokens + 1540000 * 10^18
                else:
                    stor1[address(msg.sender)] = stor1[address(msg.sender)] + -soldTokens + 1540000 * 10^18
    Mask(96, 0, stor0.field_160) = 0
}

function mintTokens() payable {
    require state <= 7
    if state != 1:
        require state <= 7
        require state == 4
    if block.timestamp >= startICO + period:
        require block.timestamp < startPreICO + period
    require state <= 7
    if state == 1:
        require soldTokens < 440000 * 10^18
    else:
        require state <= 7
        if state != 4:
            require soldTokens < 0
        else:
            require soldTokens < 1540000 * 10^18
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    require priceUSD
    require 2 * 10^15 * msg.value / priceUSD / 2 * 10^15 == msg.value / priceUSD
    require state <= 7
    if state == 1:
        if soldTokens + (2 * 10^15 * msg.value / priceUSD) <= 440000 * 10^18:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2 * 10^15 * msg.value / priceUSD
            require ext_call.success
            collectedCent += msg.value / priceUSD
            soldTokens += 2 * 10^15 * msg.value / priceUSD
            require state <= 7
            if state != 1:
                stor2[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
            else:
                stor1[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
        else:
            require soldTokens <= 440000 * 10^18
            if -soldTokens + 440000 * 10^18 / 2 * 10^15:
                require -soldTokens + 440000 * 10^18 / 2 * 10^15
                require -soldTokens + 440000 * 10^18 / 2 * 10^15 * priceUSD / -soldTokens + 440000 * 10^18 / 2 * 10^15 == priceUSD
            call msg.sender with:
               value msg.value - (-soldTokens + 440000 * 10^18 / 2 * 10^15 * priceUSD) wei
                 gas 3 * 10^6 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, -soldTokens + 440000 * 10^18
            require ext_call.success
            collectedCent += -soldTokens + 440000 * 10^18 / 2 * 10^15
            soldTokens = 440000 * 10^18
            require state <= 7
            if state != 1:
                stor2[address(msg.sender)] = stor2[address(msg.sender)] + -soldTokens + 440000 * 10^18
            else:
                stor1[address(msg.sender)] = stor1[address(msg.sender)] + -soldTokens + 440000 * 10^18
    else:
        require state <= 7
        if state != 4:
            if soldTokens + (2 * 10^15 * msg.value / priceUSD) <= 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2 * 10^15 * msg.value / priceUSD
                require ext_call.success
                collectedCent += msg.value / priceUSD
                soldTokens += 2 * 10^15 * msg.value / priceUSD
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
                else:
                    stor1[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
            else:
                require soldTokens <= 0
                if -soldTokens / 2 * 10^15:
                    require -soldTokens / 2 * 10^15
                    require -soldTokens / 2 * 10^15 * priceUSD / -soldTokens / 2 * 10^15 == priceUSD
                call msg.sender with:
                   value msg.value - (-soldTokens / 2 * 10^15 * priceUSD) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -soldTokens
                require ext_call.success
                collectedCent += -soldTokens / 2 * 10^15
                soldTokens = 0
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] -= soldTokens
                else:
                    stor1[address(msg.sender)] -= soldTokens
        else:
            if soldTokens + (2 * 10^15 * msg.value / priceUSD) <= 1540000 * 10^18:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2 * 10^15 * msg.value / priceUSD
                require ext_call.success
                collectedCent += msg.value / priceUSD
                soldTokens += 2 * 10^15 * msg.value / priceUSD
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
                else:
                    stor1[address(msg.sender)] += 2 * 10^15 * msg.value / priceUSD
            else:
                require soldTokens <= 1540000 * 10^18
                if -soldTokens + 1540000 * 10^18 / 2 * 10^15:
                    require -soldTokens + 1540000 * 10^18 / 2 * 10^15
                    require -soldTokens + 1540000 * 10^18 / 2 * 10^15 * priceUSD / -soldTokens + 1540000 * 10^18 / 2 * 10^15 == priceUSD
                call msg.sender with:
                   value msg.value - (-soldTokens + 1540000 * 10^18 / 2 * 10^15 * priceUSD) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -soldTokens + 1540000 * 10^18
                require ext_call.success
                collectedCent += -soldTokens + 1540000 * 10^18 / 2 * 10^15
                soldTokens = 1540000 * 10^18
                require state <= 7
                if state != 1:
                    stor2[address(msg.sender)] = stor2[address(msg.sender)] + -soldTokens + 1540000 * 10^18
                else:
                    stor1[address(msg.sender)] = stor1[address(msg.sender)] + -soldTokens + 1540000 * 10^18
    Mask(96, 0, stor0.field_160) = 0
}



}
