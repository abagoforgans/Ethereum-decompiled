contract main {


// =======================  Init code  ======================


#
#  - executeProposal(uint256 arg1, bytes arg2)
#
const receiveEther = 1


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of address newDAO;
mapping of uint8 allowedRecipients;
mapping of uint256 rewardToken;
uint256 totalRewardToken;
address rewardAccount;
address dAOrewardAccount;
mapping of uint256 dAOpaidOut;
mapping of uint256 paidOut;
mapping of uint256 blocked;
uint256 proposalDeposit;
uint256 stor13;
address daoCreatorAddress;
uint256 closingTime;
uint256 minTokensToCreate;
uint8 isFueled;
address privateCreationAddress; offset 8
address extraBalanceAddress;
mapping of uint256 stor19;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702955;

function minTokensToCreate() payable {
    return minTokensToCreate
}

function rewardAccount() payable {
    return rewardAccount
}

function daoCreator() payable {
    return daoCreatorAddress
}

function totalSupply() payable {
    return totalSupply
}

function extraBalance() payable {
    return extraBalanceAddress
}

function totalRewardToken() payable {
    return totalRewardToken
}

function closingTime() payable {
    return closingTime
}

function allowedRecipients(address arg1) payable {
    return uint8(allowedRecipients[arg1])
}

function DAOpaidOut(address arg1) payable {
    return dAOpaidOut[arg1]
}

function minQuorumDivisor() payable {
    return stor1.length
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function paidOut(address arg1) payable {
    return paidOut[arg1]
}

function DAOrewardAccount() payable {
    return dAOrewardAccount
}

function proposalDeposit() payable {
    return proposalDeposit
}

function lastTimeMinQuorumMet() payable {
    return stor2.length
}

function isFueled() payable {
    return isFueled
}

function getNewDAOAddress(uint256 arg1) payable {
    require arg1 < stor0
    require 0 < stor290D[arg1]
    return address(newDAO[sha3((14 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56b)])
}

function rewardToken(address arg1) payable {
    return rewardToken[arg1]
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function blocked(address arg1) payable {
    return blocked[arg1]
}

function curator() payable {
    return address(newDAO.length)
}

function privateCreation() payable {
    return privateCreationAddress
}

function numberOfProposals() payable {
    return (stor0 - 1)
}

function actualBalance() payable {
    return (eth.balance(this.address) - stor13)
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeProposalDeposit(uint256 arg1) payable {
    require msg.value <= 0
    require msg.sender == this.address
    require arg1 <= eth.balance(this.address) - stor13 + rewardToken[address(this.address)] / 100
    proposalDeposit = arg1
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require msg.value <= 0
    require arg1 < stor0
    return (uint256(stor[code.data[10806 len 32] + (14 * arg1) + 5].field_0) == sha3(arg2, arg3, arg4[all]))
}

function divisor() payable {
    if closingTime - (336 * 24 * 3600) > block.timestamp:
        return 20
    if closingTime - (96 * 24 * 3600) <= block.timestamp:
        return 30
    return ((block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20)
}

function changeAllowedRecipients(address arg1, bool arg2) payable {
    require msg.value <= 0
    require msg.sender == address(newDAO.length)
    uint256(allowedRecipients[address(arg1)]) = arg2 or Mask(248, 8, uint256(allowedRecipients[address(arg1)]))
    emit AllowedRecipientChanged(arg2, arg1);
    return 1
}

function unblockMe() payable {
    if blocked[address(msg.sender)] != 0:
        require blocked[address(msg.sender)] < stor0
        if block.timestamp <= uint256(stor[code.data[10806 len 32] + (14 * stor11[address(msg.sender)]) + 3].field_0):
            return 1
        blocked[address(msg.sender)] = 0
        return 0
    else:
        return 0
}

function halveMinQuorum() payable {
    if stor2.length >= block.timestamp - (4200 * 24 * 3600):
        if address(newDAO.length) != msg.sender:
            return 0
    if stor2.length >= block.timestamp - (336 * 24 * 3600):
        return 0
    stor2.length = block.timestamp
    bool(stor1.length) = 0
    uint255(stor1.length.field_1) = uint255(stor1.length)
    return 1
}

function newContract(address arg1) payable {
    if msg.sender == this.address:
        if uint8(allowedRecipients[address(arg1)]):
            call arg1 with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
            rewardToken[arg1] += rewardToken[address(this.address)]
            rewardToken[address(this.address)] = 0
            dAOpaidOut[arg1] += dAOpaidOut[address(this.address)]
            dAOpaidOut[address(this.address)] = 0
}

function getMyReward() payable {
    require msg.value <= 0
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply >= paidOut[address(msg.sender)]
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call rewardAccount.payOut(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - paidOut[address(msg.sender)]
    require ext_call.return_data[0]
    paidOut[address(msg.sender)] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require isFueled
    require block.timestamp > closingTime
    if blocked[address(msg.sender)] != 0:
        require blocked[address(msg.sender)] < stor0
        require block.timestamp > uint256(stor[code.data[10806 len 32] + (14 * stor11[address(msg.sender)]) + 3].field_0)
        blocked[address(msg.sender)] = 0
    require arg2 * paidOut[address(msg.sender)] / balanceOf[address(msg.sender)] <= paidOut[address(msg.sender)]
    paidOut[address(msg.sender)] -= arg2 * paidOut[address(msg.sender)] / balanceOf[address(msg.sender)]
    paidOut[arg1] += arg2 * paidOut[address(msg.sender)] / balanceOf[address(msg.sender)]
    require msg.value <= 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require isFueled
    require block.timestamp > closingTime
    if blocked[address(arg1)] != 0:
        require blocked[address(arg1)] < stor0
        require block.timestamp > uint256(stor[code.data[10806 len 32] + (14 * stor11[address(arg1)]) + 3].field_0)
        blocked[address(arg1)] = 0
    require arg3 * paidOut[address(arg1)] / balanceOf[address(arg1)] <= paidOut[address(arg1)]
    paidOut[address(arg1)] -= arg3 * paidOut[address(arg1)] / balanceOf[address(arg1)]
    paidOut[arg2] += arg3 * paidOut[address(arg1)] / balanceOf[address(arg1)]
    require msg.value <= 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function vote(uint256 arg1, bool arg2) payable {
    require balanceOf[address(msg.sender)] != 0
    require msg.value <= 0
    require arg1 < stor0
    require not uint8(stor[(14 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e][address(msg.sender)].field_0)
    require not uint8(stor[code.data[10806 len 32] + (14 * arg1) + 12][msg.sender].field_0)
    require block.timestamp < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 3].field_0)
    if not arg2:
        uint256(stor[code.data[10806 len 32] + (14 * arg1) + 10].field_0) += balanceOf[address(msg.sender)]
        uint8(stor[code.data[10806 len 32] + (14 * arg1) + 12][address(msg.sender)].field_0) = 1
    else:
        uint256(stor[code.data[10806 len 32] + (14 * arg1) + 9].field_0) += balanceOf[address(msg.sender)]
        uint8(stor[code.data[10806 len 32] + (14 * arg1) + 11][address(msg.sender)].field_0) = 1
    if not blocked[address(msg.sender)]:
        blocked[address(msg.sender)] = arg1
    else:
        require blocked[address(msg.sender)] < stor0
        if uint256(stor[code.data[10806 len 32] + (14 * arg1) + 3].field_0) > stor290D[stor11[address(msg.sender)]]:
            blocked[address(msg.sender)] = arg1
    emit Voted(arg2, arg1, msg.sender);
    return 0
}

function retrieveDAOReward(bool arg1) payable {
    require msg.value <= 0
    call dAOrewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require rewardToken[address(msg.sender)] * ext_call.return_data[0] / totalRewardToken >= dAOpaidOut[address(msg.sender)]
    call dAOrewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not arg1:
        call dAOrewardAccount.payOut(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args msg.sender, (rewardToken[address(msg.sender)] * ext_call.return_data[0] / totalRewardToken) - dAOpaidOut[address(msg.sender)]
        require ext_call.success
    else:
        call msg.sender.rewardAccount() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call dAOrewardAccount.payOut(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(ext_call.return_data[0]), (rewardToken[address(msg.sender)] * ext_call.return_data[0] / totalRewardToken) - dAOpaidOut[address(msg.sender)]
    require ext_call.return_data[0]
    dAOpaidOut[address(msg.sender)] = rewardToken[address(msg.sender)] * ext_call.return_data[0] / totalRewardToken
    return 1
}

function refund() payable {
    require msg.value <= 0
    if block.timestamp > closingTime:
        if not isFueled:
            call extraBalanceAddress.0xd2cc718f with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            if eth.balance(extraBalanceAddress) < ext_call.return_data[0]:
                call msg.sender with:
                   value stor19[address(msg.sender)] wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    emit Refund(stor19[address(msg.sender)], msg.sender);
                    totalSupply -= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = 0
                    stor19[address(msg.sender)] = 0
            else:
                call extraBalanceAddress.0xd2cc718f with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call extraBalanceAddress.payOut(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(this.address), ext_call.return_data[0]
                call msg.sender with:
                   value stor19[address(msg.sender)] wei
                     gas gas_remaining - 34050 wei
                emit Refund(stor19[address(msg.sender)], msg.sender);
                totalSupply -= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor19[address(msg.sender)] = 0
}

function proposals(uint256 arg1) payable {
    require arg1 < stor0
    mem[512] = uint256(stor[sha3(code.data[10806 len 32] + (14 * arg1) + 2)].field_0)
    idx = 512
    s = 0
    while stor[code.data[10806 len 32] + (14 * arg1) + 2].length + 512 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(code.data[10806 len 32] + (14 * arg1) + 2) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[code.data[10806 len 32] + (14 * arg1)].field_0), 
           uint256(stor[code.data[10806 len 32] + (14 * arg1) + 1].field_0),
           Array(len=stor[code.data[10806 len 32] + (14 * arg1) + 2].length, data=mem[512 len stor[code.data[10806 len 32] + (14 * arg1) + 2].length + (floor32(stor[code.data[10806 len 32] + (14 * arg1) + 2].length - 1) + -stor[code.data[10806 len 32] + (14 * arg1) + 2].length + 32 % 32)]),
           uint256(stor[code.data[10806 len 32] + (14 * arg1) + 3].field_0),
           uint8(stor[code.data[10806 len 32] + (14 * arg1) + 4].field_0),
           uint8(stor[code.data[10806 len 32] + (14 * arg1) + 4].field_0),
           uint256(stor[code.data[10806 len 32] + (14 * arg1) + 5].field_0),
           uint256(stor[code.data[10806 len 32] + (14 * arg1) + 6].field_0),
           uint8(stor[code.data[10806 len 32] + (14 * arg1) + 7].field_0),
           uint256(stor[code.data[10806 len 32] + (14 * arg1) + 9].field_0),
           uint256(stor[code.data[10806 len 32] + (14 * arg1) + 10].field_0),
           address(stor[code.data[10806 len 32] + (14 * arg1) + 13].field_0)
}

function transferWithoutReward(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply >= paidOut[address(msg.sender)]
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call rewardAccount.payOut(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - paidOut[address(msg.sender)]
    require ext_call.return_data[0]
    paidOut[address(msg.sender)] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
    require isFueled
    require block.timestamp > closingTime
    if blocked[address(msg.sender)] != 0:
        require blocked[address(msg.sender)] < stor0
        require block.timestamp > uint256(stor[code.data[10806 len 32] + (14 * stor11[address(msg.sender)]) + 3].field_0)
        blocked[address(msg.sender)] = 0
    require arg2 * paidOut[address(msg.sender)] / balanceOf[address(msg.sender)] <= paidOut[address(msg.sender)]
    paidOut[address(msg.sender)] -= arg2 * paidOut[address(msg.sender)] / balanceOf[address(msg.sender)]
    paidOut[arg1] += arg2 * paidOut[address(msg.sender)] / balanceOf[address(msg.sender)]
    require msg.value <= 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFromWithoutReward(address arg1, address arg2, uint256 arg3) payable {
    require msg.value <= 0
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply >= paidOut[address(arg1)]
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call rewardAccount.payOut(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply) - paidOut[address(arg1)]
    require ext_call.return_data[0]
    paidOut[address(arg1)] = balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply
    require isFueled
    require block.timestamp > closingTime
    if blocked[address(arg1)] != 0:
        require blocked[address(arg1)] < stor0
        require block.timestamp > uint256(stor[code.data[10806 len 32] + (14 * stor11[address(arg1)]) + 3].field_0)
        blocked[address(arg1)] = 0
    require arg3 * paidOut[address(arg1)] / balanceOf[address(arg1)] <= paidOut[address(arg1)]
    paidOut[address(arg1)] -= arg3 * paidOut[address(arg1)] / balanceOf[address(arg1)]
    paidOut[arg2] += arg3 * paidOut[address(arg1)] / balanceOf[address(arg1)]
    require msg.value <= 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokenProxy(address arg1) payable {
    require block.timestamp < closingTime
    require msg.value > 0
    if privateCreationAddress != 0:
        require msg.sender == privateCreationAddress
    if closingTime - (336 * 24 * 3600) > block.timestamp:
        call extraBalanceAddress with:
           value msg.value - (20 * msg.value / 20) wei
             gas gas_remaining - 34050 wei
        balanceOf[address(arg1)] += 20 * msg.value / 20
        totalSupply += 20 * msg.value / 20
        stor19[address(arg1)] += msg.value
        emit CreatedToken((20 * msg.value / 20), arg1);
        if totalSupply >= minTokensToCreate:
            if not isFueled:
                isFueled = 1
                emit FuelingToDate(totalSupply);
    else:
        if closingTime - (96 * 24 * 3600) <= block.timestamp:
            call extraBalanceAddress with:
               value msg.value - (20 * msg.value / 30) wei
                 gas gas_remaining - 34050 wei
            balanceOf[address(arg1)] += 20 * msg.value / 30
            totalSupply += 20 * msg.value / 30
            stor19[address(arg1)] += msg.value
            emit CreatedToken((20 * msg.value / 30), arg1);
        else:
            call extraBalanceAddress with:
               value msg.value - (20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20) wei
                 gas gas_remaining - 34050 wei
            balanceOf[address(arg1)] += 20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20
            totalSupply += 20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20
            stor19[address(arg1)] += msg.value
            emit CreatedToken((20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20), arg1);
        if totalSupply >= minTokensToCreate:
            if not isFueled:
                isFueled = 1
                emit FuelingToDate(totalSupply);
    return 1
}

function _fallback() payable {
    if block.timestamp < closingTime + (960 * 24 * 3600):
        if extraBalanceAddress != msg.sender:
            require block.timestamp < closingTime
            require msg.value > 0
            if privateCreationAddress != 0:
                require msg.sender == privateCreationAddress
            if closingTime - (336 * 24 * 3600) > block.timestamp:
                call extraBalanceAddress with:
                   value msg.value - (20 * msg.value / 20) wei
                     gas gas_remaining - 34050 wei
                balanceOf[address(msg.sender)] += 20 * msg.value / 20
                totalSupply += 20 * msg.value / 20
                stor19[address(msg.sender)] += msg.value
                emit CreatedToken((20 * msg.value / 20), msg.sender);
                if totalSupply >= minTokensToCreate:
                    if not isFueled:
                        isFueled = 1
                        emit FuelingToDate(totalSupply);
            else:
                if closingTime - (96 * 24 * 3600) <= block.timestamp:
                    call extraBalanceAddress with:
                       value msg.value - (20 * msg.value / 30) wei
                         gas gas_remaining - 34050 wei
                    balanceOf[address(msg.sender)] += 20 * msg.value / 30
                    totalSupply += 20 * msg.value / 30
                    stor19[address(msg.sender)] += msg.value
                    emit CreatedToken((20 * msg.value / 30), msg.sender);
                else:
                    call extraBalanceAddress with:
                       value msg.value - (20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20) wei
                         gas gas_remaining - 34050 wei
                    balanceOf[address(msg.sender)] += 20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20
                    totalSupply += 20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20
                    stor19[address(msg.sender)] += msg.value
                    emit CreatedToken((20 * msg.value / (block.timestamp + -closingTime + (336 * 24 * 3600) / 24 * 3600) + 20), msg.sender);
                if totalSupply >= minTokensToCreate:
                    if not isFueled:
                        isFueled = 1
                        emit FuelingToDate(totalSupply);
    return 1
}

function splitDAO(uint256 arg1, address arg2) payable {
    require msg.value <= 0
    require balanceOf[address(msg.sender)] != 0
    require arg1 < stor0
    require block.timestamp >= stor290D[arg1]
    require block.timestamp <= uint256(stor[code.data[10806 len 32] + (14 * arg1) + 3].field_0) + (648 * 24 * 3600)
    require arg2 == address(stor[code.data[10806 len 32] + (14 * arg1)].field_0)
    require uint8(stor[code.data[10806 len 32] + (14 * arg1) + 7].field_0)
    require uint8(stor[code.data[10806 len 32] + (14 * arg1) + 11][address(msg.sender)].field_0)
    if arg1 != blocked[address(msg.sender)]:
        require not blocked[address(msg.sender)]
    require 0 < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 8].field_0)
    if address(newDAO[sha3(code.data[10806 len 32] + (14 * arg1) + 8)]):
        require 0 < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 8].field_0)
    else:
        emit NewCurator(arg2);
        call daoCreatorAddress.0xe2faf044 with:
             gas gas_remaining - 25050 wei
            args 0, 0, 0, 0, block.timestamp + (648 * 24 * 3600)
        require ext_call.success
        require 0 < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 8].field_0)
        uint256(newDAO[sha3(code.data[10806 len 32] + (14 * arg1) + 8)]) = ext_call.return_data[0] or Mask(96, 160, uint256(newDAO[sha3(code.data[10806 len 32] + (14 * arg1) + 8)]))
        require address(newDAO[sha3(code.data[10806 len 32] + (14 * arg1) + 8)]) != 0
        require eth.balance(this.address) >= stor13
        require 0 < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 8].field_0)
        uint256(stor[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) = eth.balance(this.address) - stor13
        stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] = rewardToken[address(this.address)]
        uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) = totalSupply
        uint8(stor[code.data[10806 len 32] + (14 * arg1) + 4].field_8) = 1
    call address(newDAO[sha3(code.data[10806 len 32] + (14 * arg1) + 8)]).0xbaac5300 with:
       value balanceOf[address(msg.sender)] * uint256(stor[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) wei
         gas gas_remaining - 34050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require 0 < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 8].field_0)
    rewardToken[address(stor3[sha3(code.data[10806 len 32] + (14 * arg1) + 8)])] += balanceOf[address(msg.sender)] * stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0)
    require rewardToken[address(this.address)] >= balanceOf[address(msg.sender)] * stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0)
    rewardToken[address(this.address)] -= balanceOf[address(msg.sender)] * stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0)
    require 0 < uint256(stor[code.data[10806 len 32] + (14 * arg1) + 8].field_0)
    dAOpaidOut[address(stor3[sha3(code.data[10806 len 32] + (14 * arg1) + 8)])] += balanceOf[address(msg.sender)] * stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) * dAOpaidOut[address(this.address)] / rewardToken[address(this.address)]
    require dAOpaidOut[this.address] >= balanceOf[address(msg.sender)] * stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) * dAOpaidOut[address(this.address)] / rewardToken[address(this.address)]
    dAOpaidOut[address(this.address)] -= balanceOf[address(msg.sender)] * stor2[sha3(code.data[10806 len 32] + (14 * arg1) + 8)] / uint256(stor1[sha3(code.data[10806 len 32] + (14 * arg1) + 8)].field_0) * dAOpaidOut[address(this.address)] / rewardToken[address(this.address)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    require msg.value <= 0
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply >= paidOut[address(msg.sender)]
    call rewardAccount.0xd2cc718f with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call rewardAccount.payOut(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - paidOut[address(msg.sender)]
    require ext_call.return_data[0]
    paidOut[address(msg.sender)] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    paidOut[address(msg.sender)] = 0
    return 1
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5, bool arg6) payable {
    require balanceOf[address(msg.sender)] != 0
    if not arg6:
        if not uint8(allowedRecipients[address(arg1)]):
            require arg1 == extraBalanceAddress
            call extraBalanceAddress.0xd2cc718f with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            require totalRewardToken > ext_call.return_data[0]
        require arg5 >= 336 * 24 * 3600
    else:
        require 0 == arg2
        require 0 == arg4.length
        require address(newDAO.length) != arg1
        require msg.value <= 0
        require arg5 >= 168 * 24 * 3600
        if not arg6:
            if not uint8(allowedRecipients[address(arg1)]):
                require arg1 == extraBalanceAddress
                call extraBalanceAddress.0xd2cc718f with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                require totalRewardToken > ext_call.return_data[0]
            require arg5 >= 336 * 24 * 3600
    require arg5 <= 1344 * 24 * 3600
    require isFueled
    require block.timestamp >= closingTime
    if msg.value < proposalDeposit:
        require arg6
    require block.timestamp + arg5 >= block.timestamp
    require this.address != msg.sender
    stor0++
    if not stor0 <= stor0 + 1:
        mem[0] = 0
        idx = (14 * stor0) + 14
        while sha3(0) + (14 * stor0) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint16(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 7].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 8].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 8
                s = sha3(s + sha3(mem[0]) + 8)
                while sha3(s + sha3(mem[0]) + 8) + (4 * uint256(stor[s + sha3(mem[0]) + 8].field_0)) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    uint256(stor[s + sha3(mem[0]) + 1].field_0) = 0
                    uint256(stor[s + sha3(mem[0]) + 2].field_0) = 0
                    address(stor[s + sha3(mem[0]) + 3].field_0) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 9].field_0) = 0
                uint256(stor[s + sha3(mem[0]) + 10].field_0) = 0
                address(stor[s + sha3(mem[0]) + 13].field_0) = 0
                s = s + 1
                continue 
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint16(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 8].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(idx + sha3(mem[0]) + 8)
            while sha3(idx + sha3(mem[0]) + 8) + (4 * uint256(stor[idx + sha3(mem[0]) + 8].field_0)) > s:
                uint256(stor[s].field_0) = 0
                uint256(stor1[s].field_0) = 0
                stor2[s] = 0
                address(newDAO[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 9].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 10].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 13].field_0) = 0
            idx = idx + 1
            continue 
    require stor0 < stor0
    uint256(stor[code.data[10806 len 32] + (14 * stor0)].field_0) = arg1 or Mask(96, 160, uint256(stor[code.data[10806 len 32] + (14 * stor0)].field_0))
    uint256(stor[code.data[10806 len 32] + (14 * stor0) + 1].field_0) = arg2
    uint256(stor[sha3(code.data[10806 len 32] + (14 * stor0) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[code.data[10806 len 32] + (14 * stor0) + 5].field_0) = sha3(arg1, arg2, arg4[all])
    uint256(stor[code.data[10806 len 32] + (14 * stor0) + 3].field_0) = block.timestamp + arg5
    uint8(stor[code.data[10806 len 32] + (14 * stor0) + 4].field_0) = 1
    uint256(stor[code.data[10806 len 32] + (14 * stor0) + 7].field_0) = arg6 or Mask(248, 8, uint256(stor[code.data[10806 len 32] + (14 * stor0) + 7].field_0))
    if arg6:
        uint256(stor[code.data[10806 len 32] + (14 * stor0) + 8].field_0)++
        if not uint256(stor[code.data[10806 len 32] + (14 * stor0) + 8].field_0) <= uint256(stor[code.data[10806 len 32] + (14 * stor0) + 8].field_0) + 1:
            idx = 4 * uint256(stor[code.data[10806 len 32] + (14 * stor0) + 8].field_0) + 1
            while 4 * uint256(stor[code.data[10806 len 32] + (14 * stor0) + 8].field_0) > idx:
                uint256(stor[idx + sha3(code.data[10806 len 32] + (14 * stor0) + 8)].field_0) = 0
                uint256(stor[idx + sha3(code.data[10806 len 32] + (14 * stor0) + 8) + 1].field_0) = 0
                uint256(stor[idx + sha3(code.data[10806 len 32] + (14 * stor0) + 8) + 2].field_0) = 0
                address(stor[idx + sha3(code.data[10806 len 32] + (14 * stor0) + 8) + 3].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor[code.data[10806 len 32] + (14 * stor0) + 13].field_0) = msg.sender or Mask(96, 160, uint256(stor[code.data[10806 len 32] + (14 * stor0) + 13].field_0))
    uint256(stor[code.data[10806 len 32] + (14 * stor0) + 6].field_0) = msg.value
    stor13 += msg.value
    emit ProposalAdded(address(arg1), arg2, arg6, Array(len=arg3.length, data=arg3[all]), stor0);
    return stor0
}



// =====================  Runtime code  =====================




}
