contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = 5000
    stor6 = 20
    require not msg.value
    stor3 = msg.sender
    stor4 = code.data[2858 len 20]
    stor0 = 1000000000 * 10^18
    stor1[stor3] = 1000000000 * 10^18
    return code.data[165 len 2681]
}



// =====================  Runtime code  =====================


const name = 'UnitCoin'

const decimals = 18

const symbol = 'UTC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setBase(uint256 arg1) {
    require stor3 == msg.sender
    stor5 = arg1
}

function setBonus(uint256 arg1) {
    require stor3 == msg.sender
    stor6 = arg1
}

function setOwner(address arg1) {
    require stor3 == msg.sender
    stor3 = arg1
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require stor3 == msg.sender
    stor4 = address(arg1)
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
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function issueToken(address arg1, uint256 arg2) {
    require stor3 == msg.sender
    require arg2 > 0
    if (10^18 * arg2) + balanceOf[address(arg1)] > balanceOf[address(arg1)]:
        balanceOf[address(arg1)] += 10^18 * arg2
        totalSupply += 10^18 * arg2
        emit Transfer((10^18 * arg2), 0, stor3);
        emit Transfer((10^18 * arg2), stor3, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stor5 > 0
    require msg.value >= 10^16
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if balanceOf[stor3] >= (msg.value * stor5) + (msg.value * stor5 * stor6 / 100):
        if (msg.value * stor5) + (msg.value * stor5 * stor6 / 100) > 0:
            if balanceOf[address(msg.sender)] + (msg.value * stor5) + (msg.value * stor5 * stor6 / 100) > balanceOf[address(msg.sender)]:
                balanceOf[stor3] = balanceOf[stor3] - (msg.value * stor5) - (msg.value * stor5 * stor6 / 100)
                balanceOf[msg.sender] = (msg.value * stor5) + (msg.value * stor5 * stor6 / 100) + balanceOf[msg.sender]
                emit Transfer(((msg.value * stor5) + (msg.value * stor5 * stor6 / 100)), stor3, msg.sender);
                emit Exchanged(msg.sender, msg.value, (msg.value * stor5) + (msg.value * stor5 * stor6 / 100));
}



}
