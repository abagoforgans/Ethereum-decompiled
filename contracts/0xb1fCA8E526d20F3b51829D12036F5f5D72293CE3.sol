contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor6;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2451 len 20]
    stor6 = code.data[2483 len 20]
    return code.data[268 len 2171]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor2;
uint256 weiPerToken;
uint256 tokensInEth;
uint256 stor5;
address tokensAddress;
mapping of uint256 stor7;
mapping of uint256 stor8;

function tokensInEth() {
    return tokensInEth
}

function tokens() {
    return tokensAddress
}

function weiPerToken() {
    return weiPerToken
}

function management() {
    require msg.sender == stor0
    call msg.sender with:
       value stor2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function Buy() payable {
    stor5 = msg.value
    if not stor2:
        stor2 = stor5
    else:
        stor2 += stor5
        require msg.sender == stor0
        require stor2
        tokensInEth = 10000 * 10^18 / stor2
        require msg.sender == stor0
        require tokensInEth
        weiPerToken = 10^18 / tokensInEth
        emit Price(weiPerToken);
        require ext_code.size(tokensAddress)
        call tokensAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, stor5 * tokensInEth / 10^18
        require ext_call.success
        stor8[address(msg.sender)] += stor5
        stor7[address(msg.sender)] += stor5 * tokensInEth / 10^18
}

function sell(uint256 arg1) {
    require stor7[address(msg.sender)] >= arg1
    call msg.sender with:
       value arg1 * weiPerToken wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokensAddress)
    call tokensAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), arg1
    require ext_call.success
    stor7[address(msg.sender)] -= arg1
    stor8[address(msg.sender)] -= stor5
    stor2 += -1 * arg1 * weiPerToken
    require msg.sender == stor0
    require stor2
    tokensInEth = 10000 * 10^18 / stor2
    require msg.sender == stor0
    require tokensInEth
    weiPerToken = 10^18 / tokensInEth
    emit Price(weiPerToken);
    emit 0xd73c43a8: address(msg.sender), arg1 * weiPerToken, 0, weiPerToken
}



}
