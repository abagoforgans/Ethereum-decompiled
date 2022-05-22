contract main {




// =====================  Runtime code  =====================


const name = 'SCALE'

const decimals = 18

const symbol = 'SCALE'


uint256 totalSupply;
array of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address poolAddress;
uint256 poolMintRate;
uint256 ownerMintRate;
uint256 poolMintAmount;
uint256 stakingMintAmount;
uint256 ownerMintAmount;
uint256 poolPercentage;
uint256 ownerPercentage;
uint256 stakingPercentage;
uint256 ownerTimeLastMinted;
uint256 poolTimeLastMinted;
uint256 stakingMintRate;
uint256 totalScaleStaked;
mapping of uint256 stor17;
uint256 stor18;
mapping of struct stakeBalances;
uint256 stor20;
uint256 lastInflationUpdate;

function stakingMintAmount() {
    return stakingMintAmount
}

function pool() {
    return poolAddress
}

function totalSupply() {
    return totalSupply
}

function stakeBalances(address arg1) {
    return stakeBalances[arg1].field_0, stakeBalances[arg1].field_256
}

function poolPercentage() {
    return poolPercentage
}

function ownerPercentage() {
    return ownerPercentage
}

function poolTimeLastMinted() {
    return poolTimeLastMinted
}

function stakingMintRate() {
    return stakingMintRate
}

function lastInflationUpdate() {
    return lastInflationUpdate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getStakedBalance() {
    return stakeBalances[msg.sender].field_0
}

function poolMintAmount() {
    return poolMintAmount
}

function stakingPercentage() {
    return stakingPercentage
}

function owner() {
    return owner
}

function poolMintRate() {
    return poolMintRate
}

function ownerMintRate() {
    return ownerMintRate
}

function ownerTimeLastMinted() {
    return ownerTimeLastMinted
}

function ownerMintAmount() {
    return ownerMintAmount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalScaleStaked() {
    return totalScaleStaked
}

function _fallback() {
  stop
}

function setPool(address arg1) {
    require msg.sender == owner
    poolAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function stakeScale(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require not stakeBalances[address(msg.sender)].field_0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    stakeBalances[address(msg.sender)].field_0 = arg1
    require arg1 + totalScaleStaked >= totalScaleStaked
    totalScaleStaked += arg1
    require stor18
    stakeBalances[address(msg.sender)].field_256 = block.timestamp / stor18
    stor17[block.timestamp / stor18] = totalScaleStaked
    emit Stake(arg1, msg.sender);
}

function stakeFor(address arg1, uint256 arg2) {
    require not stakeBalances[address(arg1)].field_0
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require arg2 <= balanceOf[address(arg1)]
    require not stakeBalances[address(arg1)].field_0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    stakeBalances[address(arg1)].field_0 = arg2
    require arg2 + totalScaleStaked >= totalScaleStaked
    totalScaleStaked += arg2
    require stor18
    stakeBalances[address(arg1)].field_256 = block.timestamp / stor18
    stor17[block.timestamp / stor18] = totalScaleStaked
    emit Stake(arg2, arg1);
}

function poolIssue() {
    require poolAddress
    require block.timestamp > poolTimeLastMinted
    require poolAddress
    require poolTimeLastMinted <= block.timestamp
    require block.timestamp - poolTimeLastMinted > 0
    if not block.timestamp - poolTimeLastMinted:
        require totalSupply >= totalSupply
        require balanceOf[stor4] >= balanceOf[stor4]
        emit Mint(0, poolAddress);
        emit Transfer(0, 0, poolAddress);
    else:
        require (block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate) / block.timestamp - poolTimeLastMinted == poolMintRate
        require (block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate) + totalSupply >= totalSupply
        totalSupply = (block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate) + totalSupply
        require (block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate) + balanceOf[stor4] >= balanceOf[stor4]
        balanceOf[stor4] = (block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate) + balanceOf[stor4]
        emit Mint(((block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate)), poolAddress);
        emit Transfer(((block.timestamp * poolMintRate) - (poolTimeLastMinted * poolMintRate)), 0, poolAddress);
    poolTimeLastMinted = block.timestamp
}

function ownerClaim() {
    require msg.sender == owner
    require block.timestamp > ownerTimeLastMinted
    require ownerTimeLastMinted <= block.timestamp
    require block.timestamp - ownerTimeLastMinted > 0
    if not block.timestamp - ownerTimeLastMinted:
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Mint(0, msg.sender);
        emit Transfer(0, 0, msg.sender);
    else:
        require (block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate) / block.timestamp - ownerTimeLastMinted == ownerMintRate
        require (block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate) + totalSupply >= totalSupply
        totalSupply = (block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate) + totalSupply
        require (block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate) + balanceOf[address(msg.sender)]
        emit Mint(((block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate)), msg.sender);
        emit Transfer(((block.timestamp * ownerMintRate) - (ownerTimeLastMinted * ownerMintRate)), 0, msg.sender);
    ownerTimeLastMinted = block.timestamp
}

function updateInflationRate() {
    require lastInflationUpdate <= block.timestamp
    require block.timestamp - lastInflationUpdate >= 8760 * 24 * 3600
    lastInflationUpdate = block.timestamp
    if 100 < stor20:
        require 300 <= stor20
        stor20 -= 300
    else:
        if stor20 > 10:
            require 5 <= stor20
            stor20 -= 5
    if not totalSupply:
        poolMintAmount = 0
    else:
        require stor20 * totalSupply / totalSupply == stor20
        if not stor20 * totalSupply / 1000:
            poolMintAmount = 0
        else:
            require poolPercentage * stor20 * totalSupply / 1000 / stor20 * totalSupply / 1000 == poolPercentage
            poolMintAmount = poolPercentage * stor20 * totalSupply / 1000 / 100
    if not totalSupply:
        ownerMintAmount = 0
    else:
        require stor20 * totalSupply / totalSupply == stor20
        if not stor20 * totalSupply / 1000:
            ownerMintAmount = 0
        else:
            require ownerPercentage * stor20 * totalSupply / 1000 / stor20 * totalSupply / 1000 == ownerPercentage
            ownerMintAmount = ownerPercentage * stor20 * totalSupply / 1000 / 100
    if not totalSupply:
        stakingMintAmount = 0
    else:
        require stor20 * totalSupply / totalSupply == stor20
        if not stor20 * totalSupply / 1000:
            stakingMintAmount = 0
        else:
            require stakingPercentage * stor20 * totalSupply / 1000 / stor20 * totalSupply / 1000 == stakingPercentage
            stakingMintAmount = stakingPercentage * stor20 * totalSupply / 1000 / 100
    if not poolMintAmount:
        poolMintRate = 0
    else:
        require 10 * 10^18 * poolMintAmount / poolMintAmount == 10 * 10^18
        poolMintRate = (10 * 10^18 * poolMintAmount / 8760 * 10^18 * 24 * 3600) + 5 / 10
    if not ownerMintAmount:
        ownerMintRate = 0
    else:
        require 10 * 10^18 * ownerMintAmount / ownerMintAmount == 10 * 10^18
        ownerMintRate = (10 * 10^18 * ownerMintAmount / 8760 * 10^18 * 24 * 3600) + 5 / 10
    if not stakingMintAmount:
        stakingMintRate = 0
    else:
        require 10 * 10^18 * stakingMintAmount / stakingMintAmount == 10 * 10^18
        stakingMintRate = (10 * 10^18 * stakingMintAmount / 8760 * 10^18 * 24 * 3600) + 5 / 10
}

function getStakingGains(uint256 arg1) {
    if not stakeBalances[msg.sender].field_0:
        return 0
    require stor18
    mem[0] = msg.sender
    mem[32] = 19
    require stakeBalances[msg.sender].field_256 <= arg1 / stor18
    idx = balanceOf[sha3(mem[0 len 64])]
    s = 0
    t = 0
    while idx < arg1 / stor18:
        if not stor17[idx]:
            mem[0] = msg.sender
            mem[32] = 19
            if not stakeBalances[msg.sender].field_0:
                if s:
                    if ((0 / s) + 5 / 10) + t >= t:
                        idx = idx + 1
                        s = s
                        t = ((0 / s) + 5 / 10) + t
                        continue 
            else:
                if 10 * 10^18 * stakeBalances[msg.sender].field_0 / stakeBalances[msg.sender].field_0 == 10 * 10^18:
                    if s:
                        if ((10 * 10^18 * stakeBalances[msg.sender].field_0 / s) + 5 / 10) + t >= t:
                            idx = idx + 1
                            s = s
                            t = ((10 * 10^18 * stakeBalances[msg.sender].field_0 / s) + 5 / 10) + t
                            continue 
            revert
        if not stakeBalances[msg.sender].field_0:
            require stor17[idx]
            require ((0 / stor17[idx]) + 5 / 10) + t >= t
            mem[0] = idx
            mem[32] = 17
            idx = idx + 1
            s = stor17[idx]
            t = ((0 / stor17[idx]) + 5 / 10) + t
            continue 
        require 10 * 10^18 * stakeBalances[msg.sender].field_0 / stakeBalances[msg.sender].field_0 == 10 * 10^18
        require stor17[idx]
        require ((10 * 10^18 * stakeBalances[msg.sender].field_0 / stor17[idx]) + 5 / 10) + t >= t
        mem[0] = idx
        mem[32] = 17
        idx = idx + 1
        s = stor17[idx]
        t = ((10 * 10^18 * stakeBalances[msg.sender].field_0 / stor17[idx]) + 5 / 10) + t
        continue 
    if not t:
        if (arg1 / stor18) - stakeBalances[msg.sender].field_256:
            if not stakingMintRate:
                if (arg1 / stor18) - stakeBalances[msg.sender].field_256 < 365:
                    if not (arg1 / stor18) - stakeBalances[msg.sender].field_256:
                        return 0
                    if (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (arg1 / stor18) - stakeBalances[msg.sender].field_256 == stor18:
                        if not (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                            return 0
                        if not 0 / (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                            return 0
                else:
                    if not stor18:
                        return 0
                    if 365 * stor18 / stor18 == 365:
                        if not 365 * stor18:
                            return 0
                        if not 0 / 365 * stor18:
                            return 0
            else:
                if (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / stakingMintRate == (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10:
                    if (arg1 / stor18) - stakeBalances[msg.sender].field_256 < 365:
                        if not (arg1 / stor18) - stakeBalances[msg.sender].field_256:
                            return 0
                        if (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (arg1 / stor18) - stakeBalances[msg.sender].field_256 == stor18:
                            if not (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                                return 0
                            if (arg1 / stor18 * stor18 * (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) / (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) == (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18:
                                return ((arg1 / stor18 * stor18 * (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18))
                    else:
                        if not stor18:
                            return 0
                        if 365 * stor18 / stor18 == 365:
                            if not 365 * stor18:
                                return 0
                            if 365 * (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18 / 365 * stor18 == (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18:
                                return (365 * (0 / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18)
    else:
        if 10 * t / t == 10:
            if (arg1 / stor18) - stakeBalances[msg.sender].field_256:
                if not stakingMintRate:
                    if (arg1 / stor18) - stakeBalances[msg.sender].field_256 < 365:
                        if not (arg1 / stor18) - stakeBalances[msg.sender].field_256:
                            return 0
                        if (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (arg1 / stor18) - stakeBalances[msg.sender].field_256 == stor18:
                            if not (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                                return 0
                            if not 0 / (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                                return 0
                    else:
                        if not stor18:
                            return 0
                        if 365 * stor18 / stor18 == 365:
                            if not 365 * stor18:
                                return 0
                            if not 0 / 365 * stor18:
                                return 0
                else:
                    if (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / stakingMintRate == (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10:
                        if (arg1 / stor18) - stakeBalances[msg.sender].field_256 < 365:
                            if not (arg1 / stor18) - stakeBalances[msg.sender].field_256:
                                return 0
                            if (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (arg1 / stor18) - stakeBalances[msg.sender].field_256 == stor18:
                                if not (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                                    return 0
                                if (arg1 / stor18 * stor18 * (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) / (arg1 / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) == (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18:
                                    return ((arg1 / stor18 * stor18 * (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18))
                        else:
                            if not stor18:
                                return 0
                            if 365 * stor18 / stor18 == 365:
                                if not 365 * stor18:
                                    return 0
                                if 365 * (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18 / 365 * stor18 == (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18:
                                    return (365 * (10 * t / (arg1 / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18)
    revert
}

function unstake() {
    require 0 < stakeBalances[msg.sender].field_0
    require stor18
    require stakeBalances[msg.sender].field_256 <= block.timestamp / stor18
    require (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 >= 7
    require stor18
    mem[0] = msg.sender
    mem[32] = 19
    require stakeBalances[msg.sender].field_256 <= block.timestamp / stor18
    idx = balanceOf[sha3(mem[0 len 64])]
    s = 0
    t = 0
    while idx < block.timestamp / stor18:
        if not stor17[idx]:
            mem[0] = msg.sender
            mem[32] = 19
            if not stakeBalances[msg.sender].field_0:
                if s:
                    if ((0 / s) + 5 / 10) + t >= t:
                        idx = idx + 1
                        s = s
                        t = ((0 / s) + 5 / 10) + t
                        continue 
            else:
                if 10 * 10^18 * stakeBalances[msg.sender].field_0 / stakeBalances[msg.sender].field_0 == 10 * 10^18:
                    if s:
                        if ((10 * 10^18 * stakeBalances[msg.sender].field_0 / s) + 5 / 10) + t >= t:
                            idx = idx + 1
                            s = s
                            t = ((10 * 10^18 * stakeBalances[msg.sender].field_0 / s) + 5 / 10) + t
                            continue 
            revert
        if not stakeBalances[msg.sender].field_0:
            require stor17[idx]
            require ((0 / stor17[idx]) + 5 / 10) + t >= t
            mem[0] = idx
            mem[32] = 17
            idx = idx + 1
            s = stor17[idx]
            t = ((0 / stor17[idx]) + 5 / 10) + t
            continue 
        require 10 * 10^18 * stakeBalances[msg.sender].field_0 / stakeBalances[msg.sender].field_0 == 10 * 10^18
        require stor17[idx]
        require ((10 * 10^18 * stakeBalances[msg.sender].field_0 / stor17[idx]) + 5 / 10) + t >= t
        mem[0] = idx
        mem[32] = 17
        idx = idx + 1
        s = stor17[idx]
        t = ((10 * 10^18 * stakeBalances[msg.sender].field_0 / stor17[idx]) + 5 / 10) + t
        continue 
    if not t:
        require (block.timestamp / stor18) - stakeBalances[msg.sender].field_256
        if not stakingMintRate:
            if (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 < 365:
                if (block.timestamp / stor18) - stakeBalances[msg.sender].field_256:
                    require (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 == stor18
                    if (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                        require not 0 / (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18)
            else:
                if stor18:
                    require 365 * stor18 / stor18 == 365
                    if 365 * stor18:
                        require not 0 / 365 * stor18
            require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
            require stakeBalances[msg.sender].field_0 <= totalScaleStaked
            totalScaleStaked -= stakeBalances[msg.sender].field_0
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Mint(0, msg.sender);
            emit Transfer(0, 0, msg.sender);
            emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
        else:
            require (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / stakingMintRate == (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10
            if (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 < 365:
                if not (block.timestamp / stor18) - stakeBalances[msg.sender].field_256:
                    require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                    require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                    totalScaleStaked -= stakeBalances[msg.sender].field_0
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Mint(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                else:
                    require (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 == stor18
                    if not (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require totalSupply >= totalSupply
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Mint(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                    else:
                        require (block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) / (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) == (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require (block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + totalSupply >= totalSupply
                        totalSupply = (block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + totalSupply
                        require (block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = (block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + balanceOf[address(msg.sender)]
                        emit Mint(((block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18)), msg.sender);
                        emit Transfer(((block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18)), 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, (block.timestamp / stor18 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18), msg.sender);
            else:
                if not stor18:
                    require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                    require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                    totalScaleStaked -= stakeBalances[msg.sender].field_0
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Mint(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                else:
                    require 365 * stor18 / stor18 == 365
                    if not 365 * stor18:
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require totalSupply >= totalSupply
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Mint(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                    else:
                        require 365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18 / 365 * stor18 == (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require (365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18) + totalSupply >= totalSupply
                        totalSupply += 365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18
                        require (365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18
                        emit Mint((365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18), msg.sender);
                        emit Transfer((365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18), 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, 365 * (0 / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18, msg.sender);
    else:
        require 10 * t / t == 10
        require (block.timestamp / stor18) - stakeBalances[msg.sender].field_256
        if not stakingMintRate:
            if (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 < 365:
                if (block.timestamp / stor18) - stakeBalances[msg.sender].field_256:
                    require (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 == stor18
                    if (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                        require not 0 / (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18)
            else:
                if stor18:
                    require 365 * stor18 / stor18 == 365
                    if 365 * stor18:
                        require not 0 / 365 * stor18
            require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
            require stakeBalances[msg.sender].field_0 <= totalScaleStaked
            totalScaleStaked -= stakeBalances[msg.sender].field_0
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Mint(0, msg.sender);
            emit Transfer(0, 0, msg.sender);
            emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
        else:
            require (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / stakingMintRate == (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10
            if (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 < 365:
                if not (block.timestamp / stor18) - stakeBalances[msg.sender].field_256:
                    require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                    require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                    totalScaleStaked -= stakeBalances[msg.sender].field_0
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Mint(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                else:
                    require (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256 == stor18
                    if not (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18):
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require totalSupply >= totalSupply
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Mint(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                    else:
                        require (block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) / (block.timestamp / stor18 * stor18) - (stakeBalances[msg.sender].field_256 * stor18) == (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require (block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + totalSupply >= totalSupply
                        totalSupply = (block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + totalSupply
                        require (block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = (block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) + balanceOf[address(msg.sender)]
                        emit Mint(((block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18)), msg.sender);
                        emit Transfer(((block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18)), 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, (block.timestamp / stor18 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18) - (stakeBalances[msg.sender].field_256 * stor18 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18), msg.sender);
            else:
                if not stor18:
                    require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                    require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                    totalScaleStaked -= stakeBalances[msg.sender].field_0
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Mint(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                else:
                    require 365 * stor18 / stor18 == 365
                    if not 365 * stor18:
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require totalSupply >= totalSupply
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Mint(0, msg.sender);
                        emit Transfer(0, 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, 0, msg.sender);
                    else:
                        require 365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18 / 365 * stor18 == (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18
                        require stakeBalances[msg.sender].field_0 + balanceOf[msg.sender] >= balanceOf[msg.sender]
                        balanceOf[msg.sender] += stakeBalances[msg.sender].field_0
                        require stakeBalances[msg.sender].field_0 <= totalScaleStaked
                        totalScaleStaked -= stakeBalances[msg.sender].field_0
                        require (365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18) + totalSupply >= totalSupply
                        totalSupply += 365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18
                        require (365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18
                        emit Mint((365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18), msg.sender);
                        emit Transfer((365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18), 0, msg.sender);
                        emit Unstake(stakeBalances[msg.sender].field_0, 365 * (10 * t / (block.timestamp / stor18) - stakeBalances[msg.sender].field_256) + 5 / 10 * stakingMintRate / 10^18 * stor18, msg.sender);
    stakeBalances[msg.sender].field_0 = 0
    stakeBalances[msg.sender].field_256 = 0
    require stor18
    stor17[block.timestamp / stor18] = totalScaleStaked
    return 1
}



}
