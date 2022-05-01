contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor2 = 10^15
    stor3 = 0x83920a18f8efacf8cadf33739928846e41fd80d7
    bool(stor4.length) = 0
    stor4.length.field_1 = 12
    stor4.length.field_8 = 'VitalyTokenR' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'VTCR' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    stor0[stor3] = stor2
    return code.data[545 len 3476]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 loanBalanceOf;
uint256 totalSupply;
address stor3;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function loanBalanceOf(address arg1) {
    return loanBalanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function signLoan(address arg1) {
    require msg.sender == stor3
    loanBalanceOf[address(arg1)] = balanceOf[address(arg1)]
    emit signLoanEvent(arg1);
}

function subLoan(address arg1, uint256 arg2) {
    require msg.sender == stor3
    require arg2 <= loanBalanceOf[address(arg1)]
    loanBalanceOf[address(arg1)] -= arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function giveTokens(address arg1, uint256 arg2) {
    require msg.sender == stor3
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require loanBalanceOf[address(arg1)] + arg2 >= loanBalanceOf[address(arg1)]
    loanBalanceOf[address(arg1)] += arg2
    emit giveToken(address(arg1), arg2);
    emit Transfer(arg2, msg.sender, arg1);
}



}
