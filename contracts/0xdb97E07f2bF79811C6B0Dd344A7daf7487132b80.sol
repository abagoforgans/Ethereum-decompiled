contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    mem[96] = 20
    mem[128] = 15
    mem[160] = 10
    mem[192] = 5
    mem[224] = 0
    s = 0
    idx = 96
    while 256 > idx:
        stor3 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor3
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 5
    s = 3
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 3
    while 4 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor4 = code.data[7246 len 20]
    return code.data[468 len 6766]
}



// =====================  Runtime code  =====================


const ETH_MIN_GOAL = 3000 * 10^18

const ETH_MAX_GOAL = 6000 * 10^18

const DECIMALS = 18

const BLOCKS_PER_PHASE = 30500

const PHASE_NUMBER = 5

const UNSOLD_SOLD_RATIO = 50

const NAME = 'BitnanRewardToken'

const ORIGIN_ETH_BRT_RATIO = 3000

const SYMBOL = 'BRT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint8 bonusPercents;
address owner;
uint256 totalEthAmount;
uint256 tokenIssueIndex;
uint256 deadline;
uint256 durationInDays;
uint256 startBlock;
uint8 stor10;

function totalEthAmount() {
    return totalEthAmount
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function tokenIssueIndex() {
    return tokenIssueIndex
}

function startBlock() {
    return startBlock
}

function bonusPercents(uint256 arg1) {
    require arg1 < 5
    return bonusPercents[uint8(arg1)].field_0
}

function durationInDays() {
    return durationInDays
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function isLeftTokenIssued() {
    return bool(stor10)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function saleOverInTime() {
    return block.number >= startBlock + 152500
}

function saleOverReachMaxETH() {
    return totalEthAmount >= 6000 * 10^18
}

function saleInProgress() {
    if startBlock <= 0:
        return (startBlock > 0)
    return block.number >= startBlock
}

function saleOver() {
    if startBlock <= 0:
        return (startBlock > 0)
    if block.number >= startBlock + 152500:
        return block.number >= startBlock + 152500
    return totalEthAmount >= 6000 * 10^18
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function start(uint256 arg1) {
    if owner != msg.sender:
        emit FakeOwner(msg.sender);
        revert
    if startBlock > 0:
        if block.number >= startBlock:
            emit CommonError(Array(len=21, data='Sale has not started!'));
            revert
    startBlock = arg1
    emit TokenSaleStart()
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function close() {
    if owner != msg.sender:
        emit FakeOwner(msg.sender);
        revert
    if startBlock <= 0:
        emit CommonError(Array(len=17, data='Sale is not over!'));
        revert
    if block.number < startBlock + 152500:
        if totalEthAmount < 6000 * 10^18:
            emit CommonError(Array(len=17, data='Sale is not over!'));
            revert
    if totalEthAmount < 3000 * 10^18:
        emit TokenSaleFail()
    else:
        if stor10:
            emit CommonError(Array(len=28, data='Left tokens has been issued!'));
        else:
            require totalEthAmount >= 3000 * 10^18
            if totalSupply:
                require totalSupply
                require 50 * totalSupply / totalSupply == 50
            require totalSupply + (50 * totalSupply / 100) >= totalSupply
            totalSupply += 50 * totalSupply / 100
            require balanceOf[stor4] + (50 * totalSupply / 100) >= balanceOf[stor4]
            balanceOf[stor4] += 50 * totalSupply / 100
            tokenIssueIndex++
            emit IssueToken(tokenIssueIndex, owner, 0, 50 * totalSupply / 100);
            stor10 = 1
        emit TokenSaleSucceed()
}

function issueToken(address arg1) payable {
    if startBlock <= 0:
        emit CommonError(Array(len=21, data='Token is not in sale!'));
    else:
        if block.number < startBlock:
            emit CommonError(Array(len=21, data='Token is not in sale!'));
        else:
            if startBlock <= 0:
                require msg.value >= 10^16
                if block.number - startBlock / 30500 >= 5:
                    if not msg.value:
                        if not 3000 * msg.value:
                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                if totalEthAmount + msg.value >= totalEthAmount:
                                    totalEthAmount += msg.value
                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                        if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                            emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                            emit TokenSendFail(msg.value);
                        else:
                            require 3000 * msg.value
                            if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                            if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                    else:
                        require msg.value
                        if 3000 * msg.value / msg.value == 3000:
                            if not 3000 * msg.value:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                            if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                            else:
                                require 3000 * msg.value
                                if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
                else:
                    if not msg.value:
                        require block.number - startBlock / 30500 < 5
                        if not 3000 * msg.value:
                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                if totalEthAmount + msg.value >= totalEthAmount:
                                    totalEthAmount += msg.value
                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                        if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                            emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                            emit TokenSendFail(msg.value);
                        else:
                            require 3000 * msg.value
                            if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                            if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                    else:
                        require msg.value
                        if 3000 * msg.value / msg.value == 3000:
                            require block.number - startBlock / 30500 < 5
                            if not 3000 * msg.value:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                            if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                            else:
                                require 3000 * msg.value
                                if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
            else:
                if block.number >= startBlock + 152500:
                    emit CommonError(Array(len=21, data='Token is not in sale!'));
                else:
                    if totalEthAmount >= 6000 * 10^18:
                        emit CommonError(Array(len=21, data='Token is not in sale!'));
                    else:
                        require msg.value >= 10^16
                        if block.number - startBlock / 30500 >= 5:
                            if not msg.value:
                                if not 3000 * msg.value:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
                                else:
                                    require 3000 * msg.value
                                    if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                        emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                            else:
                                require msg.value
                                if 3000 * msg.value / msg.value == 3000:
                                    if not 3000 * msg.value:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                        emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                                    else:
                                        require 3000 * msg.value
                                        if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                                if totalEthAmount + msg.value >= totalEthAmount:
                                                    totalEthAmount += msg.value
                                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                        if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(arg1)]:
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                            emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                            emit TokenSendFail(msg.value);
                        else:
                            if not msg.value:
                                require block.number - startBlock / 30500 < 5
                                if not 3000 * msg.value:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
                                else:
                                    require 3000 * msg.value
                                    if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                        emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                            else:
                                require msg.value
                                if 3000 * msg.value / msg.value == 3000:
                                    require block.number - startBlock / 30500 < 5
                                    if not 3000 * msg.value:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                        emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                                    else:
                                        require 3000 * msg.value
                                        if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                                if totalEthAmount + msg.value >= totalEthAmount:
                                                    totalEthAmount += msg.value
                                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                        if balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(arg1)]:
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                            emit IssueToken(tokenIssueIndex, address(arg1), msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                            emit TokenSendFail(msg.value);
    revert
}

function _fallback() payable {
    if startBlock <= 0:
        emit CommonError(Array(len=21, data='Token is not in sale!'));
    else:
        if block.number < startBlock:
            emit CommonError(Array(len=21, data='Token is not in sale!'));
        else:
            if startBlock <= 0:
                require msg.value >= 10^16
                if block.number - startBlock / 30500 >= 5:
                    if not msg.value:
                        if not 3000 * msg.value:
                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                if totalEthAmount + msg.value >= totalEthAmount:
                                    totalEthAmount += msg.value
                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                        if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                            emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                            emit TokenSendFail(msg.value);
                        else:
                            require 3000 * msg.value
                            if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                            if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                    else:
                        require msg.value
                        if 3000 * msg.value / msg.value == 3000:
                            if not 3000 * msg.value:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                            if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                            else:
                                require 3000 * msg.value
                                if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
                else:
                    if not msg.value:
                        require block.number - startBlock / 30500 < 5
                        if not 3000 * msg.value:
                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                if totalEthAmount + msg.value >= totalEthAmount:
                                    totalEthAmount += msg.value
                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                        if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                            emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                            emit TokenSendFail(msg.value);
                        else:
                            require 3000 * msg.value
                            if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                            if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                    else:
                        require msg.value
                        if 3000 * msg.value / msg.value == 3000:
                            require block.number - startBlock / 30500 < 5
                            if not 3000 * msg.value:
                                if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                    if totalEthAmount + msg.value >= totalEthAmount:
                                        totalEthAmount += msg.value
                                        if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                            totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                            if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                emit TokenSendFail(msg.value);
                            else:
                                require 3000 * msg.value
                                if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
            else:
                if block.number >= startBlock + 152500:
                    emit CommonError(Array(len=21, data='Token is not in sale!'));
                else:
                    if totalEthAmount >= 6000 * 10^18:
                        emit CommonError(Array(len=21, data='Token is not in sale!'));
                    else:
                        require msg.value >= 10^16
                        if block.number - startBlock / 30500 >= 5:
                            if not msg.value:
                                if not 3000 * msg.value:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
                                else:
                                    require 3000 * msg.value
                                    if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                        emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                            else:
                                require msg.value
                                if 3000 * msg.value / msg.value == 3000:
                                    if not 3000 * msg.value:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                    if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                        emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                                    else:
                                        require 3000 * msg.value
                                        if 3000 * msg.value * bonusPercents.length.field_32 / 3000 * msg.value == bonusPercents.length.field_32:
                                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= 3000 * msg.value:
                                                if totalEthAmount + msg.value >= totalEthAmount:
                                                    totalEthAmount += msg.value
                                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= totalSupply:
                                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                        if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100) >= balanceOf[address(msg.sender)]:
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100)
                                                            emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents.length.field_32 / 100));
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                            emit TokenSendFail(msg.value);
                        else:
                            if not msg.value:
                                require block.number - startBlock / 30500 < 5
                                if not 3000 * msg.value:
                                    if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                        if totalEthAmount + msg.value >= totalEthAmount:
                                            totalEthAmount += msg.value
                                            if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                    emit TokenSendFail(msg.value);
                                else:
                                    require 3000 * msg.value
                                    if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                        emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                            else:
                                require msg.value
                                if 3000 * msg.value / msg.value == 3000:
                                    require block.number - startBlock / 30500 < 5
                                    if not 3000 * msg.value:
                                        if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                            if totalEthAmount + msg.value >= totalEthAmount:
                                                totalEthAmount += msg.value
                                                if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                    totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                    if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                        emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                        emit TokenSendFail(msg.value);
                                    else:
                                        require 3000 * msg.value
                                        if 3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 3000 * msg.value == bonusPercents[uint8(block.number - stor9 / 30500)].field_0:
                                            if (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= 3000 * msg.value:
                                                if totalEthAmount + msg.value >= totalEthAmount:
                                                    totalEthAmount += msg.value
                                                    if totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= totalSupply:
                                                        totalSupply = totalSupply + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                        if balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100) >= balanceOf[address(msg.sender)]:
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100)
                                                            emit IssueToken(tokenIssueIndex, msg.sender, msg.value, (3000 * msg.value) + (3000 * msg.value * bonusPercents[uint8(block.number - stor9 / 30500)].field_0 / 100));
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                            emit TokenSendFail(msg.value);
    revert
}



}
