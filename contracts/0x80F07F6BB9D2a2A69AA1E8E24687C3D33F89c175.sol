contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = code.data[1356 len 20]
    stor3 = code.data[1376 len 32]
    stor4 = code.data[1420 len 20]
    return code.data[117 len 1227]
}



// =====================  Runtime code  =====================


address owner;
uint256 amountRaised;
uint256 amountRaisedPhase;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function price() {
    return price
}

function amountRaisedPhase() {
    return amountRaisedPhase
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function safeWithdrawal() {
    require owner == msg.sender
    amountRaisedPhase = 0
    emit FundTransfer(owner, amountRaisedPhase, 0);
    call owner with:
       value amountRaisedPhase wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require msg.value + amountRaisedPhase >= amountRaisedPhase
    amountRaisedPhase += msg.value
    if msg.value:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10000 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
