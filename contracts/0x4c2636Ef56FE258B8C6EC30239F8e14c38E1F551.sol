contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 stor1;
uint256 stor2;
address tokenRewardAddress;
mapping of uint256 balanceOf;
mapping of uint256 sub_50357d03;

function beneficiary() {
    return beneficiaryAddress
}

function sub_50357d03(?) {
    return sub_50357d03[arg1]
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    balanceOf[msg.sender] += msg.value
    stor1 += 20 * msg.value / 100
    stor2 = stor2 + msg.value - (20 * msg.value / 100)
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value stor1 wei
         gas 2300 * is_zero(value) wei
    stor1 = 0
    emit FundTransfer(beneficiaryAddress, 0, 0);
}

function sub_051d3a81(?) {
    if block.timestamp - sub_50357d03[address(msg.sender)] < 168 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividends already issued for this portfolio this week'
    require ext_code.size(0x1c02759081c74d1fe4b34b3b75a6fe75790d4830)
    call 0x1c02759081c74d1fe4b34b3b75a6fe75790d4830.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1c02759081c74d1fe4b34b3b75a6fe75790d4830)
    call 0x1c02759081c74d1fe4b34b3b75a6fe75790d4830.0x70a08231 with:
         gas gas_remaining wei
        args 0x86ce2e77cf135078fa7c1f327e841cafa8912656
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1c02759081c74d1fe4b34b3b75a6fe75790d4830)
    call 0x1c02759081c74d1fe4b34b3b75a6fe75790d4830.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size < 32
    revert
}



}
