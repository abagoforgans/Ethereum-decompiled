contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[2669 len 2250]
    require create.new_address
    stor5 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x1e129862b37fe605ef2099022f497caab7db194c
    stor4 = 0x1e129862b37fe605ef2099022f497caab7db194c
    stor2 = msg.sender
    stor3 = 1200
    stor9 = 70000
    stor6 = block.timestamp
    stor7 = 429528 * 24 * 3600
    stor8 = 42000
    stor10 = 500 * 10^6
    stor11 = 0
    stor12 = 0
    return code.data[249 len 2420]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor3;
address stor4;
address tokenAddress;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 ETHUSD;
uint256 hardcapUSD;
uint256 collectedFunds;
uint8 stor12;

function hardcapUSD() {
    return hardcapUSD
}

function collectedFunds() {
    return collectedFunds
}

function ETHUSD() {
    return ETHUSD
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function setETHUSD(uint256 arg1) {
    require stor2 == msg.sender
    ETHUSD = arg1
}

function setPause(bool arg1) {
    require stor2 == msg.sender
    stor12 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require stor2 == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function finishMinting() {
    require stor2 == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require stor3 * ext_call.return_data[0] / ext_call.return_data[0] == stor3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor4, stor3 * ext_call.return_data[0] / 10000
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor4
    require ext_call.success
}

function _fallback() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < stor8
    require collectedFunds < hardcapUSD
    require block.timestamp > stor6
    require block.timestamp < stor7
    require bool(stor12) != 1
    require msg.value > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ETHUSD * msg.value / msg.value == ETHUSD
    require ext_call.return_data[0] <= stor8
    require stor8 - ext_call.return_data[0] > 0
    if ETHUSD * msg.value / 10^18 <= 3300000:
        if ETHUSD * msg.value / 10^18 <= 500 * 3600:
            if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                if ETHUSD * msg.value / 10^18 / 5 * 3600:
                    require ETHUSD * msg.value / 10^18 / 5 * 3600
                    require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                    require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
            else:
                if stor8 - ext_call.return_data[0]:
                    require stor8 - ext_call.return_data[0]
                    require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                    require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor8 - ext_call.return_data[0]
        else:
            if stor8 - ext_call.return_data[0] <= 100:
                if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                    if ETHUSD * msg.value / 10^18 / 5 * 3600:
                        require ETHUSD * msg.value / 10^18 / 5 * 3600
                        require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                    require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
                else:
                    if stor8 - ext_call.return_data[0]:
                        require stor8 - ext_call.return_data[0]
                        require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                    require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor8 - ext_call.return_data[0]
            else:
                require 500 * 3600 <= ETHUSD * msg.value / 10^18
                require ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 >= (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                if ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 <= stor8 - ext_call.return_data[0]:
                    require 100 <= ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                    if (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000:
                        require (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                        require 15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 / (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 == 15000
                    require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) >= 500 * 3600
                    require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600):
                        require (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600)
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                else:
                    require 100 <= stor8 - ext_call.return_data[0]
                    if stor8 + -ext_call.return_data[0] - 100:
                        require stor8 + -ext_call.return_data[0] - 100
                        require (15000 * stor8) + (-15000 * ext_call.return_data[0]) - 1500000 / stor8 + -ext_call.return_data[0] - 100 == 15000
                    require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 >= 500 * 3600
                    require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000:
                        require (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000 == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor8 - ext_call.return_data[0]
    else:
        if stor8 - ext_call.return_data[0] > 200:
            require 3300000 <= ETHUSD * msg.value / 10^18
            require ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200 >= (ETHUSD * msg.value / 10^18) - 3300000 / 12000
            if ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200 <= stor8 - ext_call.return_data[0]:
                require 200 <= ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200
                if (ETHUSD * msg.value / 10^18) - 3300000 / 12000:
                    require (ETHUSD * msg.value / 10^18) - 3300000 / 12000
                    require 12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000 / (ETHUSD * msg.value / 10^18) - 3300000 / 12000 == 12000
                require (12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 3300000 >= 3300000
                require (12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 3300000 <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) + (-12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000:
                    require (ETHUSD * msg.value / 10^18) + (-12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / (ETHUSD * msg.value / 10^18) + (-12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200
            else:
                require 200 <= stor8 - ext_call.return_data[0]
                if stor8 + -ext_call.return_data[0] - 200:
                    require stor8 + -ext_call.return_data[0] - 200
                    require (12000 * stor8) + (-12000 * ext_call.return_data[0]) - 2400000 / stor8 + -ext_call.return_data[0] - 200 == 12000
                require (12000 * stor8) + (-12000 * ext_call.return_data[0]) + (250 * 3600) >= 3300000
                require (12000 * stor8) + (-12000 * ext_call.return_data[0]) + (250 * 3600) <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) + (-12000 * stor8) + (12000 * ext_call.return_data[0]) - (250 * 3600):
                    require (ETHUSD * msg.value / 10^18) + (-12000 * stor8) + (12000 * ext_call.return_data[0]) - (250 * 3600)
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / (ETHUSD * msg.value / 10^18) + (-12000 * stor8) + (12000 * ext_call.return_data[0]) - (250 * 3600) == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor8 - ext_call.return_data[0]
        else:
            if ETHUSD * msg.value / 10^18 <= 500 * 3600:
                if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                    if ETHUSD * msg.value / 10^18 / 5 * 3600:
                        require ETHUSD * msg.value / 10^18 / 5 * 3600
                        require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                    require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
                else:
                    if stor8 - ext_call.return_data[0]:
                        require stor8 - ext_call.return_data[0]
                        require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                    require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor8 - ext_call.return_data[0]
            else:
                if stor8 - ext_call.return_data[0] <= 100:
                    if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                        if ETHUSD * msg.value / 10^18 / 5 * 3600:
                            require ETHUSD * msg.value / 10^18 / 5 * 3600
                            require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                        require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                            require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
                    else:
                        if stor8 - ext_call.return_data[0]:
                            require stor8 - ext_call.return_data[0]
                            require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                        require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                            require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor8 - ext_call.return_data[0]
                else:
                    require 500 * 3600 <= ETHUSD * msg.value / 10^18
                    require ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 >= (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                    if ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 <= stor8 - ext_call.return_data[0]:
                        require 100 <= ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                        if (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000:
                            require (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                            require 15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 / (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 == 15000
                        require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) >= 500 * 3600
                        require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600):
                            require (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600)
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600) == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                    else:
                        require 100 <= stor8 - ext_call.return_data[0]
                        if stor8 + -ext_call.return_data[0] - 100:
                            require stor8 + -ext_call.return_data[0] - 100
                            require (15000 * stor8) + (-15000 * ext_call.return_data[0]) - 1500000 / stor8 + -ext_call.return_data[0] - 100 == 15000
                        require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 >= 500 * 3600
                        require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000:
                            require (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000 == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor8 - ext_call.return_data[0]
    require ext_call.success
}

function createTokens() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < stor8
    require collectedFunds < hardcapUSD
    require block.timestamp > stor6
    require block.timestamp < stor7
    require bool(stor12) != 1
    require msg.value > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require ETHUSD * msg.value / msg.value == ETHUSD
    require ext_call.return_data[0] <= stor8
    require stor8 - ext_call.return_data[0] > 0
    if ETHUSD * msg.value / 10^18 <= 3300000:
        if ETHUSD * msg.value / 10^18 <= 500 * 3600:
            if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                if ETHUSD * msg.value / 10^18 / 5 * 3600:
                    require ETHUSD * msg.value / 10^18 / 5 * 3600
                    require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                    require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
            else:
                if stor8 - ext_call.return_data[0]:
                    require stor8 - ext_call.return_data[0]
                    require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                    require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor8 - ext_call.return_data[0]
        else:
            if stor8 - ext_call.return_data[0] <= 100:
                if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                    if ETHUSD * msg.value / 10^18 / 5 * 3600:
                        require ETHUSD * msg.value / 10^18 / 5 * 3600
                        require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                    require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
                else:
                    if stor8 - ext_call.return_data[0]:
                        require stor8 - ext_call.return_data[0]
                        require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                    require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor8 - ext_call.return_data[0]
            else:
                require 500 * 3600 <= ETHUSD * msg.value / 10^18
                require ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 >= (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                if ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 <= stor8 - ext_call.return_data[0]:
                    require 100 <= ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                    if (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000:
                        require (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                        require 15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 / (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 == 15000
                    require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) >= 500 * 3600
                    require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600):
                        require (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600)
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                else:
                    require 100 <= stor8 - ext_call.return_data[0]
                    if stor8 + -ext_call.return_data[0] - 100:
                        require stor8 + -ext_call.return_data[0] - 100
                        require (15000 * stor8) + (-15000 * ext_call.return_data[0]) - 1500000 / stor8 + -ext_call.return_data[0] - 100 == 15000
                    require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 >= 500 * 3600
                    require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000:
                        require (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000 == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor8 - ext_call.return_data[0]
    else:
        if stor8 - ext_call.return_data[0] > 200:
            require 3300000 <= ETHUSD * msg.value / 10^18
            require ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200 >= (ETHUSD * msg.value / 10^18) - 3300000 / 12000
            if ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200 <= stor8 - ext_call.return_data[0]:
                require 200 <= ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200
                if (ETHUSD * msg.value / 10^18) - 3300000 / 12000:
                    require (ETHUSD * msg.value / 10^18) - 3300000 / 12000
                    require 12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000 / (ETHUSD * msg.value / 10^18) - 3300000 / 12000 == 12000
                require (12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 3300000 >= 3300000
                require (12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 3300000 <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) + (-12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000:
                    require (ETHUSD * msg.value / 10^18) + (-12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / (ETHUSD * msg.value / 10^18) + (-12000 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * (ETHUSD * msg.value / 10^18) - 3300000 / 12000) - 3300000 * 10^18 / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ((ETHUSD * msg.value / 10^18) - 3300000 / 12000) + 200
            else:
                require 200 <= stor8 - ext_call.return_data[0]
                if stor8 + -ext_call.return_data[0] - 200:
                    require stor8 + -ext_call.return_data[0] - 200
                    require (12000 * stor8) + (-12000 * ext_call.return_data[0]) - 2400000 / stor8 + -ext_call.return_data[0] - 200 == 12000
                require (12000 * stor8) + (-12000 * ext_call.return_data[0]) + (250 * 3600) >= 3300000
                require (12000 * stor8) + (-12000 * ext_call.return_data[0]) + (250 * 3600) <= ETHUSD * msg.value / 10^18
                if (ETHUSD * msg.value / 10^18) + (-12000 * stor8) + (12000 * ext_call.return_data[0]) - (250 * 3600):
                    require (ETHUSD * msg.value / 10^18) + (-12000 * stor8) + (12000 * ext_call.return_data[0]) - (250 * 3600)
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / (ETHUSD * msg.value / 10^18) + (-12000 * stor8) + (12000 * ext_call.return_data[0]) - (250 * 3600) == 10^18
                require ETHUSD
                call msg.sender with:
                   value (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD < msg.value:
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD <= msg.value
                    call stor1 with:
                       value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD <= msg.value
                    if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD):
                        require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD)
                        require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD) == ETHUSD
                    collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-12000 * 10^18 * stor8) + (12000 * 10^18 * ext_call.return_data[0]) - (250 * 10^18 * 3600) / ETHUSD * ETHUSD) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor8 - ext_call.return_data[0]
        else:
            if ETHUSD * msg.value / 10^18 <= 500 * 3600:
                if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                    if ETHUSD * msg.value / 10^18 / 5 * 3600:
                        require ETHUSD * msg.value / 10^18 / 5 * 3600
                        require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                    require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
                else:
                    if stor8 - ext_call.return_data[0]:
                        require stor8 - ext_call.return_data[0]
                        require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                    require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                    if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                        require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                    require ETHUSD
                    call msg.sender with:
                       value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        call stor1 with:
                           value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                        if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                            require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                            require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                        collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor8 - ext_call.return_data[0]
            else:
                if stor8 - ext_call.return_data[0] <= 100:
                    if ETHUSD * msg.value / 10^18 / 5 * 3600 <= stor8 - ext_call.return_data[0]:
                        if ETHUSD * msg.value / 10^18 / 5 * 3600:
                            require ETHUSD * msg.value / 10^18 / 5 * 3600
                            require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 / ETHUSD * msg.value / 10^18 / 5 * 3600 == 5 * 3600
                        require 5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600 <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600):
                            require (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600)
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * ETHUSD * msg.value / 10^18 / 5 * 3600) / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ETHUSD * msg.value / 10^18 / 5 * 3600
                    else:
                        if stor8 - ext_call.return_data[0]:
                            require stor8 - ext_call.return_data[0]
                            require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) / stor8 - ext_call.return_data[0] == 5 * 3600
                        require (5 * 3600 * stor8) - (5 * 3600 * ext_call.return_data[0]) <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]):
                            require (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0])
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / (ETHUSD * msg.value / 10^18) - (5 * 3600 * stor8) + (5 * 3600 * ext_call.return_data[0]) == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) - (5 * 10^18 * 3600 * stor8) + (5 * 10^18 * 3600 * ext_call.return_data[0]) / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor8 - ext_call.return_data[0]
                else:
                    require 500 * 3600 <= ETHUSD * msg.value / 10^18
                    require ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 >= (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                    if ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100 <= stor8 - ext_call.return_data[0]:
                        require 100 <= ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                        if (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000:
                            require (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000
                            require 15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 / (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000 == 15000
                        require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) >= 500 * 3600
                        require (15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + (500 * 3600) <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600):
                            require (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600)
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / (ETHUSD * msg.value / 10^18) + (-15000 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 3600) == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * (ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) - (500 * 10^18 * 3600) / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ((ETHUSD * msg.value / 10^18) - (500 * 3600) / 15000) + 100
                    else:
                        require 100 <= stor8 - ext_call.return_data[0]
                        if stor8 + -ext_call.return_data[0] - 100:
                            require stor8 + -ext_call.return_data[0] - 100
                            require (15000 * stor8) + (-15000 * ext_call.return_data[0]) - 1500000 / stor8 + -ext_call.return_data[0] - 100 == 15000
                        require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 >= 500 * 3600
                        require (15000 * stor8) + (-15000 * ext_call.return_data[0]) + 300000 <= ETHUSD * msg.value / 10^18
                        if (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000:
                            require (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / (ETHUSD * msg.value / 10^18) + (-15000 * stor8) + (15000 * ext_call.return_data[0]) - 300000 == 10^18
                        require ETHUSD
                        call msg.sender with:
                           value (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD < msg.value:
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                            call stor1 with:
                               value msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require (10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD <= msg.value
                            if msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD):
                                require msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD)
                                require (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / msg.value - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD) == ETHUSD
                            collectedFunds += (msg.value * ETHUSD) - ((10^18 * ETHUSD * msg.value / 10^18) + (-15000 * 10^18 * stor8) + (15000 * 10^18 * ext_call.return_data[0]) - 300000 * 10^18 / ETHUSD * ETHUSD) / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, stor8 - ext_call.return_data[0]
    require ext_call.success
}



}
