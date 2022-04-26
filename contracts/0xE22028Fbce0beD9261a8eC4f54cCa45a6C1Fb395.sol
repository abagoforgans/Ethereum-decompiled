contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0xa94c531d288608f61f906b1a35468ce54c7656b7
    require not msg.value
    stor2 = 421103 * 3600
    stor3 = 421871 * 3600
    stor0 = 0x98e2750d38b1d24ba6c503e9853db69e7cf78fe4
    return code.data[221 len 838]
}



// =====================  Runtime code  =====================


address tokenRewardAddress;
address stor1;
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
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 20000 * msg.value
    require ext_call.success
    emit FundTransfer(msg.sender, 20000 * msg.value, 1);
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
