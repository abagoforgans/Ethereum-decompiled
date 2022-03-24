contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 900
    return code.data[42 len 1160]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 stor0;
uint256 payRate;
uint256 totalFund;
uint256 totalInvestors;
mapping of uint256 balances;
array of struct stor5;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;

function totalFund() payable {
    return totalFund
}

function balances(address arg1) payable {
    return balances[arg1]
}

function totalInvestors() payable {
    return totalInvestors
}

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function payRate() payable {
    return payRate
}

function payInvestors() payable {
    if address(beneficiaryAddress) != msg.sender:
    s = 0
    idx = 0
    while idx < stor5.length:
        mem[32] = 4
        mem[0] = 5
        call stor36B6[idx] with:
           value balances[stor36B6[idx]] + (balances[stor36B6[idx]] * payRate / 10000) wei
             gas 0 wei
        s = balances[stor36B6[idx]]
        idx = idx + 1
        continue 
    selfdestruct(address(beneficiaryAddress))
}

function _fallback() payable {
  stop
}

function sub_ec834245(?) payable {
    if address(beneficiaryAddress) == msg.sender:
        payRate = arg1
}

function investors(uint256 arg1) payable {
    require arg1 < stor5.length
    return stor36B6[arg1], stor36B6[arg1], stor36B6[arg1]
}

function changeOwner(address arg1) payable {
    if address(beneficiaryAddress) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_89ef80a6(?) payable {
    if not balances[address(msg.sender)]:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = (3 * stor5.length) + 3
            while 3 * stor5.length > idx:
                stor5[idx].field_0 = 0
                stor5[idx].field_256 = 0
                stor5[idx].field_512 = 0
                idx = idx + 3
                continue 
        stor5[stor5.length].field_0 = msg.sender or Mask(96, 160, stor5[stor5.length].field_0)
        stor5[stor5.length].field_256 = arg1
        stor5[stor5.length].field_512 = arg2
        totalInvestors++
    balances[address(msg.sender)] += msg.value
    totalFund += msg.value
    call address(beneficiaryAddress) with:
       value msg.value wei
         gas 0 wei
}



}
