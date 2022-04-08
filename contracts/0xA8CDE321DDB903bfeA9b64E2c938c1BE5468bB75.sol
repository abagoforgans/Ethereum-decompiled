contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor3; offset 152
address stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor0 = 53 * 10^6
    Mask(152, 0, stor3.field_0) = 0x99f456e88e0bf635f6b2733e4228a2b5749675
    uint8(stor3.field_152) = 0
    require not msg.value
    stor4 = msg.sender
    stor5[address(msg.sender)] = stor0
    stor1 = stor0
    return code.data[134 len 2863]
}



// =====================  Runtime code  =====================


const name = 'Cryptex Shares'

const decimals = 0

const symbol = 'CSH'


uint256 totalSupply;
uint256 stor1;
uint256 totalDividendsPerShare;
address fallbackAccount;
address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint256 dividendsPaidPerShare;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function TotalDividendsPerShare() {
    return totalDividendsPerShare
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function dividendsPaidPerShare(address arg1) {
    return dividendsPaidPerShare[arg1]
}

function fallbackAccount() {
    return fallbackAccount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function changeFallbackAccount(address arg1) {
    require owner == msg.sender
    fallbackAccount = arg1
}

function _fallback() payable {
    require msg.value == 53 * 10^17
    require stor1
    totalDividendsPerShare += msg.value / stor1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function payReceiver(address arg1) payable {
    if balances[address(arg1)] <= 0:
    dividendsPaidPerShare[address(arg1)] = totalDividendsPerShare
    if (totalDividendsPerShare * balances[address(arg1)]) - (dividendsPaidPerShare[address(arg1)] * balances[address(arg1)]) <= 0:
    call arg1 with:
       value (totalDividendsPerShare * balances[address(arg1)]) - (dividendsPaidPerShare[address(arg1)] * balances[address(arg1)]) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    if balances[address(msg.sender)] > 0:
        if ext_code.size(msg.sender) <= 0:
            dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
            if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) > 0:
                call msg.sender with:
                   value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    if balances[address(msg.sender)] > 0:
        if ext_code.size(msg.sender) > 0:
            dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
            if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) > 0:
                call fallbackAccount with:
                   value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    if balances[address(arg1)] > 0:
        dividendsPaidPerShare[address(arg1)] = totalDividendsPerShare
        if (totalDividendsPerShare * balances[address(arg1)]) - (dividendsPaidPerShare[address(arg1)] * balances[address(arg1)]) > 0:
            call arg1 with:
               value (totalDividendsPerShare * balances[address(arg1)]) - (dividendsPaidPerShare[address(arg1)] * balances[address(arg1)]) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    dividendsPaidPerShare[address(arg1)] = totalDividendsPerShare
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    if balances[address(msg.sender)] > 0:
        if ext_code.size(msg.sender) <= 0:
            dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
            if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) > 0:
                call msg.sender with:
                   value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    if balances[address(msg.sender)] > 0:
        if ext_code.size(msg.sender) > 0:
            dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
            if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) > 0:
                call fallbackAccount with:
                   value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    if balances[address(arg2)] > 0:
        dividendsPaidPerShare[address(arg2)] = totalDividendsPerShare
        if (totalDividendsPerShare * balances[address(arg2)]) - (dividendsPaidPerShare[address(arg2)] * balances[address(arg2)]) > 0:
            call arg2 with:
               value (totalDividendsPerShare * balances[address(arg2)]) - (dividendsPaidPerShare[address(arg2)] * balances[address(arg2)]) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    balances[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    dividendsPaidPerShare[address(arg1)] = totalDividendsPerShare
    dividendsPaidPerShare[arg2] = totalDividendsPerShare
    return 1
}

function withdrawMyDividend() payable {
    if balances[address(msg.sender)] <= 0:
        if balances[address(msg.sender)] <= 0:
        if ext_code.size(msg.sender) <= 0:
        dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
        if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) <= 0:
        call fallbackAccount with:
           value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(msg.sender) > 0:
            if balances[address(msg.sender)] <= 0:
            if ext_code.size(msg.sender) <= 0:
            dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
            if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) <= 0:
            call fallbackAccount with:
               value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
        else:
            dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
            if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) <= 0:
                if balances[address(msg.sender)] <= 0:
                if ext_code.size(msg.sender) <= 0:
                dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
                if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) <= 0:
                call fallbackAccount with:
                   value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
            else:
                call msg.sender with:
                   value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if balances[address(msg.sender)] <= 0:
                    if ext_code.size(msg.sender) <= 0:
                    dividendsPaidPerShare[address(msg.sender)] = totalDividendsPerShare
                    if (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) <= 0:
                    call fallbackAccount with:
                       value (totalDividendsPerShare * balances[address(msg.sender)]) - (dividendsPaidPerShare[address(msg.sender)] * balances[address(msg.sender)]) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert
}



}
