contract main {




// =====================  Runtime code  =====================


address tokenContractAddress;
address owner;
mapping of uint256 solutionForChallenge;
uint256 blockNumber;
uint256 sub_a137113b;
uint256 sub_83314c0b;
uint256 sub_964a96f6;
uint256 sub_34d04785;
uint256 sub_21d3e6ee;
uint256 sub_b640a95d;
uint256 sub_f7ba2c0d;
uint256 target;
uint256 challenge;
address sub_52316b7dAddress;
uint256 lastRewardAmount;
uint256 sub_1814ad1c;
uint256 sub_2fc8cd97;
uint256 sub_38546178;
uint256 stor18; offset 1
uint256 blockReward;
uint8 locked;

function blockReward() {
    return blockReward
}

function sub_1814ad1c(?) {
    return sub_1814ad1c
}

function sub_21d3e6ee(?) {
    return sub_21d3e6ee
}

function sub_2fc8cd97(?) {
    return sub_2fc8cd97
}

function getMiningTarget() {
    return target
}

function sub_34d04785(?) {
    return sub_34d04785
}

function sub_38546178(?) {
    return sub_38546178
}

function sub_52316b7d(?) {
    return sub_52316b7dAddress
}

function tokenContract() {
    return tokenContractAddress
}

function blockNumber() {
    return blockNumber
}

function getChallenge() {
    return challenge
}

function sub_83314c0b(?) {
    return sub_83314c0b
}

function owner() {
    return owner
}

function sub_964a96f6(?) {
    return sub_964a96f6
}

function sub_a137113b(?) {
    return sub_a137113b
}

function solutionForChallenge(bytes32 arg1) {
    return solutionForChallenge[arg1]
}

function sub_b640a95d(?) {
    return sub_b640a95d
}

function lastRewardAmount() {
    return lastRewardAmount
}

function locked() {
    return bool(locked)
}

function challenge() {
    return challenge
}

function target() {
    return target
}

function sub_f7ba2c0d(?) {
    return sub_f7ba2c0d
}

function _fallback() payable {
    revert
}

function sub_c6863fe3(?) {
    require msg.sender == owner
    owner = 0
}

function lockContract() {
    require msg.sender == owner
    locked = 1
    return 1
}

function getMiningDifficulty() {
    require target
    return (sub_f7ba2c0d / target)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_9244f353(?) {
    require sha3(challenge, msg.sender, arg1) == arg2
    require arg2 <= target
    return 1
}

function stopMining() {
    require msg.sender == owner
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e43e322c(?) {
    require not locked
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > blockReward
    require sha3(challenge, msg.sender, arg1) == arg2
    require arg2 <= target
    solutionForChallenge[stor12] = sha3(challenge, msg.sender, arg1)
    require not solutionForChallenge[stor12]
    require sub_38546178 + blockReward >= sub_38546178
    sub_38546178 += blockReward
    sub_52316b7dAddress = msg.sender
    lastRewardAmount = blockReward
    sub_1814ad1c = block.number
    emit 0xd71223da: msg.sender, blockReward
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, blockReward * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require blockNumber + 1 >= blockNumber
    blockNumber++
    require sub_a137113b
    if not blockNumber % sub_a137113b:
        if block.number - sub_2fc8cd97 >= sub_21d3e6ee:
            if not block.number - sub_2fc8cd97:
                require sub_21d3e6ee
                require 100 <= 0 / sub_21d3e6ee
                if (0 / sub_21d3e6ee) - 100 <= 1000:
                    if not target / 2000:
                        require target >= target
                    else:
                        require target / 2000
                        require (-100 * target / 2000) + (0 / sub_21d3e6ee * target / 2000) / target / 2000 == (0 / sub_21d3e6ee) - 100
                        require target - (100 * target / 2000) + (0 / sub_21d3e6ee * target / 2000) >= target
                        target = target - (100 * target / 2000) + (0 / sub_21d3e6ee * target / 2000)
                else:
                    if not target / 2000:
                        require target >= target
                    else:
                        require target / 2000
                        require 1000 * target / 2000 / target / 2000 == 1000
                        require target + (1000 * target / 2000) >= target
                        target += 1000 * target / 2000
            else:
                require block.number - sub_2fc8cd97
                require (100 * block.number) - (100 * sub_2fc8cd97) / block.number - sub_2fc8cd97 == 100
                require sub_21d3e6ee
                require 100 <= (100 * block.number) - (100 * sub_2fc8cd97) / sub_21d3e6ee
                if ((100 * block.number) - (100 * sub_2fc8cd97) / sub_21d3e6ee) - 100 <= 1000:
                    if not target / 2000:
                        require target >= target
                    else:
                        require target / 2000
                        require (-100 * target / 2000) + ((100 * block.number) - (100 * sub_2fc8cd97) / sub_21d3e6ee * target / 2000) / target / 2000 == ((100 * block.number) - (100 * sub_2fc8cd97) / sub_21d3e6ee) - 100
                        require target - (100 * target / 2000) + ((100 * block.number) - (100 * sub_2fc8cd97) / sub_21d3e6ee * target / 2000) >= target
                        target = target - (100 * target / 2000) + ((100 * block.number) - (100 * sub_2fc8cd97) / sub_21d3e6ee * target / 2000)
                else:
                    if not target / 2000:
                        require target >= target
                    else:
                        require target / 2000
                        require 1000 * target / 2000 / target / 2000 == 1000
                        require target + (1000 * target / 2000) >= target
                        target += 1000 * target / 2000
        else:
            if not sub_21d3e6ee:
                require block.number - sub_2fc8cd97
                require 100 <= 0 / block.number - sub_2fc8cd97
                if (0 / block.number - sub_2fc8cd97) - 100 <= 1000:
                    if not target / 2000:
                        require 0 <= target
                    else:
                        require target / 2000
                        require (-100 * target / 2000) + (0 / block.number - sub_2fc8cd97 * target / 2000) / target / 2000 == (0 / block.number - sub_2fc8cd97) - 100
                        require (-100 * target / 2000) + (0 / block.number - sub_2fc8cd97 * target / 2000) <= target
                        target = target + (100 * target / 2000) - (0 / block.number - sub_2fc8cd97 * target / 2000)
                else:
                    if not target / 2000:
                        require 0 <= target
                    else:
                        require target / 2000
                        require 1000 * target / 2000 / target / 2000 == 1000
                        require 1000 * target / 2000 <= target
                        target += -1000 * target / 2000
            else:
                require sub_21d3e6ee
                require 100 * sub_21d3e6ee / sub_21d3e6ee == 100
                require block.number - sub_2fc8cd97
                require 100 <= 100 * sub_21d3e6ee / block.number - sub_2fc8cd97
                if (100 * sub_21d3e6ee / block.number - sub_2fc8cd97) - 100 <= 1000:
                    if not target / 2000:
                        require 0 <= target
                    else:
                        require target / 2000
                        require (-100 * target / 2000) + (100 * sub_21d3e6ee / block.number - sub_2fc8cd97 * target / 2000) / target / 2000 == (100 * sub_21d3e6ee / block.number - sub_2fc8cd97) - 100
                        require (-100 * target / 2000) + (100 * sub_21d3e6ee / block.number - sub_2fc8cd97 * target / 2000) <= target
                        target = target + (100 * target / 2000) - (100 * sub_21d3e6ee / block.number - sub_2fc8cd97 * target / 2000)
                else:
                    if not target / 2000:
                        require 0 <= target
                    else:
                        require target / 2000
                        require 1000 * target / 2000 / target / 2000 == 1000
                        require 1000 * target / 2000 <= target
                        target += -1000 * target / 2000
        sub_2fc8cd97 = block.number
        if target < sub_b640a95d:
            target = sub_b640a95d
        if target > sub_f7ba2c0d:
            target = sub_f7ba2c0d
    require sub_34d04785
    if not blockNumber % sub_34d04785:
        blockReward = stor18
    challenge = block.hash(block.number - 1)
    return 1
}



}
