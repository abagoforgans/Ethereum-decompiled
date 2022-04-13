contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;

function _fallback() payable {
    stor0 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 185 * 10^9 * 3600
    stor6 = 185 * 10^9 * 3600
    stor7 = 0
    require not msg.value
    return code.data[81 len 2418]
}



// =====================  Runtime code  =====================


const CROWDFUNDING_PERIOD = (288 * 24 * 3600)

const CROWDSALE_TARGET = 10000 * 10^18


address humaniqTokenAddress;
address founderAddress;
address multisigAddress;
uint256 startDate;
uint256 icoBalance;
uint256 baseTokenPrice;
uint256 discountedPrice;
uint8 stor7;
mapping of uint256 investments;

function startDate() {
    return startDate
}

function baseTokenPrice() {
    return baseTokenPrice
}

function icoBalance() {
    return icoBalance
}

function multisig() {
    return multisigAddress
}

function founder() {
    return founderAddress
}

function humaniqToken() {
    return humaniqTokenAddress
}

function investments(address arg1) {
    return investments[arg1]
}

function discountedPrice() {
    return discountedPrice
}

function isICOActive() {
    return bool(stor7)
}

function HumaniqICO(address arg1) {
    founderAddress = msg.sender
    multisigAddress = arg1
}

function changeBaseTokenPrice(uint256 arg1) {
    require founderAddress == msg.sender
    baseTokenPrice = arg1
    return 1
}

function startICO() {
    require founderAddress == msg.sender
    if not stor7:
        if not startDate:
            stor7 = 1
            startDate = block.timestamp
}

function finishCrowdsale() {
    require founderAddress == msg.sender
    if 1 == bool(stor7):
        stor7 = 0
        require baseTokenPrice
        require ext_code.size(humaniqTokenAddress)
        call humaniqTokenAddress.0x475a9fa9 with:
             gas gas_remaining - 710 wei
            args multisigAddress, 114 * icoBalance / baseTokenPrice / 100
        require ext_call.success
        require ext_call.return_data[0]
        return 0
    else:
        return 0
}

function fundBTC(address arg1, uint256 arg2) {
    if block.timestamp - startDate >= 248 * 3600:
        discountedPrice = baseTokenPrice
    else:
        if block.timestamp - startDate >= 176 * 3600:
            discountedPrice = 100 * baseTokenPrice / 107
        else:
            if block.timestamp - startDate >= 104 * 3600:
                discountedPrice = 100 * baseTokenPrice / 120
            else:
                if block.timestamp - startDate >= 32 * 3600:
                    discountedPrice = 100 * baseTokenPrice / 142
                else:
                    if block.timestamp - startDate < 12 * 3600:
                        discountedPrice = 100 * baseTokenPrice / 170
                    else:
                        discountedPrice = 100 * baseTokenPrice / 150
    require stor7
    require founderAddress == msg.sender
    icoBalance += arg2 * discountedPrice
    investments[address(arg1)] += arg2 * discountedPrice
    require ext_code.size(humaniqTokenAddress)
    call humaniqTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    return arg2
}

function _fallback() payable {
    if block.timestamp - startDate >= 248 * 3600:
        discountedPrice = baseTokenPrice
    else:
        if block.timestamp - startDate >= 176 * 3600:
            discountedPrice = 100 * baseTokenPrice / 107
        else:
            if block.timestamp - startDate >= 104 * 3600:
                discountedPrice = 100 * baseTokenPrice / 120
            else:
                if block.timestamp - startDate >= 32 * 3600:
                    discountedPrice = 100 * baseTokenPrice / 142
                else:
                    if block.timestamp - startDate < 12 * 3600:
                        discountedPrice = 100 * baseTokenPrice / 170
                    else:
                        discountedPrice = 100 * baseTokenPrice / 150
    require stor7
    require msg.value >= baseTokenPrice
    require discountedPrice
    if msg.value <= msg.value / discountedPrice * discountedPrice:
        icoBalance += msg.value / discountedPrice * discountedPrice
        investments[address(msg.sender)] += msg.value / discountedPrice * discountedPrice
        call multisigAddress with:
           value msg.value / discountedPrice * discountedPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (msg.value / discountedPrice * discountedPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        icoBalance += msg.value / discountedPrice * discountedPrice
        investments[address(msg.sender)] += msg.value / discountedPrice * discountedPrice
        call multisigAddress with:
           value msg.value / discountedPrice * discountedPrice wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(humaniqTokenAddress)
    call humaniqTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / discountedPrice
    require ext_call.success
    require ext_call.return_data[0]
}

function fund() payable {
    if block.timestamp - startDate >= 248 * 3600:
        discountedPrice = baseTokenPrice
    else:
        if block.timestamp - startDate >= 176 * 3600:
            discountedPrice = 100 * baseTokenPrice / 107
        else:
            if block.timestamp - startDate >= 104 * 3600:
                discountedPrice = 100 * baseTokenPrice / 120
            else:
                if block.timestamp - startDate >= 32 * 3600:
                    discountedPrice = 100 * baseTokenPrice / 142
                else:
                    if block.timestamp - startDate < 12 * 3600:
                        discountedPrice = 100 * baseTokenPrice / 170
                    else:
                        discountedPrice = 100 * baseTokenPrice / 150
    require stor7
    require msg.value >= baseTokenPrice
    require discountedPrice
    if msg.value <= msg.value / discountedPrice * discountedPrice:
        icoBalance += msg.value / discountedPrice * discountedPrice
        investments[address(msg.sender)] += msg.value / discountedPrice * discountedPrice
        call multisigAddress with:
           value msg.value / discountedPrice * discountedPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (msg.value / discountedPrice * discountedPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        icoBalance += msg.value / discountedPrice * discountedPrice
        investments[address(msg.sender)] += msg.value / discountedPrice * discountedPrice
        call multisigAddress with:
           value msg.value / discountedPrice * discountedPrice wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(humaniqTokenAddress)
    call humaniqTokenAddress.0x475a9fa9 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / discountedPrice
    require ext_call.success
    require ext_call.return_data[0]
    return (msg.value / discountedPrice)
}



}
