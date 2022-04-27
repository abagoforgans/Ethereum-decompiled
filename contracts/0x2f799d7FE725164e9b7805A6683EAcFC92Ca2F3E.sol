contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function _fallback() {
    stor3 = code.data[7501 len 20]
    stor4 = code.data[7533 len 20]
    stor5 = code.data[7565 len 20]
    stor6 = code.data[7597 len 20]
    stor7 = code.data[7629 len 20]
    stor0 = 27772186 * 10^6
    stor1[stor3] = 27772186 * 10^6
    emit Transfer(27772186 * 10^6, 0, stor3);
    require stor0 + 3 * 10^12 >= stor0
    stor0 += 3 * 10^12
    stor1[stor4] = 3 * 10^12
    emit Transfer(3 * 10^12, 0, stor4);
    require stor0 + 55 * 10^12 >= stor0
    stor0 += 55 * 10^12
    stor1[stor5] = 55 * 10^12
    emit Transfer(55 * 10^12, 0, stor5);
    require stor0 + (7500 * 10^6 * 24 * 3600) >= stor0
    stor0 += 7500 * 10^6 * 24 * 3600
    stor1[stor6] = 7500 * 10^6 * 24 * 3600
    emit Transfer((7500 * 10^6 * 24 * 3600), 0, stor6);
    require stor0 + 15 * 10^12 >= stor0
    stor0 += 15 * 10^12
    stor1[stor7] = 15 * 10^12
    emit Transfer(15 * 10^12, 0, stor7);
    return code.data[1912 len 5577]
}



// =====================  Runtime code  =====================


const name = 'Tst Token'

const sub_17e821b8(?) = (7500 * 10^6 * 24 * 3600)

const sub_24eb4005(?) = 3 * 10^12

const decimals = 6

const symbol = 'TST'

const FUTURE_DEVELOPMENT_FUND = 55 * 10^12

const SALE_FUND = 27772186 * 10^6

const TEAM_FUND = 15 * 10^12


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address openLedgerAddress;
address sub_8cbc97b9Address;
address futureDevelopmentFundAddress;
address incentFundAddress;
address teamFundAddress;

function totalSupply() {
    return totalSupply
}

function incentFundAddress() {
    return incentFundAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function teamFundAddress() {
    return teamFundAddress
}

function sub_8cbc97b9(?) {
    return sub_8cbc97b9Address
}

function futureDevelopmentFundAddress() {
    return futureDevelopmentFundAddress
}

function openLedgerAddress() {
    return openLedgerAddress
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

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
