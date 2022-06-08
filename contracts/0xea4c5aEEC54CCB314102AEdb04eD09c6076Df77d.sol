contract main {




// =====================  Runtime code  =====================


#
#  - buyFor(address arg1, address arg2)
#
const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stor5;
uint256 stor6;
uint256 stakingRequirement;
uint256 maxEarlyStake;
uint256 whaleBalanceLimit;
address apexAddress;
uint256 startTime;
uint256 chainStartTime;
uint256 chainStartBlockNumber;
uint256 stakeStartTime;
uint256 stakeMinAge;
uint256 stakeMaxAge;
uint256 maxMintProofOfStake;
uint256 sub_72032061;
array of struct stor19;
mapping of uint128 balanceOf;
mapping of uint256 stor21;
mapping of uint256 stor23;
uint256 totalSupply;
uint256 stor25;
uint256 depositCount_;
mapping of uint8 stor27;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function stakingRequirement() {
    return stakingRequirement
}

function maxEarlyStake() {
    return maxEarlyStake
}

function chainStartTime() {
    return chainStartTime
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(balanceOf[address(arg1)])
}

function sub_72032061(?) {
    return sub_72032061
}

function stakeStartTime() {
    return stakeStartTime
}

function startTime() {
    return startTime
}

function whaleBalanceLimit() {
    return whaleBalanceLimit
}

function myTokens() {
    return uint256(balanceOf[address(msg.sender)])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function stakeMinAge() {
    return stakeMinAge
}

function chainStartBlockNumber() {
    return chainStartBlockNumber
}

function depositCount_() {
    return depositCount_
}

function stakeMaxAge() {
    return stakeMaxAge
}

function maxMintProofOfStake() {
    return maxMintProofOfStake
}

function apex() {
    return apexAddress
}

function isPremine() {
    return depositCount_ <= 2
}

function annualInterest() {
    return (7300 * maxMintProofOfStake / 100)
}

function exitFee() {
    if startTime:
        if block.timestamp < startTime:
            return 0
    return 15
}

function isStarted() {
    if not startTime:
        return not not startTime
    return (block.timestamp > startTime)
}

function getBlockNumber() {
    require chainStartBlockNumber <= block.number
    return (block.number - chainStartBlockNumber)
}

function dividendsOf(address arg1) {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (stor25 * uint256(balanceOf[address(arg1)])) - stor23[address(arg1)]) >> 64)
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == apexAddress
    if startTime:
        require block.timestamp <= startTime
    require block.timestamp < arg1
    startTime = arg1
}

function myDividends(bool arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        return ((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)])
    return (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64)
}

function calculateUntaxedEthereumReceived(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= totalSupply
    require stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1)
    return ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
}

function withdraw() {
    require (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] > 0
    stor23[address(msg.sender)] += Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)])
    stor21[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]), msg.sender);
}

function coinAge() {
    if stor19[address(msg.sender)].field_0 > 0:
        idx = 0
        while idx < stor19[address(msg.sender)].field_0:
            require idx < stor19[address(msg.sender)].field_0
            require stor19[address(msg.sender)][idx].field_128 + stakeMinAge >= stor19[address(msg.sender)][idx].field_128
            if block.timestamp >= stor19[address(msg.sender)][idx].field_128 + stakeMinAge:
                require idx < stor19[address(msg.sender)].field_0
                require stor19[address(msg.sender)][idx].field_128 <= block.timestamp
                require idx < stor19[address(msg.sender)].field_0
                if block.timestamp - stor19[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                    require stor19[address(msg.sender)][idx].field_0 * block.timestamp - stor19[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                else:
                    require stor19[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
            mem[0] = msg.sender
            mem[32] = 19
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function getProofOfStakeReward(address arg1) {
    require calldata.size - 4 >= 32
    require block.timestamp >= stakeStartTime
    require stakeStartTime > 0
    if stor19[address(arg1)].field_0 > 0:
        idx = 0
        while idx < stor19[address(arg1)].field_0:
            require idx < stor19[address(arg1)].field_0
            require stor19[address(arg1)][idx].field_128 + stakeMinAge >= stor19[address(arg1)][idx].field_128
            if block.timestamp >= stor19[address(arg1)][idx].field_128 + stakeMinAge:
                require idx < stor19[address(arg1)].field_0
                require stor19[address(arg1)][idx].field_128 <= block.timestamp
                require idx < stor19[address(arg1)].field_0
                if block.timestamp - stor19[address(arg1)][idx].field_128 <= stakeMaxAge:
                    require stor19[address(arg1)][idx].field_0 * block.timestamp - stor19[address(arg1)][idx].field_128 / 24 * 3600 >= 0
                else:
                    require stor19[address(arg1)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
            mem[0] = arg1
            mem[32] = 19
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function mint() {
    if uint256(balanceOf[address(msg.sender)]) > sub_72032061:
        if stor19[address(msg.sender)].field_0 > 0:
            require block.timestamp >= stakeStartTime
            require stakeStartTime > 0
            if stor19[address(msg.sender)].field_0 > 0:
                idx = 0
                while idx < stor19[address(msg.sender)].field_0:
                    require idx < stor19[address(msg.sender)].field_0
                    require stor19[address(msg.sender)][idx].field_128 + stakeMinAge >= stor19[address(msg.sender)][idx].field_128
                    if block.timestamp >= stor19[address(msg.sender)][idx].field_128 + stakeMinAge:
                        require idx < stor19[address(msg.sender)].field_0
                        require stor19[address(msg.sender)][idx].field_128 <= block.timestamp
                        require idx < stor19[address(msg.sender)].field_0
                        if block.timestamp - stor19[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                            require stor19[address(msg.sender)][idx].field_0 * block.timestamp - stor19[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                        else:
                            require stor19[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                    mem[0] = msg.sender
                    mem[32] = 19
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function calculateTokensReceived(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        if 0 <= arg1:
            s = (10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * arg1) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * arg1) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * arg1) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            if 10^18 * stor5 <= t:
                if stor6:
                    return ((t - (10^18 * stor5) / stor6) - totalSupply)
    else:
        if arg1:
            if 12 * arg1 / arg1 == 12:
                if 12 * arg1 / 100 <= arg1:
                    s = (10^18 * stor5)^2 + (10^18 * arg1 * 2 * 10^18 * stor6) + (-1 * 10^18 * 12 * arg1 / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
                    t = (10^18 * stor5)^2 + (10^18 * arg1 * 2 * 10^18 * stor6) - (10^18 * 12 * arg1 / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
                    while s < t:
                        require s
                        s = ((10^18 * stor5)^2 + (10^18 * arg1 * 2 * 10^18 * stor6) - (10^18 * 12 * arg1 / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                        t = s
                        continue 
                    if 10^18 * stor5 <= t:
                        if stor6:
                            return ((t - (10^18 * stor5) / stor6) - totalSupply)
    revert
}

function buyPrice() {
    if not totalSupply:
        return (stor5 + stor6)
    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
    if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
        if (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
            return ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18)
    else:
        if (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
            if 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12:
                if ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    return (((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100))
    revert
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require uint256(balanceOf[address(msg.sender)]) > 0
    if msg.sender == arg1:
        if uint256(balanceOf[address(msg.sender)]) > sub_72032061:
            if stor19[address(msg.sender)].field_0 > 0:
                require block.timestamp >= stakeStartTime
                require stakeStartTime > 0
                if stor19[address(msg.sender)].field_0 > 0:
                    idx = 0
                    while idx < stor19[address(msg.sender)].field_0:
                        require idx < stor19[address(msg.sender)].field_0
                        require stor19[address(msg.sender)][idx].field_128 + stakeMinAge >= stor19[address(msg.sender)][idx].field_128
                        if block.timestamp >= stor19[address(msg.sender)][idx].field_128 + stakeMinAge:
                            require idx < stor19[address(msg.sender)].field_0
                            require stor19[address(msg.sender)][idx].field_128 <= block.timestamp
                            require idx < stor19[address(msg.sender)].field_0
                            if block.timestamp - stor19[address(msg.sender)][idx].field_128 <= stakeMaxAge:
                                require stor19[address(msg.sender)][idx].field_0 * block.timestamp - stor19[address(msg.sender)][idx].field_128 / 24 * 3600 >= 0
                            else:
                                require stor19[address(msg.sender)][idx].field_0 * stakeMaxAge / 24 * 3600 >= 0
                        mem[0] = msg.sender
                        mem[32] = 19
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    require arg2 <= uint256(balanceOf[address(msg.sender)])
    if (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] > 0
        stor23[address(msg.sender)] += Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)])
        stor21[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]), msg.sender);
    require arg2 <= uint256(balanceOf[address(msg.sender)])
    uint256(balanceOf[address(msg.sender)]) -= arg2
    require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
    uint256(balanceOf[address(arg1)]) += arg2
    stor23[address(msg.sender)] += -1 * stor25 * arg2
    stor23[address(arg1)] += stor25 * arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor19[address(msg.sender)].field_0 > 0:
        stor19[address(msg.sender)].field_0 = 0
        idx = 0
        while stor19[address(msg.sender)].field_0 > idx:
            stor19[address(msg.sender)][idx].field_0 = 0
            stor19[address(msg.sender)][idx].field_128 = 0
            idx = idx + 1
            continue 
    stor19[address(msg.sender)].field_0++
    stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
    stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
    stor19[address(arg1)].field_0++
    stor19[address(arg1)][stor19[address(arg1)].field_0].field_0 = uint128(arg2)
    stor19[address(arg1)][stor19[address(arg1)].field_0].field_128 = uint64(block.timestamp)
    return 1
}

function sellPrice() {
    if not totalSupply:
        return (stor5 - stor6)
    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
    if not startTime:
        if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
            if 0 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                return ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18)
        else:
            if (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                if 15 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 15:
                    if 15 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        return (((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) - (15 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100))
    else:
        if block.timestamp < startTime:
            if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                if 0 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    return ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18)
            else:
                if (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    if not 0 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        if 0 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                            return ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18)
        else:
            if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                if 0 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    return ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18)
            else:
                if (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    if 15 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 15:
                        if 15 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                            return (((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) - (15 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100))
    revert
}

function calculateEthereumReceived(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= totalSupply
    require stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1)
    if not startTime:
        if not (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
            if 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                return ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
        else:
            if (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                if 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 15:
                    if 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                        return (((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100))
    else:
        if block.timestamp < startTime:
            if not (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                if 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                    return ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
            else:
                if (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                    if not 0 / (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                        if 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                            return ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
        else:
            if not (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                if 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                    return ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
            else:
                if (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                    if 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 15:
                        if 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                            return (((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100))
    revert
}

function _fallback() payable {
    if eth.balance(this.address) - msg.value < whaleBalanceLimit:
        require msg.value <= maxEarlyStake
    if not depositCount_:
        require stor27[address(msg.sender)]
        require msg.value == 10^15
    else:
        if depositCount_ < 1:
            require stor27[address(msg.sender)]
            require msg.value == 2 * 10^15
        else:
            if depositCount_ == 2:
                require stor27[address(msg.sender)]
                require msg.value == 10^17
    require block.gasprice < 200999999999
    if depositCount_ > 2:
        require startTime
        require block.timestamp > startTime
    if not msg.value:
        require 0 <= msg.value
        s = (10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * msg.value) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
        t = (10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * msg.value) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
        while s < t:
            require s
            s = ((10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * msg.value) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
            t = s
            continue 
        require 10^18 * stor5 <= t
        require stor6
        require (t - (10^18 * stor5) / stor6) - totalSupply > 0
        require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
        require t - (10^18 * stor5) / stor6 > totalSupply
        if totalSupply <= 0:
            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25)
        else:
            require t - (10^18 * stor5) / stor6 >= totalSupply
            totalSupply = t - (10^18 * stor5) / stor6
            require totalSupply
            stor25 += 0 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        if not 12 * msg.value / 100:
            require 0 <= 12 * msg.value / 100
            require 12 * msg.value / 100 <= msg.value
            s = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) + (-1 * 10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            require 10^18 * stor5 <= t
            require stor6
            require (t - (10^18 * stor5) / stor6) - totalSupply > 0
            require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
            require t - (10^18 * stor5) / stor6 > totalSupply
            require 12 * msg.value / 100 >= 12 * msg.value / 100
        else:
            require 12 * msg.value / 100
            require 10 * 12 * msg.value / 100 / 12 * msg.value / 100 == 10
            require 10 * 12 * msg.value / 100 / 100 <= 12 * msg.value / 100
            require 12 * msg.value / 100 <= msg.value
            s = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) + (-1 * 10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            require 10^18 * stor5 <= t
            require stor6
            require (t - (10^18 * stor5) / stor6) - totalSupply > 0
            require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
            require t - (10^18 * stor5) / stor6 > totalSupply
            require 12 * msg.value / 100 >= (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100)
        if totalSupply <= 0:
            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (12 * msg.value / 100 << 64)
        else:
            require t - (10^18 * stor5) / stor6 >= totalSupply
            totalSupply = t - (10^18 * stor5) / stor6
            require totalSupply
            stor25 += 12 * msg.value / 100 << 64 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 12 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 12 * msg.value / 100 << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase(msg.value, (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, stor5 + stor6, msg.sender, 0);
    else:
        require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
        if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            emit onTokenPurchase(msg.value, (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender, 0);
        else:
            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
            require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            emit onTokenPurchase(msg.value, (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender, 0);
    depositCount_++
}

function reinvest() {
    require (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] > 0
    stor23[address(msg.sender)] += Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)])
    stor21[address(msg.sender)] = 0
    if not (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]:
        require 0 <= (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]
        s = (10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
        t = (10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
        while s < t:
            require s
            s = ((10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
            t = s
            continue 
        require 10^18 * stor5 <= t
        require stor6
        require (t - (10^18 * stor5) / stor6) - totalSupply > 0
        require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
        require t - (10^18 * stor5) / stor6 > totalSupply
        if totalSupply <= 0:
            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25)
        else:
            require t - (10^18 * stor5) / stor6 >= totalSupply
            totalSupply = t - (10^18 * stor5) / stor6
            require totalSupply
            stor25 += 0 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
    else:
        require (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]
        require (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] == 12
        if not (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100:
            require 0 <= (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100
            require (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]
            s = (10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) + (-1 * 10^18 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) - (10^18 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) - (10^18 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            require 10^18 * stor5 <= t
            require stor6
            require (t - (10^18 * stor5) / stor6) - totalSupply > 0
            require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
            require t - (10^18 * stor5) / stor6 > totalSupply
            require (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 >= (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100
        else:
            require (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100
            require 10 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 / (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 == 10
            require 10 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 / 100 <= (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100
            require (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]
            s = (10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) + (-1 * 10^18 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) - (10^18 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64 * 2 * 10^18 * stor6) + (10^18 * stor21[address(msg.sender)] * 2 * 10^18 * stor6) - (10^18 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            require 10^18 * stor5 <= t
            require stor6
            require (t - (10^18 * stor5) / stor6) - totalSupply > 0
            require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
            require t - (10^18 * stor5) / stor6 > totalSupply
            require (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 >= ((12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100) - (10 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 / 100)
        if totalSupply <= 0:
            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - ((12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 << 64)
        else:
            require t - (10^18 * stor5) / stor6 >= totalSupply
            totalSupply = t - (10^18 * stor5) / stor6
            require totalSupply
            stor25 += (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 << 64 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (12 * Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + (12 * stor21[address(msg.sender)]) / 100 << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)], (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, stor5 + stor6, msg.sender, 0);
    else:
        require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
        if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            emit onTokenPurchase((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)], (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender, 0);
        else:
            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
            require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            emit onTokenPurchase((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)], (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender, 0);
    depositCount_++
    emit onReinvestment((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)], (t - (10^18 * stor5) / stor6) - totalSupply, msg.sender);
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require uint256(balanceOf[address(msg.sender)]) > 0
    require arg1 <= uint256(balanceOf[address(msg.sender)])
    require stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1)
    if not startTime:
        if not (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
            require 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) -= arg1
            stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * arg1) - ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor25 + (0 / totalSupply) >= stor25
                stor25 += 0 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, stor5 + stor6, msg.sender);
            else:
                require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                else:
                    require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                    require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
        else:
            require (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 15
            require 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) -= arg1
            stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * arg1) - (((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor25 + (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor25
                stor25 += 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1, ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, stor5 + stor6, msg.sender);
            else:
                require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    emit onTokenSell(arg1, ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                else:
                    require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                    require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    emit onTokenSell(arg1, ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
    else:
        if block.timestamp < startTime:
            if (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                require (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require not 0 / (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) -= arg1
            stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * arg1) - ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor25 + (0 / totalSupply) >= stor25
                stor25 += 0 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, stor5 + stor6, msg.sender);
            else:
                require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                    require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                else:
                    require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                    require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                    emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
        else:
            if not (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                require 0 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) -= arg1
                stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * arg1) - ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor25 + (0 / totalSupply) >= stor25
                    stor25 += 0 / totalSupply
                if not totalSupply:
                    emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, stor5 + stor6, msg.sender);
                else:
                    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                    if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                    else:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                        require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(arg1, (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
            else:
                require (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 15
                require 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
                require arg1 <= totalSupply
                totalSupply -= arg1
                require arg1 <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) -= arg1
                stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * arg1) - (((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor25 + (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor25
                    stor25 += 15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
                if not totalSupply:
                    emit onTokenSell(arg1, ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, stor5 + stor6, msg.sender);
                else:
                    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                    if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(arg1, ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                    else:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                        require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(arg1, ((stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * arg1) + (stor6 * totalSupply + 10^18 / 10^18 * arg1) - (stor6 * arg1) - (stor6 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) - msg.value < whaleBalanceLimit:
        require msg.value <= maxEarlyStake
    if not depositCount_:
        require stor27[address(msg.sender)]
        require msg.value == 10^15
    else:
        if depositCount_ < 1:
            require stor27[address(msg.sender)]
            require msg.value == 2 * 10^15
        else:
            if depositCount_ == 2:
                require stor27[address(msg.sender)]
                require msg.value == 10^17
    require block.gasprice < 200999999999
    if depositCount_ > 2:
        require startTime
        require block.timestamp > startTime
    if not msg.value:
        require 0 <= msg.value
        s = (10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * msg.value) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
        t = (10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * msg.value) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
        while s < t:
            require s
            s = ((10^18 * stor5)^2 + (10^18 * 2 * 10^18 * stor6 * msg.value) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
            t = s
            continue 
        require 10^18 * stor5 <= t
        require stor6
        require (t - (10^18 * stor5) / stor6) - totalSupply > 0
        require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
        require t - (10^18 * stor5) / stor6 > totalSupply
        if arg1:
            if arg1 != msg.sender:
                if uint256(balanceOf[address(arg1)]) >= stakingRequirement:
                    require stor21[address(arg1)] >= stor21[address(arg1)]
        if totalSupply <= 0:
            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25)
        else:
            require t - (10^18 * stor5) / stor6 >= totalSupply
            totalSupply = t - (10^18 * stor5) / stor6
            require totalSupply
            stor25 += 0 / totalSupply
            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
            stor19[address(msg.sender)].field_0 = 0
            idx = 0
            while stor19[address(msg.sender)].field_0 > idx:
                stor19[address(msg.sender)][idx].field_0 = 0
                stor19[address(msg.sender)][idx].field_128 = 0
                idx = idx + 1
                continue 
            stor19[address(msg.sender)].field_0++
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        if not 12 * msg.value / 100:
            require 0 <= 12 * msg.value / 100
            require 12 * msg.value / 100 <= msg.value
            s = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) + (-1 * 10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            require 10^18 * stor5 <= t
            require stor6
            require (t - (10^18 * stor5) / stor6) - totalSupply > 0
            require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
            require t - (10^18 * stor5) / stor6 > totalSupply
            if not arg1:
                require 12 * msg.value / 100 >= 12 * msg.value / 100
            else:
                if arg1 == msg.sender:
                    require 12 * msg.value / 100 >= 12 * msg.value / 100
                else:
                    if uint256(balanceOf[address(arg1)]) < stakingRequirement:
                        require 12 * msg.value / 100 >= 12 * msg.value / 100
                    else:
                        require stor21[address(arg1)] >= stor21[address(arg1)]
            if totalSupply <= 0:
                totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
                require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                stor19[address(msg.sender)].field_0 = 0
                idx = 0
                while stor19[address(msg.sender)].field_0 > idx:
                    stor19[address(msg.sender)][idx].field_0 = 0
                    stor19[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor19[address(msg.sender)].field_0++
                stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (12 * msg.value / 100 << 64)
            else:
                require t - (10^18 * stor5) / stor6 >= totalSupply
                totalSupply = t - (10^18 * stor5) / stor6
                require totalSupply
                stor25 += 12 * msg.value / 100 << 64 / totalSupply
                require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                stor19[address(msg.sender)].field_0 = 0
                idx = 0
                while stor19[address(msg.sender)].field_0 > idx:
                    stor19[address(msg.sender)][idx].field_0 = 0
                    stor19[address(msg.sender)][idx].field_128 = 0
                    idx = idx + 1
                    continue 
                stor19[address(msg.sender)].field_0++
                stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 12 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 12 * msg.value / 100 << 64 / totalSupply)
        else:
            require 12 * msg.value / 100
            require 10 * 12 * msg.value / 100 / 12 * msg.value / 100 == 10
            require 10 * 12 * msg.value / 100 / 100 <= 12 * msg.value / 100
            require 12 * msg.value / 100 <= msg.value
            s = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) + (-1 * 10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) + 1 / 2
            t = (10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply)
            while s < t:
                require s
                s = ((10^18 * stor5)^2 + (10^18 * msg.value * 2 * 10^18 * stor6) - (10^18 * 12 * msg.value / 100 * 2 * 10^18 * stor6) + (stor6^2 * totalSupply^2) + (10^18 * 2 * stor6 * stor5 * totalSupply) / s) + s / 2
                t = s
                continue 
            require 10^18 * stor5 <= t
            require stor6
            require (t - (10^18 * stor5) / stor6) - totalSupply > 0
            require t - (10^18 * stor5) / stor6 >= (t - (10^18 * stor5) / stor6) - totalSupply
            require t - (10^18 * stor5) / stor6 > totalSupply
            if not arg1:
                require 12 * msg.value / 100 >= (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100)
                if totalSupply <= 0:
                    totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
                    require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                    stor19[address(msg.sender)].field_0 = 0
                    idx = 0
                    while stor19[address(msg.sender)].field_0 > idx:
                        stor19[address(msg.sender)][idx].field_0 = 0
                        stor19[address(msg.sender)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor19[address(msg.sender)].field_0++
                    stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                    stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                    stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (12 * msg.value / 100 << 64)
                else:
                    require t - (10^18 * stor5) / stor6 >= totalSupply
                    totalSupply = t - (10^18 * stor5) / stor6
                    require totalSupply
                    stor25 += 12 * msg.value / 100 << 64 / totalSupply
                    require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                    stor19[address(msg.sender)].field_0 = 0
                    idx = 0
                    while stor19[address(msg.sender)].field_0 > idx:
                        stor19[address(msg.sender)][idx].field_0 = 0
                        stor19[address(msg.sender)][idx].field_128 = 0
                        idx = idx + 1
                        continue 
                    stor19[address(msg.sender)].field_0++
                    stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                    stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                    stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 12 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 12 * msg.value / 100 << 64 / totalSupply)
            else:
                if arg1 == msg.sender:
                    require 12 * msg.value / 100 >= (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100)
                    if totalSupply <= 0:
                        totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
                        require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                        stor19[address(msg.sender)].field_0 = 0
                        idx = 0
                        while stor19[address(msg.sender)].field_0 > idx:
                            stor19[address(msg.sender)][idx].field_0 = 0
                            stor19[address(msg.sender)][idx].field_128 = 0
                            idx = idx + 1
                            continue 
                        stor19[address(msg.sender)].field_0++
                        stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                        stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                        stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (12 * msg.value / 100 << 64)
                    else:
                        require t - (10^18 * stor5) / stor6 >= totalSupply
                        totalSupply = t - (10^18 * stor5) / stor6
                        require totalSupply
                        stor25 += 12 * msg.value / 100 << 64 / totalSupply
                        require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                        stor19[address(msg.sender)].field_0 = 0
                        idx = 0
                        while stor19[address(msg.sender)].field_0 > idx:
                            stor19[address(msg.sender)][idx].field_0 = 0
                            stor19[address(msg.sender)][idx].field_128 = 0
                            idx = idx + 1
                            continue 
                        stor19[address(msg.sender)].field_0++
                        stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                        stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                        stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 12 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 12 * msg.value / 100 << 64 / totalSupply)
                else:
                    if uint256(balanceOf[address(arg1)]) < stakingRequirement:
                        require 12 * msg.value / 100 >= (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100)
                        if totalSupply <= 0:
                            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                            stor19[address(msg.sender)].field_0 = 0
                            idx = 0
                            while stor19[address(msg.sender)].field_0 > idx:
                                stor19[address(msg.sender)][idx].field_0 = 0
                                stor19[address(msg.sender)][idx].field_128 = 0
                                idx = idx + 1
                                continue 
                            stor19[address(msg.sender)].field_0++
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (12 * msg.value / 100 << 64)
                        else:
                            require t - (10^18 * stor5) / stor6 >= totalSupply
                            totalSupply = t - (10^18 * stor5) / stor6
                            require totalSupply
                            stor25 += 12 * msg.value / 100 << 64 / totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                            stor19[address(msg.sender)].field_0 = 0
                            idx = 0
                            while stor19[address(msg.sender)].field_0 > idx:
                                stor19[address(msg.sender)][idx].field_0 = 0
                                stor19[address(msg.sender)][idx].field_128 = 0
                                idx = idx + 1
                                continue 
                            stor19[address(msg.sender)].field_0++
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * 12 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 12 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require stor21[address(arg1)] + (10 * 12 * msg.value / 100 / 100) >= stor21[address(arg1)]
                        stor21[address(arg1)] += 10 * 12 * msg.value / 100 / 100
                        if totalSupply <= 0:
                            totalSupply = (t - (10^18 * stor5) / stor6) - totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                            stor19[address(msg.sender)].field_0 = 0
                            idx = 0
                            while stor19[address(msg.sender)].field_0 > idx:
                                stor19[address(msg.sender)][idx].field_0 = 0
                                stor19[address(msg.sender)][idx].field_128 = 0
                                idx = idx + 1
                                continue 
                            stor19[address(msg.sender)].field_0++
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - ((12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100) << 64)
                        else:
                            require t - (10^18 * stor5) / stor6 >= totalSupply
                            totalSupply = t - (10^18 * stor5) / stor6
                            require totalSupply
                            stor25 += (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100) << 64 / totalSupply
                            require uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply >= uint256(balanceOf[address(msg.sender)])
                            uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + (t - (10^18 * stor5) / stor6) - totalSupply
                            stor19[address(msg.sender)].field_0 = 0
                            idx = 0
                            while stor19[address(msg.sender)].field_0 > idx:
                                stor19[address(msg.sender)][idx].field_0 = 0
                                stor19[address(msg.sender)][idx].field_128 = 0
                                idx = idx + 1
                                continue 
                            stor19[address(msg.sender)].field_0++
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_0 = uint128(balanceOf[address(msg.sender)])
                            stor19[address(msg.sender)][stor19[address(msg.sender)].field_0].field_128 = uint64(block.timestamp)
                            stor23[address(msg.sender)] = stor23[address(msg.sender)] + (t - (10^18 * stor5) / stor6 * stor25) - (totalSupply * stor25) - (t - (10^18 * stor5) / stor6 * (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100) << 64 / totalSupply) + (totalSupply * (12 * msg.value / 100) - (10 * 12 * msg.value / 100 / 100) << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase(msg.value, (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, stor5 + stor6, msg.sender, arg1);
    else:
        require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
        if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            emit onTokenPurchase(msg.value, (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender, arg1);
        else:
            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
            require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
            emit onTokenPurchase(msg.value, (t - (10^18 * stor5) / stor6) - totalSupply, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender, arg1);
    depositCount_++
    return 0
}

function exit() {
    if uint256(balanceOf[address(msg.sender)]) > 0:
        require uint256(balanceOf[address(msg.sender)]) > 0
        require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
        require stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2 <= (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)]))
        if not startTime:
            if not (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18:
                require 0 <= (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                totalSupply -= uint256(balanceOf[address(msg.sender)])
                require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = 0
                stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * uint256(balanceOf[address(msg.sender)])) - ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor25 + (0 / totalSupply) >= stor25
                    stor25 += 0 / totalSupply
                if not totalSupply:
                    emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, stor5 + stor6, msg.sender);
                else:
                    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                    if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                    else:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                        require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
            else:
                require (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                require 15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 == 15
                require 15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100 <= (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                totalSupply -= uint256(balanceOf[address(msg.sender)])
                require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = 0
                stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * uint256(balanceOf[address(msg.sender)])) - (((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor25 + (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor25
                    stor25 += 15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
                if not totalSupply:
                    emit onTokenSell(uint256(balanceOf[address(msg.sender)]), ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, stor5 + stor6, msg.sender);
                else:
                    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                    if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                    else:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                        require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
        else:
            if block.timestamp < startTime:
                if (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18:
                    require (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                    require not 0 / (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                require 0 <= (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                totalSupply -= uint256(balanceOf[address(msg.sender)])
                require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                uint256(balanceOf[address(msg.sender)]) = 0
                stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * uint256(balanceOf[address(msg.sender)])) - ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor25 + (0 / totalSupply) >= stor25
                    stor25 += 0 / totalSupply
                if not totalSupply:
                    emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, stor5 + stor6, msg.sender);
                else:
                    require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                    if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                    else:
                        require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                        require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
            else:
                if not (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18:
                    require 0 <= (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                    require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                    totalSupply -= uint256(balanceOf[address(msg.sender)])
                    require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = 0
                    stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * uint256(balanceOf[address(msg.sender)])) - ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor25 + (0 / totalSupply) >= stor25
                        stor25 += 0 / totalSupply
                    if not totalSupply:
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, stor5 + stor6, msg.sender);
                    else:
                        require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                        if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                            emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                        else:
                            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                            require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                            require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                            emit onTokenSell(uint256(balanceOf[address(msg.sender)]), (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
                else:
                    require (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                    require 15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 == 15
                    require 15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100 <= (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18
                    require uint256(balanceOf[address(msg.sender)]) <= totalSupply
                    totalSupply -= uint256(balanceOf[address(msg.sender)])
                    require uint256(balanceOf[address(msg.sender)]) <= uint256(balanceOf[address(msg.sender)])
                    uint256(balanceOf[address(msg.sender)]) = 0
                    stor23[address(msg.sender)] = stor23[address(msg.sender)] - (stor25 * uint256(balanceOf[address(msg.sender)])) - (((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
                    if totalSupply > 0:
                        require totalSupply
                        require stor25 + (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor25
                        stor25 += 15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
                    if not totalSupply:
                        emit onTokenSell(uint256(balanceOf[address(msg.sender)]), ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, stor5 + stor6, msg.sender);
                    else:
                        require 3999999999999999998 * stor6 / 2 <= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6)
                        if not (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18:
                            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                            emit onTokenSell(uint256(balanceOf[address(msg.sender)]), ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18, msg.sender);
                        else:
                            require (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                            require 12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 == 12
                            require ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100) >= (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18
                            emit onTokenSell(uint256(balanceOf[address(msg.sender)]), ((stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18) - (15 * (stor5 * uint256(balanceOf[address(msg.sender)])) + (stor6 * totalSupply + 10^18 / 10^18 * uint256(balanceOf[address(msg.sender)])) - (stor6 * uint256(balanceOf[address(msg.sender)])) - (stor6 * (uint256(balanceOf[address(msg.sender)]) + 10^18)^2 + -uint256(balanceOf[address(msg.sender)]) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18) + (12 * (10^18 * stor5) + (10^18 * stor6 * totalSupply + 10^18 / 10^18) - (10^18 * stor6) - (3999999999999999998 * stor6 / 2) / 10^18 / 100), msg.sender);
    require (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] > 0
    stor23[address(msg.sender)] += Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)])
    stor21[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor25 * uint256(balanceOf[address(msg.sender)])) - stor23[address(msg.sender)]) >> 64) + stor21[address(msg.sender)]), msg.sender);
}



}
