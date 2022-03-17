contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint128 stor5; offset 160
uint256 stor5;

function _fallback() payable {
    stor0 = code.data[1340 len 32]
    stor1 = code.data[1372 len 32]
    stor3 = block.timestamp + (60 * code.data[1404 len 32])
    stor4 = code.data[1436 len 32]
    uint256(stor5.field_0) = Mask(96, 0, stor5.field_160)
    return code.data[99 len 1241]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
array of struct stor6;
array of address stor29383233550797265264134949629632811322542414813541348916909332182249273523213;
array of uint256 stor29383233550797265264134949629632811322542414813541348916909332182249273523214;
array of uint256 stor39334116219629125808348081153816928403682804120744834889050218307929308101645;

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
        emit 0x3fe842ae: 0, 11, 0
        idx = 0
        while idx < stor6.length:
            call address(stor40F6[idx]) with:
               value stor56F6[idx] wei
                 gas 0 wei
            mem[0] = 6
            mem[mem[64]] = address(stor40F6[idx])
            mem[mem[64] + 32] = stor56F6[idx]
            mem[mem[64] + 64] = 0
            emit 0x3fe842ae: address(stor40F6[idx]), stor56F6[idx], 0
            idx = idx + 1
            continue 
    else:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 0 wei
        emit 0x3fe842ae: beneficiaryAddress, amountRaised, 0
    selfdestruct(beneficiaryAddress)
}

function funders(uint256 arg1) payable {
    require arg1 < stor6.length
    return address(stor40F6[arg1]), stor56F6[arg1]
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
    require stor6.length + 1 < stor6.length
    uint256(stor40F6[stor6.length + 1]) = msg.sender or Mask(96, 160, uint256(stor40F6[stor6.length + 1]))
    stor56F6[stor6.length + 1] = msg.value
    amountRaised += msg.value
    call tokenRewardAddress.0x90b98a11 with:
         gas gas_remaining - 25050 wei
        args address(msg.sender), stor56F6[stor6.length + 1] / price
    require ext_call.success
    emit 0x3fe842ae: address(stor40F6[stor6.length + 1]), stor40F6[stor6.length + 1], 1
}



}
