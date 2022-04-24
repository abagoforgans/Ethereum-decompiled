contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor4 = 53 * 10^13
    stor5 = 59 * 10^13
    stor6 = 64 * 10^13
    stor7 = 68 * 10^13
    stor8 = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[175 len 4634]
}



// =====================  Runtime code  =====================


const name = 'Cryptopus Token'

const decimals = 18

const tokenCreationCapOverall = 0x65498ff69be1291d6c857cbe4a29000000000000000000000000000000000000

const symbol = 'CPP'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 currentPhase;

function currentPhase() {
    require currentPhase <= 3
    return currentPhase
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function changePhaseToICOweek3() {
    require owner == msg.sender
    currentPhase = 2
    return 1
}

function changePhaseToICOweek2() {
    require owner == msg.sender
    currentPhase = 1
    return 1
}

function changePhaseToNormalLife() {
    require owner == msg.sender
    currentPhase = 3
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeTokenPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
    return 1
}

function finalize() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
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
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require currentPhase <= 3
    if not currentPhase:
        if totalSupply <= 0x4808d95263fda6f84a475b215f2f928a40000000000000000000000000000000:
            require stor4 > 0
            require stor4
            require msg.value == (stor4 * msg.value / stor4) + (msg.value % stor4)
            require totalSupply + (10^18 * msg.value / stor4) >= totalSupply
            require totalSupply + (10^18 * msg.value / stor4) >= 10^18 * msg.value / stor4
            require 0x65498ff69be1291d6c857cbe4a29000000000000000000000000000000000000 > totalSupply + (10^18 * msg.value / stor4)
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stor4
            require totalSupply + (10^18 * msg.value / stor4) >= totalSupply
            require totalSupply + (10^18 * msg.value / stor4) >= 10^18 * msg.value / stor4
            totalSupply += 10^18 * msg.value / stor4
            emit CreateCPP((10^18 * msg.value / stor4), msg.sender);
    else:
        require currentPhase <= 3
        if currentPhase != 1:
            require currentPhase <= 3
            require currentPhase == 2
            if totalSupply > 0x4808d95263fda6f84a475b215f2f928a40000000000000000000000000000000:
                if totalSupply <= 0x65498ff69be1291d6c857cbe4a29000000000000000000000000000000000000:
                    require stor6 > 0
                    require stor6
                    require msg.value == (stor6 * msg.value / stor6) + (msg.value % stor6)
                    require totalSupply + (10^18 * msg.value / stor6) >= totalSupply
                    require totalSupply + (10^18 * msg.value / stor6) >= 10^18 * msg.value / stor6
                    require 0x65498ff69be1291d6c857cbe4a29000000000000000000000000000000000000 > totalSupply + (10^18 * msg.value / stor6)
                    balanceOf[address(msg.sender)] += 10^18 * msg.value / stor6
                    require totalSupply + (10^18 * msg.value / stor6) >= totalSupply
                    require totalSupply + (10^18 * msg.value / stor6) >= 10^18 * msg.value / stor6
                    totalSupply += 10^18 * msg.value / stor6
                    emit CreateCPP((10^18 * msg.value / stor6), msg.sender);
}



}
