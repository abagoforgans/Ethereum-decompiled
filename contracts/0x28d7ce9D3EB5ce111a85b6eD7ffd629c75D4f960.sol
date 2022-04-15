contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor3 = 5 * 10^15
    stor4 = 10^16
    stor5 = 0
    require not msg.value
    return code.data[91 len 4402]
}



// =====================  Runtime code  =====================


const name = 'Gold Mine Token'

const decimals = 18

const tokenCreationCap = 1200000 * 10^18

const owner = 0x3705fc0600d7173e3d451740b3f304747b447ece

const symbol = 'GMT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
uint256 stor4;
uint8 currentPhase;

function currentPhase() {
    require currentPhase <= 1
    return currentPhase
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function changePhaseToICO() {
    require 0x3705fc0600d7173e3d451740b3f304747b447ece == msg.sender
    currentPhase = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeTokenPrice(uint256 arg1, uint256 arg2) {
    require 0x3705fc0600d7173e3d451740b3f304747b447ece == msg.sender
    stor3 = arg1
    stor4 = arg2
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

function createBountyTokens() {
    require 0x3705fc0600d7173e3d451740b3f304747b447ece == msg.sender
    balanceOf[0x3705fc0600d7173e3d451740b3f304747b447ece] += 60000 * 10^18
    require totalSupply + 60000 * 10^18 >= totalSupply
    require totalSupply + 60000 * 10^18 >= 60000 * 10^18
    totalSupply += 60000 * 10^18
    emit CreateGMT(address rg1, uint256 rg2):
                   60000 * 10^18,
    emit 0x3705fc06: 60000 * 10^18
    return 0
}

function _fallback() payable {
    require msg.value > 0
    require currentPhase <= 1
    if not currentPhase:
        if totalSupply <= 460000 * 10^18:
            require stor3 > 0
            require stor3
            require msg.value == (stor3 * msg.value / stor3) + (msg.value % stor3)
            require totalSupply + (10^18 * msg.value / stor3) >= totalSupply
            require totalSupply + (10^18 * msg.value / stor3) >= 10^18 * msg.value / stor3
            require 1200000 * 10^18 > totalSupply + (10^18 * msg.value / stor3)
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stor3
            require totalSupply + (10^18 * msg.value / stor3) >= totalSupply
            require totalSupply + (10^18 * msg.value / stor3) >= 10^18 * msg.value / stor3
            totalSupply += 10^18 * msg.value / stor3
            emit CreateGMT((10^18 * msg.value / stor3), msg.sender);
            call 0x3705fc0600d7173e3d451740b3f304747b447ece with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require currentPhase <= 1
        if currentPhase:
            require currentPhase <= 1
            require currentPhase == 1
        if totalSupply > 460000 * 10^18:
            if totalSupply <= 1200000 * 10^18:
                require stor4 > 0
                require stor4
                require msg.value == (stor4 * msg.value / stor4) + (msg.value % stor4)
                require totalSupply + (10^18 * msg.value / stor4) >= totalSupply
                require totalSupply + (10^18 * msg.value / stor4) >= 10^18 * msg.value / stor4
                require 1200000 * 10^18 > totalSupply + (10^18 * msg.value / stor4)
                balanceOf[address(msg.sender)] += 10^18 * msg.value / stor4
                require totalSupply + (10^18 * msg.value / stor4) >= totalSupply
                require totalSupply + (10^18 * msg.value / stor4) >= 10^18 * msg.value / stor4
                totalSupply += 10^18 * msg.value / stor4
                emit CreateGMT((10^18 * msg.value / stor4), msg.sender);
                call 0x3705fc0600d7173e3d451740b3f304747b447ece with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}



}
