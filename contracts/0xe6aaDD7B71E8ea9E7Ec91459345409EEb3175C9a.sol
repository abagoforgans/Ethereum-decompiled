contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = code.data[1181 len 32]
    stor1 = code.data[1213 len 32]
    stor3 = block.timestamp + (60 * code.data[1245 len 32])
    stor4 = code.data[1277 len 32]
    return code.data[81 len 1100]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
array of struct stor5;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;

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

function price() payable {
    return price
}

function checkGoalReached() payable {
    mem[64] = 96
    if block.timestamp < deadline:
    if amountRaised < fundingGoal:
        idx = 0
        while idx < stor5.length:
            call stor36B6[idx] with:
               value stor36B6[idx] wei
                 gas 0 wei
            mem[0] = 5
            mem[mem[64]] = stor36B6[idx]
            mem[mem[64] + 32] = stor36B6[idx]
            mem[mem[64] + 64] = 0
            emit FundTransfer(stor36B6[idx], stor36B6[idx], 0);
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
    require arg1 < stor5.length
    return stor36B6[arg1], stor36B6[arg1]
}

function _fallback() payable {
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = 2 * stor5.length + 1
        while 2 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            idx = idx + 1
            continue 
    require stor5.length < stor5.length
    stor5[stor5.length].field_0 = msg.sender or Mask(96, 160, stor5[stor5.length].field_0)
    stor5[stor5.length].field_256 = msg.value
    amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
