contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1438 len 32]
    stor2 = code.data[1470 len 32]
    stor3 = code.data[1502 len 32]
    stor5 = code.data[1546 len 20]
    return code.data[135 len 1303]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 startline;
uint256 deadline;
uint256 price;
uint256 amountRaised;
address tokenRewardAddress;

function startline() {
    return startline
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function ChangeCost(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    price = arg1
}

function ChangeEnd(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    deadline = arg1
}

function ChangeStart(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    startline = arg1
}

function WithdrawAllETH() {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function WithdrawETH(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_da79b80c(?) {
    require beneficiaryAddress == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp > startline
    require block.timestamp < deadline
    require msg.value >= price
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
}



}
