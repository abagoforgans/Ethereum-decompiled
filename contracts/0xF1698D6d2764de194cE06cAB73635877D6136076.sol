contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor0 = code.data[1138 len 32]
    stor1 = code.data[1170 len 32]
    stor3 = block.timestamp + (60 * code.data[1202 len 32])
    stor4 = code.data[1234 len 32]
    stor5 = code.data[1266 len 32]
    stor6 = code.data[1298 len 32]
    stor7 = code.data[1330 len 32]
    stor8 = code.data[1362 len 32] or Mask(96, 160, stor8)
    return code.data[134 len 1004]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 sub_17a5410b;
uint256 token_price;
uint256 sub_7121809a;
uint256 sub_4a707247;
uint256 bid;
address tokenRewardAddress;
array of struct stor9;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;

function sub_17a5410b(?) payable {
    return sub_17a5410b
}

function bid() payable {
    return bid
}

function beneficiary() payable {
    return beneficiaryAddress
}

function sub_4a707247(?) payable {
    return sub_4a707247
}

function tokenReward() payable {
    return tokenRewardAddress
}

function sub_7121809a(?) payable {
    return sub_7121809a
}

function fundingGoal() payable {
    return fundingGoal
}

function amountRaised() payable {
    return amountRaised
}

function token_price() payable {
    return token_price
}

function checkGoalReached() payable {
    if block.timestamp < sub_17a5410b:
    if amountRaised >= fundingGoal:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 0 wei
        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
    selfdestruct(beneficiaryAddress)
}

function funders(uint256 arg1) payable {
    require arg1 < stor9.length
    return stor9[arg1].field_0, stor6E15[arg1]
}

function _fallback() payable {
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = 2 * stor9.length + 1
        while 2 * stor9.length > idx:
            stor9[idx].field_0 = 0
            stor9[idx].field_256 = 0
            idx = idx + 1
            continue 
    require stor9.length + 1 < stor9.length
    stor9[stor9.length + 1].field_0 = msg.sender or Mask(96, 160, stor9[stor9.length + 1].field_0)
    stor6E15[stor9.length + 1] = msg.value
    amountRaised += msg.value
    call tokenRewardAddress.0x90b98a11 with:
         gas gas_remaining - 25050 wei
        args address(msg.sender), stor6E15[stor9.length + 1] / token_price
    require ext_call.success
    emit FundTransfer(stor9[stor9.length + 1].field_0, stor6E15[stor9.length + 1], 1);
}



}
