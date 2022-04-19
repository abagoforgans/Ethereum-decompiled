contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint8 stor6;

function _fallback() payable {
    stor3 = msg.sender
    stor4 = 0
    stor6 = 0
    require not msg.value
    return code.data[127 len 7209]
}



// =====================  Runtime code  =====================


const name = 'SatanCoin'

const rate = (185 * 10^11 * 3600)

const decimals = 0

const roundMax = 74

const symbol = 'SATAN'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 roundNum;
uint256 roundDeadline;
uint8 stor6;
uint256 stor7;
mapping of address stor9;

function roundActive() {
    return bool(stor6)
}

function roundNum() {
    return roundNum
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function roundDeadline() {
    return roundDeadline
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startRound() {
    require msg.sender == owner
    require not stor6
    require roundNum < 9
    stor6 = 1
    roundDeadline = block.timestamp + (144 * 24 * 3600)
    roundNum++
    emit RoundStart(roundNum);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function getRoundRemaining() {
    if not roundNum:
        if totalSupply <= 74 * roundNum:
            return ((74 * roundNum) - totalSupply)
    else:
        if roundNum:
            if 74 * roundNum / roundNum == 74:
                if totalSupply <= 74 * roundNum:
                    return ((74 * roundNum) - totalSupply)
    revert
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

function getRoundIssued() {
    if not roundNum - 1:
        if (74 * roundNum) - 74 <= totalSupply:
            return (totalSupply + (-74 * roundNum) + 74)
    else:
        if roundNum - 1:
            if (74 * roundNum) - 74 / roundNum - 1 == 74:
                if (74 * roundNum) - 74 <= totalSupply:
                    return (totalSupply + (-74 * roundNum) + 74)
    revert
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

function createTokens(address arg1) payable {
    require stor6
    require msg.value > 0
    require not msg.value % 185 * 10^11 * 3600
    stor7 = msg.value / 185 * 10^11 * 3600
    if roundNum:
        require roundNum
        require 74 * roundNum / roundNum == 74
    require totalSupply <= 74 * roundNum
    require stor7 <= (74 * roundNum) - totalSupply
    require stor7 + totalSupply <= 666
    require stor7 >= 1
    require totalSupply + stor7 >= totalSupply
    totalSupply += stor7
    require balanceOf[address(arg1)] + stor7 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor7
    idx = 0
    while idx < stor7:
        if roundNum - 1:
            require roundNum - 1
            require (74 * roundNum) - 74 / roundNum - 1 == 74
        require (74 * roundNum) - 74 <= totalSupply
        require idx + totalSupply + (-74 * roundNum) + 74 >= idx
        mem[0] = idx + totalSupply + (-74 * roundNum) + 74
        mem[32] = 9
        stor9[idx + stor0 + (-74 * stor4) + 74] = arg1
        idx = idx + 1
        continue 
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require stor6
    require msg.value > 0
    require not msg.value % 185 * 10^11 * 3600
    stor7 = msg.value / 185 * 10^11 * 3600
    if roundNum:
        require roundNum
        require 74 * roundNum / roundNum == 74
    require totalSupply <= 74 * roundNum
    require stor7 <= (74 * roundNum) - totalSupply
    require stor7 + totalSupply <= 666
    require stor7 >= 1
    require totalSupply + stor7 >= totalSupply
    totalSupply += stor7
    require balanceOf[address(msg.sender)] + stor7 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += stor7
    idx = 0
    while idx < stor7:
        if roundNum - 1:
            require roundNum - 1
            require (74 * roundNum) - 74 / roundNum - 1 == 74
        require (74 * roundNum) - 74 <= totalSupply
        require idx + totalSupply + (-74 * roundNum) + 74 >= idx
        mem[0] = idx + totalSupply + (-74 * roundNum) + 74
        mem[32] = 9
        stor9[idx + stor0 + (-74 * stor4) + 74] = msg.sender
        idx = idx + 1
        continue 
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function endRound() {
    require msg.sender == owner
    require roundDeadline < block.timestamp
    if roundNum:
        require roundNum
        require 74 * roundNum / roundNum == 74
    require totalSupply <= 74 * roundNum
    if (74 * roundNum) - totalSupply == 74:
        require totalSupply + 74 >= totalSupply
        totalSupply += 74
        require balanceOf[stor3] + 74 >= balanceOf[stor3]
        balanceOf[stor3] += 74
    else:
        if roundNum:
            require roundNum
            require 74 * roundNum / roundNum == 74
        require totalSupply <= 74 * roundNum
        if (74 * roundNum) - totalSupply:
            if roundNum:
                require roundNum
                require 74 * roundNum / roundNum == 74
            require totalSupply <= 74 * roundNum
            require (-74 * roundNum) + totalSupply + 74
            require 74 * roundNum >= totalSupply
            totalSupply = 74 * roundNum
            require balanceOf[stor9[(block.hash(block.number) % (-74 * stor4) + stor0 + 74) + 1]] + (74 * roundNum) - totalSupply >= balanceOf[stor9[(block.hash(block.number) % (-74 * stor4) + stor0 + 74) + 1]]
            balanceOf[stor9[(block.hash(block.number) % (-74 * stor4) + stor0 + 74) + 1]] = balanceOf[stor9[(block.hash(block.number) % (-74 * stor4) + stor0 + 74) + 1]] + (74 * roundNum) - totalSupply
            emit Raffled(roundNum, stor9[(block.hash(block.number) % (-74 * stor4) + stor0 + 74) + 1], (74 * roundNum) - totalSupply);
    stor6 = 0
    emit RoundEnd(roundNum);
    return 1
}



}
