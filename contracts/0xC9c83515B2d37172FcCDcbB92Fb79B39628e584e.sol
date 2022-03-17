contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor0 = code.data[1157 len 32]
    stor1 = code.data[1189 len 32]
    stor3 = (60 * code.data[1221 len 32]) + block.timestamp
    return code.data[77 len 1080]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
array of struct stor4;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function deadline() payable {
    return deadline
}

function beneficiary() payable {
    return beneficiaryAddress
}

function fundingGoal() payable {
    return fundingGoal
}

function amountRaised() payable {
    return amountRaised
}

function checkGoalReached() payable {
    mem[64] = 96
    if block.timestamp < deadline:
    if amountRaised < fundingGoal:
        idx = 0
        while idx < stor4.length:
            call stor4[idx].field_0 with:
               value stor8A35[idx] wei
                 gas 0 wei
            mem[0] = 4
            mem[mem[64]] = stor4[idx].field_0
            mem[mem[64] + 32] = stor8A35[idx]
            mem[mem[64] + 64] = 0
            emit FundTransfer(stor4[idx].field_0, stor8A35[idx], 0);
            idx = idx + 1
            continue 
    else:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 0 wei
        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
    selfdestruct(beneficiaryAddress)
}

function funders(uint256 arg1) payable {
    require arg1 < stor4.length
    return stor4[arg1].field_0, stor8A35[arg1]
}

function _fallback() payable {
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = 2 * stor4.length + 1
        while 2 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            idx = idx + 1
            continue 
    require stor4.length < stor4.length
    stor4[stor4.length].field_0 = msg.sender or Mask(96, 160, stor4[stor4.length].field_0)
    stor4[stor4.length].field_256 = msg.value
    amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
