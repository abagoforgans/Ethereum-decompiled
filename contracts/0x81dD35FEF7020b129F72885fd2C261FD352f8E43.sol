contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
address stor1;
mapping of uint256 stor2;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor14;

function _fallback() payable {
    uint8(stor1.field_160) = 1
    stor4 = 1
    stor5 = 5000000 * 10^18
    stor6 = 50000000 * 10^18
    stor7 = 50000000 * 10^18
    stor8 = 20000000 * 10^18
    stor9 = 375000000 * 10^18
    stor10 = 5000000 * 10^18
    stor14 = 5
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor2[address(stor1.field_0)] = 125000000 * 10^18
    require stor6 + stor5 >= stor5
    require stor8 + stor7 >= stor7
    require stor8 + stor7 >= 0
    stor0 = stor8 + stor7 + stor6 + stor5
    return code.data[424 len 6284]
}



// =====================  Runtime code  =====================


const name = 'Seeds'

const decimals = 18

const tokenCreationCap = 375000000 * 10^18

const symbol = 'SEEDS'

const maxFixedSupply = 500000000 * 10^18


uint256 totalSupply;
uint8 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor4;
uint256 freeTotal;
uint256 teamTotal;
uint256 advisorTotal;
uint256 lockedTeam;
uint256 stillAvailable;
uint256 toBeDistributedFree;
uint256 totalEthReceivedinWei;
uint256 totalDistributedinWei;
uint256 totalBountyinWei;
uint8 currentPhase;

function currentPhase() {
    require currentPhase <= 5
    return currentPhase
}

function teamTotal() {
    return teamTotal
}

function totalSupply() {
    return totalSupply
}

function stillAvailable() {
    return stillAvailable
}

function lockedTeam() {
    return lockedTeam
}

function toBeDistributedFree() {
    return toBeDistributedFree
}

function paused() {
    return bool(stor4)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalBountyinWei() {
    return totalBountyinWei
}

function freeTotal() {
    return freeTotal
}

function owner() {
    return owner
}

function totalDistributedinWei() {
    return totalDistributedinWei
}

function advisorTotal() {
    return advisorTotal
}

function locked() {
    return bool(uint8(stor1.field_160))
}

function totalEthReceivedinWei() {
    return totalEthReceivedinWei
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function unpause() {
    require owner == msg.sender
    require stor4
    stor4 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor4
    stor4 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function unlock() {
    require owner == msg.sender
    require uint8(stor1.field_160)
    uint8(stor1.field_160) = 0
    emit UnLock()
}

function lock() {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    uint8(stor1.field_160) = 1
    emit Lock()
}

function setENDPhase() {
    require owner == msg.sender
    currentPhase = 5
    emit StageChanged(Array(len=18, data='Current stage: END'));
}

function setICO1Phase() {
    require owner == msg.sender
    currentPhase = 1
    emit StageChanged(Array(len=19, data='Current stage: ICO1'));
}

function setICO2Phase() {
    require owner == msg.sender
    currentPhase = 2
    emit StageChanged(Array(len=19, data='Current stage: ICO2'));
}

function setICO4Phase() {
    require owner == msg.sender
    currentPhase = 4
    emit StageChanged(Array(len=19, data='Current stage: ICO4'));
}

function setICO3Phase() {
    require owner == msg.sender
    currentPhase = 3
    emit StageChanged(Array(len=19, data='Current stage: ICO3'));
}

function setPreICOPhase() {
    require owner == msg.sender
    currentPhase = 0
    emit StageChanged(Array(len=21, data='Current stage: PreICO'));
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initialSupply() {
    require teamTotal + freeTotal >= freeTotal
    require lockedTeam + advisorTotal >= advisorTotal
    require lockedTeam + advisorTotal >= 0
    return (lockedTeam + advisorTotal + teamTotal + freeTotal)
}

function withdrawInWei(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function generateTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit CreateSEEDS(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x53ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - balanceOf[arg1] + arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x53ddf252: arg3, arg1, arg2
    return 1
}

function bountySEEDSinWei(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    if not arg2:
        require toBeDistributedFree >= 0
        idx = 0
        while idx < arg1.length:
            require arg2 <= balanceOf[address(stor1.field_0)]
            balanceOf[address(stor1.field_0)] -= arg2
            require idx < arg1.length
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _58 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = arg2
            emit 0x53ddf252: arg2, owner, address(_58)
            idx = idx + 1
            continue 
        require totalBountyinWei >= totalBountyinWei
        require totalBountyinWei <= toBeDistributedFree
        toBeDistributedFree -= totalBountyinWei
    else:
        require arg1.length * arg2 / arg2 == arg1.length
        require toBeDistributedFree >= 0
        idx = 0
        while idx < arg1.length:
            require arg2 <= balanceOf[address(stor1.field_0)]
            balanceOf[address(stor1.field_0)] -= arg2
            require idx < arg1.length
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _53 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = arg2
            emit 0x53ddf252: arg2, owner, address(_53)
            idx = idx + 1
            continue 
        require (arg1.length * arg2) + totalBountyinWei >= totalBountyinWei
        totalBountyinWei += arg1.length * arg2
        require (arg1.length * arg2) + totalBountyinWei <= toBeDistributedFree
        toBeDistributedFree = toBeDistributedFree - (arg1.length * arg2) - totalBountyinWei
}

function airdropSEEDSinWei(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    if not arg2:
        require toBeDistributedFree >= 0
        idx = 0
        while idx < arg1.length:
            require arg2 <= balanceOf[address(stor1.field_0)]
            balanceOf[address(stor1.field_0)] -= arg2
            require idx < arg1.length
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _58 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = arg2
            emit 0x53ddf252: arg2, owner, address(_58)
            idx = idx + 1
            continue 
        require totalDistributedinWei >= totalDistributedinWei
        require totalDistributedinWei <= toBeDistributedFree
        toBeDistributedFree -= totalDistributedinWei
    else:
        require arg1.length * arg2 / arg2 == arg1.length
        require toBeDistributedFree >= 0
        require arg1.length * arg2 <= 100000 * 10^18
        idx = 0
        while idx < arg1.length:
            require arg2 <= balanceOf[address(stor1.field_0)]
            balanceOf[address(stor1.field_0)] -= arg2
            require idx < arg1.length
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 2
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _53 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = arg2
            emit 0x53ddf252: arg2, owner, address(_53)
            idx = idx + 1
            continue 
        require (arg1.length * arg2) + totalDistributedinWei >= totalDistributedinWei
        totalDistributedinWei += arg1.length * arg2
        require (arg1.length * arg2) + totalDistributedinWei <= toBeDistributedFree
        toBeDistributedFree = toBeDistributedFree - (arg1.length * arg2) - totalDistributedinWei
}

function _fallback() payable {
    require not stor4
    require currentPhase <= 5
    if not currentPhase:
        require (10^10 * 100 * 10^6 * msg.value / 25 * 10^12) + totalSupply >= totalSupply
        require (10^10 * 100 * 10^6 * msg.value / 25 * 10^12) + totalSupply <= 375000000 * 10^18
        require msg.value >= 0
        require msg.sender
        require (10^10 * 100 * 10^6 * msg.value / 25 * 10^12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^10 * 100 * 10^6 * msg.value / 25 * 10^12
        require (10^10 * 100 * 10^6 * msg.value / 25 * 10^12) + totalSupply >= totalSupply
        totalSupply += 10^10 * 100 * 10^6 * msg.value / 25 * 10^12
        require msg.value + totalEthReceivedinWei >= totalEthReceivedinWei
        totalEthReceivedinWei += msg.value
        emit CreateSEEDS((10^10 * 100 * 10^6 * msg.value / 25 * 10^12), msg.sender);
        require 10^10 * 100 * 10^6 * msg.value / 25 * 10^12 <= stillAvailable
        stillAvailable += -1 * 10^10 * 100 * 10^6 * msg.value / 25 * 10^12
    else:
        require currentPhase <= 5
        if currentPhase == 1:
            require (10^10 * 100 * 10^6 * msg.value / 35 * 10^12) + totalSupply >= totalSupply
            require (10^10 * 100 * 10^6 * msg.value / 35 * 10^12) + totalSupply <= 375000000 * 10^18
            require msg.value >= 0
            require msg.sender
            require (10^10 * 100 * 10^6 * msg.value / 35 * 10^12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^10 * 100 * 10^6 * msg.value / 35 * 10^12
            require (10^10 * 100 * 10^6 * msg.value / 35 * 10^12) + totalSupply >= totalSupply
            totalSupply += 10^10 * 100 * 10^6 * msg.value / 35 * 10^12
            require msg.value + totalEthReceivedinWei >= totalEthReceivedinWei
            totalEthReceivedinWei += msg.value
            emit CreateSEEDS((10^10 * 100 * 10^6 * msg.value / 35 * 10^12), msg.sender);
            require 10^10 * 100 * 10^6 * msg.value / 35 * 10^12 <= stillAvailable
            stillAvailable += -1 * 10^10 * 100 * 10^6 * msg.value / 35 * 10^12
        else:
            require currentPhase <= 5
            if currentPhase == 2:
                require (10^10 * 100 * 10^6 * msg.value / 42 * 10^12) + totalSupply >= totalSupply
                require (10^10 * 100 * 10^6 * msg.value / 42 * 10^12) + totalSupply <= 375000000 * 10^18
                require msg.value >= 0
                require msg.sender
                require (10^10 * 100 * 10^6 * msg.value / 42 * 10^12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 10^10 * 100 * 10^6 * msg.value / 42 * 10^12
                require (10^10 * 100 * 10^6 * msg.value / 42 * 10^12) + totalSupply >= totalSupply
                totalSupply += 10^10 * 100 * 10^6 * msg.value / 42 * 10^12
                require msg.value + totalEthReceivedinWei >= totalEthReceivedinWei
                totalEthReceivedinWei += msg.value
                emit CreateSEEDS((10^10 * 100 * 10^6 * msg.value / 42 * 10^12), msg.sender);
                require 10^10 * 100 * 10^6 * msg.value / 42 * 10^12 <= stillAvailable
                stillAvailable += -1 * 10^10 * 100 * 10^6 * msg.value / 42 * 10^12
            else:
                require currentPhase <= 5
                if currentPhase == 3:
                    require (10^10 * 100 * 10^6 * msg.value / 475 * 10^11) + totalSupply >= totalSupply
                    require (10^10 * 100 * 10^6 * msg.value / 475 * 10^11) + totalSupply <= 375000000 * 10^18
                    require msg.value >= 0
                    require msg.sender
                    require (10^10 * 100 * 10^6 * msg.value / 475 * 10^11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^10 * 100 * 10^6 * msg.value / 475 * 10^11
                    require (10^10 * 100 * 10^6 * msg.value / 475 * 10^11) + totalSupply >= totalSupply
                    totalSupply += 10^10 * 100 * 10^6 * msg.value / 475 * 10^11
                    require msg.value + totalEthReceivedinWei >= totalEthReceivedinWei
                    totalEthReceivedinWei += msg.value
                    emit CreateSEEDS((10^10 * 100 * 10^6 * msg.value / 475 * 10^11), msg.sender);
                    require 10^10 * 100 * 10^6 * msg.value / 475 * 10^11 <= stillAvailable
                    stillAvailable += -1 * 10^10 * 100 * 10^6 * msg.value / 475 * 10^11
                else:
                    require currentPhase <= 5
                    if currentPhase != 4:
                        require currentPhase <= 5
                        require currentPhase != 5
                    else:
                        require (10^10 * 100 * 10^6 * msg.value / 5 * 10^13) + totalSupply >= totalSupply
                        require (10^10 * 100 * 10^6 * msg.value / 5 * 10^13) + totalSupply <= 375000000 * 10^18
                        require msg.value >= 0
                        require msg.sender
                        require (10^10 * 100 * 10^6 * msg.value / 5 * 10^13) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^10 * 100 * 10^6 * msg.value / 5 * 10^13
                        require (10^10 * 100 * 10^6 * msg.value / 5 * 10^13) + totalSupply >= totalSupply
                        totalSupply += 10^10 * 100 * 10^6 * msg.value / 5 * 10^13
                        require msg.value + totalEthReceivedinWei >= totalEthReceivedinWei
                        totalEthReceivedinWei += msg.value
                        emit CreateSEEDS((10^10 * 100 * 10^6 * msg.value / 5 * 10^13), msg.sender);
                        require 10^10 * 100 * 10^6 * msg.value / 5 * 10^13 <= stillAvailable
                        stillAvailable += -1 * 10^10 * 100 * 10^6 * msg.value / 5 * 10^13
}



}
