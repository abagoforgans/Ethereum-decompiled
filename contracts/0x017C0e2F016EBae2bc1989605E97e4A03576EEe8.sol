contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = code.data[1809 len 20]
    stor3 = code.data[1829 len 32]
    stor4 = code.data[1873 len 20]
    return code.data[126 len 1671]
}



// =====================  Runtime code  =====================


address owner;
uint256 amountRaised;
uint256 amountRaisedPhase;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor6;

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

function whitelist(address arg1) {
    return bool(stor6[arg1])
}

function price() {
    return price
}

function amountRaisedPhase() {
    return amountRaisedPhase
}

function safeWithdrawal() {
    require msg.sender == owner
    amountRaisedPhase = 0
    emit FundTransfer(owner, amountRaisedPhase, 0);
    call owner with:
       value amountRaisedPhase wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= 2 * 10^18
    require msg.value < 10 * 10^18
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require msg.value + amountRaisedPhase >= amountRaisedPhase
    amountRaisedPhase += msg.value
    if 0 == msg.value:
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0 / price
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^18 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
