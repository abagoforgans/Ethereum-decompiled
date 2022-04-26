contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0x1862154ceef9c349d7b6d4040f2db9b4864135b6
    stor2 = 10^10
    require not msg.value
    stor3 = 421511 * 3600
    stor4 = 422950 * 3600
    stor0 = 0x4ad02bf71d9fcf86bd155fb1d7bf891e0cd9b31d
    return code.data[230 len 847]
}



// =====================  Runtime code  =====================


address tokenRewardAddress;
address stor1;
uint256 stor2;
uint256 startDate;
uint256 endDate;

function startDate() {
    return startDate
}

function tokenReward() {
    return tokenRewardAddress
}

function endDate() {
    return endDate
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp > startDate
    require block.timestamp < endDate
    require stor2
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / stor2
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value / stor2, 1);
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
