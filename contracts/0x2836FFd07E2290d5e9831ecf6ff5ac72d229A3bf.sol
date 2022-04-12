contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = code.data[2765 len 20]
    stor5 = code.data[2797 len 20]
    stor6 = code.data[2829 len 20]
    stor1[code.data[2765 len 20]] = 150000000 * 10^18
    stor1[stor5] = 150000000 * 10^18
    stor1[stor6] = 380000000 * 10^18
    return code.data[435 len 2318]
}



// =====================  Runtime code  =====================


const name = 'CPC02'

const decimals = 18

const CPCEFund = 380000000 * 10^18

const CPCEPrivate = 150000000 * 10^18

const symbol = 'CPC02'

const factorial = 6

const CPCEIco = 150000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address cPCEPrivateDepositAddress;
address cPCEIcoDepositAddress;
address cPCEFundDepositAddress;

function CPCEPrivateDeposit() {
    return cPCEPrivateDepositAddress
}

function totalSupply() {
    return totalSupply
}

function CPCEFundDeposit() {
    return cPCEFundDepositAddress
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function CPCEIcoDeposit() {
    return cPCEIcoDepositAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
