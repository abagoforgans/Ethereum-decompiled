contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint128 stor5; offset 160
uint256 stor5;

function _fallback() payable {
    stor0 = code.data[1362 len 32]
    stor1 = code.data[1394 len 32]
    stor3 = block.timestamp + (60 * code.data[1426 len 32])
    stor4 = code.data[1458 len 32]
    uint256(stor5.field_0) = Mask(96, 0, stor5.field_160)
    return code.data[99 len 1263]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
array of struct stor6;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;

function deadline() payable {
    return deadline
}

function beneficiary() payable {
    return beneficiaryAddress
}

function tokenReward() payable {
    return tokenRewardAddress
}

function fundingGoal() payable {
    return fundingGoal
}

function amountRaised() payable {
    return amountRaised
}

function price() payable {
    return price
}

function checkGoalReached() payable {
    mem[64] = 96
    if block.timestamp < deadline:
    if amountRaised < fundingGoal:
        emit 0x56e842ae: 0, 11, 0
        idx = 0
        while idx < stor6.length:
            call stor6[idx].field_0 with:
               value storF652[idx] wei
                 gas 0 wei
            mem[0] = 6
            mem[mem[64]] = stor6[idx].field_0
            mem[mem[64] + 32] = storF652[idx]
            mem[mem[64] + 64] = 0
            emit 0x56e842ae: stor6[idx].field_0, storF652[idx], 0
            idx = idx + 1
            continue 
    else:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 0 wei
        emit 0x56e842ae: beneficiaryAddress, amountRaised, 0
    selfdestruct(beneficiaryAddress)
}

function funders(uint256 arg1) payable {
    require arg1 < stor6.length
    return stor6[arg1].field_0, storF652[arg1]
}

function _fallback() payable {
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = 2 * stor6.length + 1
        while 2 * stor6.length > idx:
            stor6[idx].field_0 = 0
            stor6[idx].field_256 = 0
            idx = idx + 1
            continue 
    require stor6.length < stor6.length
    stor6[stor6.length].field_0 = msg.sender or Mask(96, 160, stor6[stor6.length].field_0)
    stor6[stor6.length].field_256 = msg.value
    amountRaised += msg.value
    call tokenRewardAddress.sendCoin(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit 0x56e842ae: msg.sender, msg.value, 1
}



}
