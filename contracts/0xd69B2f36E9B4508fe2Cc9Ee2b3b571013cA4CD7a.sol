contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of address hugeetherinvest;
mapping of uint8 stor3;
uint256 rate;
uint256 totalRemaining;
uint256 selfdropvalue;
uint8 distributionFinished;
uint8 crowdsaleFinished; offset 8
uint256 stor7; offset 8

function rate() {
    return rate
}

function distributionFinished() {
    return bool(distributionFinished)
}

function selfdropvalue() {
    return selfdropvalue
}

function hugeetherinvest(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < hugeetherinvest.length
    return hugeetherinvest[arg1]
}

function totalRemaining() {
    return totalRemaining
}

function crowdsaleFinished() {
    return bool(crowdsaleFinished)
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function startcrowdsale() {
    require msg.sender == stor0
    stor7 = 0
    return 1
}

function sub_1a0582fc(?) {
    require msg.sender == stor0
    distributionFinished = 0
    return 1
}

function setethrate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    rate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function finishcrowdsale() {
    require msg.sender == stor0
    require not crowdsaleFinished
    stor7 = 1
    emit crowdsaleFinishedd()
    return 1
}

function finishselfdrop() {
    require msg.sender == stor0
    require not distributionFinished
    distributionFinished = 1
    emit DistrFinished()
    return 1
}

function setselfdropvalue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    if arg1:
        require arg1
        require 100 * 10^6 * arg1 / arg1 == 100 * 10^6
    selfdropvalue = 100 * 10^6 * arg1
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setselfdroptoken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require arg1
    stor1 = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalRemaining = ext_call.return_data[0]
}

function sub_e6a7b3ec(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getTokens() payable {
    require not crowdsaleFinished
    require msg.value >= 10^15
    require rate > 0
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require totalRemaining >= msg.value * rate
    require msg.value * rate <= totalRemaining
    totalRemaining += -1 * msg.value * rate
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Distr((msg.value * rate), msg.sender);
    if msg.value >= 10^17:
        hugeetherinvest.length++
        hugeetherinvest[hugeetherinvest.length] = msg.sender
}

function _fallback() payable {
    if not msg.value:
        require not distributionFinished
        require not stor3[address(msg.sender)]
        require selfdropvalue
        if selfdropvalue > totalRemaining:
            selfdropvalue = totalRemaining
            revert
        totalRemaining -= selfdropvalue
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, selfdropvalue
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Distr(selfdropvalue, msg.sender);
        if selfdropvalue > 0:
            stor3[address(msg.sender)] = 1
    else:
        require not crowdsaleFinished
        require msg.value >= 10^15
        require rate > 0
        if msg.value:
            require msg.value
            require msg.value * rate / msg.value == rate
        require totalRemaining >= msg.value * rate
        require msg.value * rate <= totalRemaining
        totalRemaining += -1 * msg.value * rate
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Distr((msg.value * rate), msg.sender);
        if msg.value >= 10^17:
            hugeetherinvest.length++
            hugeetherinvest[hugeetherinvest.length] = msg.sender
}



}
