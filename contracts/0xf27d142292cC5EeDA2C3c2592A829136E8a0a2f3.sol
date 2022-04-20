contract main {


// =======================  Init code  ======================


uint256 stor0;
bool stor1; offset 256
uint8 stor1;
uint16 stor1; offset 32
uint32 stor1; offset 8
uint32 stor1; offset 104
uint64 stor1; offset 48
uint128 stor1;
uint128 stor1; offset 128
address stor2;
address stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor0 = 0
    Mask(96, 0, stor1.field_0) = Mask(96, 0, '')
    uint8(stor1.field_0) = 17
    stor1.field_8 % 16777216 = 0
    uint16(stor1.field_32) = 10000
    stor1.field_48 % 72057594037927936 = 0
    stor1.field_104 % 16777216 = 3906250
    uint128(stor1.field_128) = Mask(128, 128, '') >> 128
    stor1.field_256 % 1 = 0
    stor1.field_256 % 1 = 0
    require not msg.value
    if code.data[5107 len 32] <= 0:
        stor0 = 0
    else:
        stor0 = code.data[5107 len 32]
    stor2 = msg.sender
    stor3 = msg.sender
    stor4 = msg.sender
    stor5[address(this.address)] = stor0
    return code.data[254 len 4853]
}



// =====================  Runtime code  =====================


const name = 'Silver'

const minFee = 1

const decimals = 5

const symbol = 'SVB'

const minTransfer = 10


uint256 totalSupply;
uint32 transferFeeNum;
uint32 transferFeeDenum; offset 32
uint32 demurringFeeNum; offset 64
uint32 demurringFeeDenum; offset 96
uint128 stor1; offset 128
address owner;
address demurringFeeOwner;
address transferFeeOwner;
mapping of uint256 balanceOf;
mapping of uint64 stor6;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function demurringFeeOwner() {
    return demurringFeeOwner
}

function transferFeeNum() {
    return transferFeeNum
}

function transferFeeOwner() {
    return transferFeeOwner
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function demurringFeeDenum() {
    return demurringFeeDenum
}

function owner() {
    return owner
}

function demurringFeeNum() {
    return demurringFeeNum
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferFeeDenum() {
    return transferFeeDenum
}

function kill() {
    require owner == msg.sender
    require not totalSupply
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeTransferFeeOwner(address arg1) {
    require owner == msg.sender
    transferFeeOwner = arg1
}

function changeDemurringFeeOwner(address arg1) {
    require owner == msg.sender
    demurringFeeOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issue(uint256 arg1) {
    require owner == msg.sender
    if totalSupply + arg1 > totalSupply:
        totalSupply += arg1
        balanceOf[address(this.address)] += arg1
}

function setTransferFee(uint32 arg1, uint32 arg2) {
    require owner == msg.sender
    require arg2 > 0
    require arg1 < arg2
    transferFeeNum = arg1
    transferFeeDenum = arg2
}

function setDemurringFee(uint32 arg1, uint32 arg2) {
    require owner == msg.sender
    require arg2 > 0
    require arg1 < arg2
    demurringFeeNum = arg1
    demurringFeeDenum = arg2
    stor1 = 0
}

function destroy(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require balanceOf[address(this.address)] >= arg1
    balanceOf[address(this.address)] -= arg1
    totalSupply -= arg1
}

function sell(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 > 10
    require balanceOf[address(this.address)] >= arg2
    if balanceOf[address(arg1)] <= 0:
        stor6[address(arg1)] = uint64(block.timestamp)
    else:
        if owner != arg1:
            if transferFeeOwner != arg1:
                if demurringFeeOwner != arg1:
                    if balanceOf[address(arg1)] > 0:
                        if block.timestamp > uint64(stor6[address(arg1)] + 60):
                            require demurringFeeDenum
                            if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                balanceOf[address(arg1)]--
                                balanceOf[stor3]++
                                emit Transfer(1, arg1, demurringFeeOwner);
                                emit DemurringFee(1, arg1);
                            else:
                                if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                    balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                    emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                    emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                else:
                                    balanceOf[address(arg1)] = 0
                                    balanceOf[stor3] += balanceOf[address(arg1)]
                                    emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                    emit DemurringFee(balanceOf[address(arg1)], arg1);
                            stor6[address(arg1)] = uint64(block.timestamp)
    balanceOf[address(this.address)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if arg2 < 10:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    if owner != msg.sender:
        if transferFeeOwner != msg.sender:
            if demurringFeeOwner != msg.sender:
                if balanceOf[address(msg.sender)] > 0:
                    if block.timestamp > uint64(stor6[address(msg.sender)] + 60):
                        require demurringFeeDenum
                        if demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum < 1:
                            balanceOf[address(msg.sender)]--
                            balanceOf[stor3]++
                            emit Transfer(1, msg.sender, demurringFeeOwner);
                            emit DemurringFee(1, msg.sender);
                        else:
                            if demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum
                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum
                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum), msg.sender, demurringFeeOwner);
                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum), msg.sender);
                            else:
                                balanceOf[address(msg.sender)] = 0
                                balanceOf[stor3] += balanceOf[address(msg.sender)]
                                emit Transfer(balanceOf[address(msg.sender)], msg.sender, demurringFeeOwner);
                                emit DemurringFee(balanceOf[address(msg.sender)], msg.sender);
                        stor6[address(msg.sender)] = uint64(block.timestamp)
    if balanceOf[address(msg.sender)] >= arg2:
        if owner == msg.sender:
            if balanceOf[address(arg1)] <= 0:
                stor6[address(arg1)] = uint64(block.timestamp)
            else:
                if owner != arg1:
                    if transferFeeOwner != arg1:
                        if demurringFeeOwner != arg1:
                            if balanceOf[address(arg1)] > 0:
                                if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                    require demurringFeeDenum
                                    if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                        balanceOf[address(arg1)]--
                                        balanceOf[stor3]++
                                        emit Transfer(1, arg1, demurringFeeOwner);
                                        emit DemurringFee(1, arg1);
                                    else:
                                        if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                            balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                            balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                            emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                            emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                        else:
                                            balanceOf[address(arg1)] = 0
                                            balanceOf[stor3] += balanceOf[address(arg1)]
                                            emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                            emit DemurringFee(balanceOf[address(arg1)], arg1);
                                    stor6[address(arg1)] = uint64(block.timestamp)
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if transferFeeOwner == msg.sender:
                if balanceOf[address(arg1)] <= 0:
                    stor6[address(arg1)] = uint64(block.timestamp)
                else:
                    if owner != arg1:
                        if transferFeeOwner != arg1:
                            if demurringFeeOwner != arg1:
                                if balanceOf[address(arg1)] > 0:
                                    if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                        require demurringFeeDenum
                                        if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                            balanceOf[address(arg1)]--
                                            balanceOf[stor3]++
                                            emit Transfer(1, arg1, demurringFeeOwner);
                                            emit DemurringFee(1, arg1);
                                        else:
                                            if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                                balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                            else:
                                                balanceOf[address(arg1)] = 0
                                                balanceOf[stor3] += balanceOf[address(arg1)]
                                                emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                                emit DemurringFee(balanceOf[address(arg1)], arg1);
                                        stor6[address(arg1)] = uint64(block.timestamp)
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if demurringFeeOwner == msg.sender:
                    if balanceOf[address(arg1)] <= 0:
                        stor6[address(arg1)] = uint64(block.timestamp)
                    else:
                        if owner != arg1:
                            if transferFeeOwner != arg1:
                                if demurringFeeOwner != arg1:
                                    if balanceOf[address(arg1)] > 0:
                                        if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                            require demurringFeeDenum
                                            if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                                balanceOf[address(arg1)]--
                                                balanceOf[stor3]++
                                                emit Transfer(1, arg1, demurringFeeOwner);
                                                emit DemurringFee(1, arg1);
                                            else:
                                                if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                                    balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                    balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                    emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                                    emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                                else:
                                                    balanceOf[address(arg1)] = 0
                                                    balanceOf[stor3] += balanceOf[address(arg1)]
                                                    emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                                    emit DemurringFee(balanceOf[address(arg1)], arg1);
                                            stor6[address(arg1)] = uint64(block.timestamp)
                    balanceOf[address(msg.sender)] -= arg2
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if balanceOf[address(msg.sender)] <= 0:
                        if balanceOf[address(arg1)] <= 0:
                            stor6[address(arg1)] = uint64(block.timestamp)
                        else:
                            if owner != arg1:
                                if transferFeeOwner != arg1:
                                    if demurringFeeOwner != arg1:
                                        if balanceOf[address(arg1)] > 0:
                                            if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                                require demurringFeeDenum
                                                if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                                    balanceOf[address(arg1)]--
                                                    balanceOf[stor3]++
                                                    emit Transfer(1, arg1, demurringFeeOwner);
                                                    emit DemurringFee(1, arg1);
                                                else:
                                                    if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                                        balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                        balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                        emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                                        emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                                    else:
                                                        balanceOf[address(arg1)] = 0
                                                        balanceOf[stor3] += balanceOf[address(arg1)]
                                                        emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                                        emit DemurringFee(balanceOf[address(arg1)], arg1);
                                                stor6[address(arg1)] = uint64(block.timestamp)
                        balanceOf[address(msg.sender)] -= arg2
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        require transferFeeDenum
                        if arg2 * transferFeeNum / transferFeeDenum < 1:
                            balanceOf[address(msg.sender)]--
                            balanceOf[stor4]++
                            emit Transfer(1, msg.sender, transferFeeOwner);
                            emit TransferFee(1, msg.sender);
                            if balanceOf[address(arg1)] <= 0:
                                stor6[address(arg1)] = uint64(block.timestamp)
                            else:
                                if owner != arg1:
                                    if transferFeeOwner != arg1:
                                        if demurringFeeOwner != arg1:
                                            if balanceOf[address(arg1)] > 0:
                                                if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                                    require demurringFeeDenum
                                                    if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                                        balanceOf[address(arg1)]--
                                                        balanceOf[stor3]++
                                                        emit Transfer(1, arg1, demurringFeeOwner);
                                                        emit DemurringFee(1, arg1);
                                                    else:
                                                        if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                                            balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                            balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                            emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                                            emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                                        else:
                                                            balanceOf[address(arg1)] = 0
                                                            balanceOf[stor3] += balanceOf[address(arg1)]
                                                            emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                                            emit DemurringFee(balanceOf[address(arg1)], arg1);
                                                    stor6[address(arg1)] = uint64(block.timestamp)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -arg2 + 1
                            balanceOf[arg1] = arg2 + balanceOf[arg1] - 1
                            emit Transfer((arg2 - 1), msg.sender, arg1);
                        else:
                            if arg2 * transferFeeNum / transferFeeDenum <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2 * transferFeeNum / transferFeeDenum
                                balanceOf[stor4] += arg2 * transferFeeNum / transferFeeDenum
                                emit Transfer((arg2 * transferFeeNum / transferFeeDenum), msg.sender, transferFeeOwner);
                                emit TransferFee((arg2 * transferFeeNum / transferFeeDenum), msg.sender);
                                if balanceOf[address(arg1)] <= 0:
                                    stor6[address(arg1)] = uint64(block.timestamp)
                                else:
                                    if owner != arg1:
                                        if transferFeeOwner != arg1:
                                            if demurringFeeOwner != arg1:
                                                if balanceOf[address(arg1)] > 0:
                                                    if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                                        require demurringFeeDenum
                                                        if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                                            balanceOf[address(arg1)]--
                                                            balanceOf[stor3]++
                                                            emit Transfer(1, arg1, demurringFeeOwner);
                                                            emit DemurringFee(1, arg1);
                                                        else:
                                                            if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                                                balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                                            else:
                                                                balanceOf[address(arg1)] = 0
                                                                balanceOf[stor3] += balanceOf[address(arg1)]
                                                                emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                                                emit DemurringFee(balanceOf[address(arg1)], arg1);
                                                        stor6[address(arg1)] = uint64(block.timestamp)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferFeeNum / transferFeeDenum)
                                balanceOf[arg1] = arg2 - (arg2 * transferFeeNum / transferFeeDenum) + balanceOf[arg1]
                                emit Transfer((arg2 - (arg2 * transferFeeNum / transferFeeDenum)), msg.sender, arg1);
                            else:
                                balanceOf[address(msg.sender)] = 0
                                balanceOf[stor4] += balanceOf[address(msg.sender)]
                                emit Transfer(balanceOf[address(msg.sender)], msg.sender, transferFeeOwner);
                                emit TransferFee(balanceOf[address(msg.sender)], msg.sender);
                                if balanceOf[address(arg1)] <= 0:
                                    stor6[address(arg1)] = uint64(block.timestamp)
                                else:
                                    if owner != arg1:
                                        if transferFeeOwner != arg1:
                                            if demurringFeeOwner != arg1:
                                                if balanceOf[address(arg1)] > 0:
                                                    if block.timestamp > uint64(stor6[address(arg1)] + 60):
                                                        require demurringFeeDenum
                                                        if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum < 1:
                                                            balanceOf[address(arg1)]--
                                                            balanceOf[stor3]++
                                                            emit Transfer(1, arg1, demurringFeeOwner);
                                                            emit DemurringFee(1, arg1);
                                                        else:
                                                            if demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum <= balanceOf[address(arg1)]:
                                                                balanceOf[address(arg1)] -= demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum
                                                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1, demurringFeeOwner);
                                                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg1)] / 60 * balanceOf[address(arg1)] / demurringFeeDenum), arg1);
                                                            else:
                                                                balanceOf[address(arg1)] = 0
                                                                balanceOf[stor3] += balanceOf[address(arg1)]
                                                                emit Transfer(balanceOf[address(arg1)], arg1, demurringFeeOwner);
                                                                emit DemurringFee(balanceOf[address(arg1)], arg1);
                                                        stor6[address(arg1)] = uint64(block.timestamp)
                                balanceOf[address(msg.sender)] = (2 * balanceOf[address(msg.sender)]) - arg2
                                balanceOf[arg1] = arg2 - balanceOf[address(msg.sender)] + balanceOf[arg1]
                                emit Transfer((arg2 - balanceOf[address(msg.sender)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 < 10:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if owner != msg.sender:
        if transferFeeOwner != msg.sender:
            if demurringFeeOwner != msg.sender:
                if balanceOf[address(msg.sender)] > 0:
                    if block.timestamp > uint64(stor6[address(msg.sender)] + 60):
                        require demurringFeeDenum
                        if demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum < 1:
                            balanceOf[address(msg.sender)]--
                            balanceOf[stor3]++
                            emit Transfer(1, msg.sender, demurringFeeOwner);
                            emit DemurringFee(1, msg.sender);
                        else:
                            if demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum
                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum
                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum), msg.sender, demurringFeeOwner);
                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(msg.sender)] / 60 * balanceOf[address(msg.sender)] / demurringFeeDenum), msg.sender);
                            else:
                                balanceOf[address(msg.sender)] = 0
                                balanceOf[stor3] += balanceOf[address(msg.sender)]
                                emit Transfer(balanceOf[address(msg.sender)], msg.sender, demurringFeeOwner);
                                emit DemurringFee(balanceOf[address(msg.sender)], msg.sender);
                        stor6[address(msg.sender)] = uint64(block.timestamp)
    if balanceOf[address(msg.sender)] >= arg3:
        if owner == msg.sender:
            if balanceOf[address(arg2)] <= 0:
                stor6[address(arg2)] = uint64(block.timestamp)
            else:
                if owner != arg2:
                    if transferFeeOwner != arg2:
                        if demurringFeeOwner != arg2:
                            if balanceOf[address(arg2)] > 0:
                                if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                    require demurringFeeDenum
                                    if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                        balanceOf[address(arg2)]--
                                        balanceOf[stor3]++
                                        emit Transfer(1, arg2, demurringFeeOwner);
                                        emit DemurringFee(1, arg2);
                                    else:
                                        if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                            balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                            balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                            emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                            emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                        else:
                                            balanceOf[address(arg2)] = 0
                                            balanceOf[stor3] += balanceOf[address(arg2)]
                                            emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                            emit DemurringFee(balanceOf[address(arg2)], arg2);
                                    stor6[address(arg2)] = uint64(block.timestamp)
            balanceOf[address(msg.sender)] -= arg3
            balanceOf[arg2] += arg3
            emit Transfer(arg3, msg.sender, arg2);
        else:
            if transferFeeOwner == msg.sender:
                if balanceOf[address(arg2)] <= 0:
                    stor6[address(arg2)] = uint64(block.timestamp)
                else:
                    if owner != arg2:
                        if transferFeeOwner != arg2:
                            if demurringFeeOwner != arg2:
                                if balanceOf[address(arg2)] > 0:
                                    if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                        require demurringFeeDenum
                                        if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                            balanceOf[address(arg2)]--
                                            balanceOf[stor3]++
                                            emit Transfer(1, arg2, demurringFeeOwner);
                                            emit DemurringFee(1, arg2);
                                        else:
                                            if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                                balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                            else:
                                                balanceOf[address(arg2)] = 0
                                                balanceOf[stor3] += balanceOf[address(arg2)]
                                                emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                                emit DemurringFee(balanceOf[address(arg2)], arg2);
                                        stor6[address(arg2)] = uint64(block.timestamp)
                balanceOf[address(msg.sender)] -= arg3
                balanceOf[arg2] += arg3
                emit Transfer(arg3, msg.sender, arg2);
            else:
                if demurringFeeOwner == msg.sender:
                    if balanceOf[address(arg2)] <= 0:
                        stor6[address(arg2)] = uint64(block.timestamp)
                    else:
                        if owner != arg2:
                            if transferFeeOwner != arg2:
                                if demurringFeeOwner != arg2:
                                    if balanceOf[address(arg2)] > 0:
                                        if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                            require demurringFeeDenum
                                            if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                                balanceOf[address(arg2)]--
                                                balanceOf[stor3]++
                                                emit Transfer(1, arg2, demurringFeeOwner);
                                                emit DemurringFee(1, arg2);
                                            else:
                                                if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                                    balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                    balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                    emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                                    emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                                else:
                                                    balanceOf[address(arg2)] = 0
                                                    balanceOf[stor3] += balanceOf[address(arg2)]
                                                    emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                                    emit DemurringFee(balanceOf[address(arg2)], arg2);
                                            stor6[address(arg2)] = uint64(block.timestamp)
                    balanceOf[address(msg.sender)] -= arg3
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, msg.sender, arg2);
                else:
                    if balanceOf[address(msg.sender)] <= 0:
                        if balanceOf[address(arg2)] <= 0:
                            stor6[address(arg2)] = uint64(block.timestamp)
                        else:
                            if owner != arg2:
                                if transferFeeOwner != arg2:
                                    if demurringFeeOwner != arg2:
                                        if balanceOf[address(arg2)] > 0:
                                            if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                                require demurringFeeDenum
                                                if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                                    balanceOf[address(arg2)]--
                                                    balanceOf[stor3]++
                                                    emit Transfer(1, arg2, demurringFeeOwner);
                                                    emit DemurringFee(1, arg2);
                                                else:
                                                    if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                                        balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                        balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                        emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                                        emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                                    else:
                                                        balanceOf[address(arg2)] = 0
                                                        balanceOf[stor3] += balanceOf[address(arg2)]
                                                        emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                                        emit DemurringFee(balanceOf[address(arg2)], arg2);
                                                stor6[address(arg2)] = uint64(block.timestamp)
                        balanceOf[address(msg.sender)] -= arg3
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, msg.sender, arg2);
                    else:
                        require transferFeeDenum
                        if arg3 * transferFeeNum / transferFeeDenum < 1:
                            balanceOf[address(msg.sender)]--
                            balanceOf[stor4]++
                            emit Transfer(1, msg.sender, transferFeeOwner);
                            emit TransferFee(1, msg.sender);
                            if balanceOf[address(arg2)] <= 0:
                                stor6[address(arg2)] = uint64(block.timestamp)
                            else:
                                if owner != arg2:
                                    if transferFeeOwner != arg2:
                                        if demurringFeeOwner != arg2:
                                            if balanceOf[address(arg2)] > 0:
                                                if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                                    require demurringFeeDenum
                                                    if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                                        balanceOf[address(arg2)]--
                                                        balanceOf[stor3]++
                                                        emit Transfer(1, arg2, demurringFeeOwner);
                                                        emit DemurringFee(1, arg2);
                                                    else:
                                                        if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                                            balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                            balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                            emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                                            emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                                        else:
                                                            balanceOf[address(arg2)] = 0
                                                            balanceOf[stor3] += balanceOf[address(arg2)]
                                                            emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                                            emit DemurringFee(balanceOf[address(arg2)], arg2);
                                                    stor6[address(arg2)] = uint64(block.timestamp)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -arg3 + 1
                            balanceOf[arg2] = arg3 + balanceOf[arg2] - 1
                            emit Transfer((arg3 - 1), msg.sender, arg2);
                        else:
                            if arg3 * transferFeeNum / transferFeeDenum <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg3 * transferFeeNum / transferFeeDenum
                                balanceOf[stor4] += arg3 * transferFeeNum / transferFeeDenum
                                emit Transfer((arg3 * transferFeeNum / transferFeeDenum), msg.sender, transferFeeOwner);
                                emit TransferFee((arg3 * transferFeeNum / transferFeeDenum), msg.sender);
                                if balanceOf[address(arg2)] <= 0:
                                    stor6[address(arg2)] = uint64(block.timestamp)
                                else:
                                    if owner != arg2:
                                        if transferFeeOwner != arg2:
                                            if demurringFeeOwner != arg2:
                                                if balanceOf[address(arg2)] > 0:
                                                    if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                                        require demurringFeeDenum
                                                        if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                                            balanceOf[address(arg2)]--
                                                            balanceOf[stor3]++
                                                            emit Transfer(1, arg2, demurringFeeOwner);
                                                            emit DemurringFee(1, arg2);
                                                        else:
                                                            if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                                                balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                                            else:
                                                                balanceOf[address(arg2)] = 0
                                                                balanceOf[stor3] += balanceOf[address(arg2)]
                                                                emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                                                emit DemurringFee(balanceOf[address(arg2)], arg2);
                                                        stor6[address(arg2)] = uint64(block.timestamp)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg3 + (arg3 * transferFeeNum / transferFeeDenum)
                                balanceOf[arg2] = arg3 - (arg3 * transferFeeNum / transferFeeDenum) + balanceOf[arg2]
                                emit Transfer((arg3 - (arg3 * transferFeeNum / transferFeeDenum)), msg.sender, arg2);
                            else:
                                balanceOf[address(msg.sender)] = 0
                                balanceOf[stor4] += balanceOf[address(msg.sender)]
                                emit Transfer(balanceOf[address(msg.sender)], msg.sender, transferFeeOwner);
                                emit TransferFee(balanceOf[address(msg.sender)], msg.sender);
                                if balanceOf[address(arg2)] <= 0:
                                    stor6[address(arg2)] = uint64(block.timestamp)
                                else:
                                    if owner != arg2:
                                        if transferFeeOwner != arg2:
                                            if demurringFeeOwner != arg2:
                                                if balanceOf[address(arg2)] > 0:
                                                    if block.timestamp > uint64(stor6[address(arg2)] + 60):
                                                        require demurringFeeDenum
                                                        if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum < 1:
                                                            balanceOf[address(arg2)]--
                                                            balanceOf[stor3]++
                                                            emit Transfer(1, arg2, demurringFeeOwner);
                                                            emit DemurringFee(1, arg2);
                                                        else:
                                                            if demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum <= balanceOf[address(arg2)]:
                                                                balanceOf[address(arg2)] -= demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                                balanceOf[stor3] += demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum
                                                                emit Transfer((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2, demurringFeeOwner);
                                                                emit DemurringFee((demurringFeeNum * block.timestamp - stor6[address(arg2)] / 60 * balanceOf[address(arg2)] / demurringFeeDenum), arg2);
                                                            else:
                                                                balanceOf[address(arg2)] = 0
                                                                balanceOf[stor3] += balanceOf[address(arg2)]
                                                                emit Transfer(balanceOf[address(arg2)], arg2, demurringFeeOwner);
                                                                emit DemurringFee(balanceOf[address(arg2)], arg2);
                                                        stor6[address(arg2)] = uint64(block.timestamp)
                                balanceOf[address(msg.sender)] = (2 * balanceOf[address(msg.sender)]) - arg3
                                balanceOf[arg2] = arg3 - balanceOf[address(msg.sender)] + balanceOf[arg2]
                                emit Transfer((arg3 - balanceOf[address(msg.sender)]), msg.sender, arg2);
    return 1
}



}
