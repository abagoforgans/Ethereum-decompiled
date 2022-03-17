contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = code.data[2256 len 32]
    stor1 = code.data[2288 len 32]
    stor3 = block.timestamp + (60 * code.data[2320 len 32])
    stor4 = code.data[2352 len 32]
    stor5 = code.data[2384 len 32]
    return code.data[210 len 2046]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
array of struct funders;

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

function funders(uint256 arg1) payable {
    require arg1 < funders.length
    return funders[arg1].field_0, funders[arg1].field_256
}

function checkGoalReached() payable {
    mem[64] = 96
    if block.timestamp < deadline:
    if amountRaised < fundingGoal:
        emit FundTransfer(0, 11, 0);
        idx = 0
        while idx < funders.length:
            call funders[idx].field_0 with:
               value funders[idx].field_256 wei
                 gas 0 wei
            mem[0] = 6
            mem[mem[64]] = funders[idx].field_0
            mem[mem[64] + 32] = funders[idx].field_256
            mem[mem[64] + 64] = 0
            emit FundTransfer(funders[idx].field_0, funders[idx].field_256, 0);
            idx = idx + 1
            continue 
    else:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 0 wei
        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
    selfdestruct(beneficiaryAddress)
}

function _fallback() payable {
    funders.length++
    if not funders.length <= funders.length + 1:
        idx = 2 * funders.length + 1
        while 2 * funders.length > idx:
            funders[idx].field_0 = 0
            funders[idx].field_256 = 0
            idx = idx + 1
            continue 
    require funders.length < funders.length
    funders[funders.length].field_0 = msg.sender or Mask(96, 160, funders[funders.length].field_0)
    funders[funders.length].field_256 = msg.value
    amountRaised += msg.value
    call tokenRewardAddress.sendCoin(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
