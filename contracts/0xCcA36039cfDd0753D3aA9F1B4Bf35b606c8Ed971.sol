contract main {




// =====================  Runtime code  =====================


const sub_90497c66(?) = 100000 * 10^18


address stor0;
address owner;
address sub_7db02c8bAddress;
address developmentFundAddress;
uint256 start;
mapping of uint256 totalWeiContributed;

function getTotalWeiContributed(uint16 arg1) {
    return totalWeiContributed[arg1 << 240]
}

function sub_7db02c8b(?) {
    return sub_7db02c8bAddress
}

function developmentFund() {
    return developmentFundAddress
}

function owner() {
    return owner
}

function sub_bd7255b0(?) {
    return totalWeiContributed[arg1]
}

function start() {
    return start
}

function getWeiContributed(uint16 arg1, address arg2) {
    return totalWeiContributed[arg1 << 240][1][address(arg2)]
}

function duringSale(uint16 arg1) {
    if start <= 0:
        return (start > 0)
    return arg1 <= 364
}

function dayFor(uint256 arg1) {
    require arg1 >= start
    require start <= arg1
    return uint16(arg1 - start / 24 * 3600)
}

function currentDay() {
    require block.timestamp >= start
    require start <= block.timestamp
    return uint16(block.timestamp - start / 24 * 3600)
}

function dayFinished(uint16 arg1) {
    if block.timestamp <= start:
        return 0
    require block.timestamp >= start
    require start <= block.timestamp
    return (uint16(block.timestamp - start / 24 * 3600) > arg1)
}

function foundationWithdraw(uint256 arg1) {
    require msg.sender == owner
    if not arg1 / 2:
        require 0 == arg1
    else:
        require Mask(255, 1, arg1) / arg1 / 2 == 2
        require Mask(255, 1, arg1) == arg1
    call sub_7db02c8bAddress with:
       value arg1 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call developmentFundAddress with:
       value arg1 / 2 wei
         gas 2300 * is_zero(value) wei
    require block.timestamp >= start
    require start <= block.timestamp
    emit LogFoundationWithdraw(msg.sender, arg1, uint16(block.timestamp - start / 24 * 3600));
    return 1
}

function startSale(uint256 arg1) {
    require msg.sender == owner
    if start:
        revert with 0, 'Already started'
    if arg1 < block.timestamp:
        revert with 0, 'Start time not in range'
    require block.timestamp <= arg1
    if arg1 - block.timestamp >= 720 * 24 * 3600:
        revert with 0, 'Start time not in range'
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 36500000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    start = arg1
    emit LogSaleStarted(msg.sender, sub_7db02c8bAddress, developmentFundAddress, 36500000 * 10^18, arg1);
    return 1
}

function fund(uint16 arg1) payable {
    if msg.value <= 0:
        revert with 0, 'must send ether with the call'
    if start <= 0:
        revert with 0, 'day is not during the sale'
    if arg1 > 364:
        revert with 0, 'day is not during the sale'
    if block.timestamp > start:
        require block.timestamp >= start
        require start <= block.timestamp
        if uint16(block.timestamp - start / 24 * 3600) > arg1:
            revert with 0, 'day has already finished'
    require msg.value + totalWeiContributed[arg1 << 240] >= totalWeiContributed[arg1 << 240]
    totalWeiContributed[arg1 << 240] += msg.value
    require msg.value + totalWeiContributed[arg1 << 240][1][address(msg.sender)] >= totalWeiContributed[arg1 << 240][1][address(msg.sender)]
    totalWeiContributed[arg1 << 240][1][address(msg.sender)] += msg.value
    emit LogTokensPurchased(msg.value, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require block.timestamp >= start
    require start <= block.timestamp
    if msg.value <= 0:
        revert with 0, 'must send ether with the call'
    if start <= 0:
        revert with 0, 'day is not during the sale'
    if uint16(block.timestamp - start / 24 * 3600) > 364:
        revert with 0, 'day is not during the sale'
    if block.timestamp > start:
        require block.timestamp >= start
        require start <= block.timestamp
        if uint16(block.timestamp - start / 24 * 3600) > uint16(block.timestamp - start / 24 * 3600):
            revert with 0, 'day has already finished'
    require msg.value + totalWeiContributed[block.timestamp - stor4 / 24 * 3600 << 240] >= totalWeiContributed[block.timestamp - stor4 / 24 * 3600 << 240]
    totalWeiContributed[block.timestamp - stor4 / 24 * 3600 << 240] += msg.value
    require msg.value + totalWeiContributed[block.timestamp - stor4 / 24 * 3600 << 240][1][address(msg.sender)] >= totalWeiContributed[block.timestamp - stor4 / 24 * 3600 << 240][1][address(msg.sender)]
    totalWeiContributed[block.timestamp - stor4 / 24 * 3600 << 240][1][address(msg.sender)] += msg.value
    emit LogTokensPurchased(msg.value, msg.sender, uint16(block.timestamp - start / 24 * 3600));
}

function getTokensOwed(address arg1, uint16 arg2) {
    require block.timestamp > start
    require block.timestamp >= start
    require start <= block.timestamp
    require uint16(block.timestamp - start / 24 * 3600) > arg2
    if not totalWeiContributed[arg2 << 240][1][address(arg1)]:
        if totalWeiContributed[arg2 << 240]:
            if not 0 / totalWeiContributed[arg2 << 240]:
                return 0
            if 100000 * 10^18 * 0 / totalWeiContributed[arg2 << 240] / 0 / totalWeiContributed[arg2 << 240] == 100000 * 10^18:
                return (100000 * 10^18 * 0 / totalWeiContributed[arg2 << 240] / 100000000000000 * 10^18)
    else:
        if 100000000000000 * 10^18 * totalWeiContributed[arg2 << 240][1][address(arg1)] / totalWeiContributed[arg2 << 240][1][address(arg1)] == 100000000000000 * 10^18:
            if totalWeiContributed[arg2 << 240]:
                if not 100000000000000 * 10^18 * totalWeiContributed[arg2 << 240][1][address(arg1)] / totalWeiContributed[arg2 << 240]:
                    return 0
                if 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[arg2 << 240][1][address(arg1)] / totalWeiContributed[arg2 << 240] / 100000000000000 * 10^18 * totalWeiContributed[arg2 << 240][1][address(arg1)] / totalWeiContributed[arg2 << 240] == 100000 * 10^18:
                    return (100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[arg2 << 240][1][address(arg1)] / totalWeiContributed[arg2 << 240] / 100000000000000 * 10^18)
    revert
}

function batchFund(uint16[] arg1) payable {
    require arg1.length <= 50
    require arg1.length <= msg.value
    require arg1.length
    if not msg.value / arg1.length:
        require 0 == msg.value
    else:
        require arg1.length * msg.value / arg1.length / msg.value / arg1.length == arg1.length
        require arg1.length * msg.value / arg1.length == msg.value
    idx = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg1.length
        if msg.value / arg1.length <= 0:
            revert with 0, 'must send ether with the call'
        if start <= 0:
            revert with 0, 'day is not during the sale'
        if uint16(cd[((32 * uint8(idx)) + arg1 + 36)]) > 364:
            revert with 0, 'day is not during the sale'
        if block.timestamp > start:
            require block.timestamp >= start
            require start <= block.timestamp
            if uint16(block.timestamp - start / 24 * 3600) > uint16(cd[((32 * uint8(idx)) + arg1 + 36)]):
                revert with 0, 'day has already finished'
        require (msg.value / arg1.length) + totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] >= totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240]
        totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] += msg.value / arg1.length
        require (msg.value / arg1.length) + totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] >= totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)] << 240, 5) + 1
        totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] += msg.value / arg1.length
        mem[96] = msg.value / arg1.length
        emit LogTokensPurchased((msg.value / arg1.length), msg.sender, uint16(cd[((32 * uint8(idx)) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function getTotalTokensOwed(address arg1, uint16[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length < 100
    idx = 0
    while uint16(idx) < arg2.length:
        require uint16(idx) < arg2.length
        require block.timestamp > start
        require block.timestamp >= start
        require start <= block.timestamp
        require uint16(block.timestamp - start / 24 * 3600) > mem[(32 * uint16(idx)) + 158 len 2]
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * uint16(idx)) + 158 len 2], 5) + 1
        if not totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)]:
            if totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]]:
                if not 0 / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]]:
                    idx = idx + 1
                    continue 
                if 100000 * 10^18 * 0 / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]] / 0 / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]] == 100000 * 10^18:
                    if 100000 * 10^18 * 0 / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]] / 100000000000000 * 10^18 >= 0:
                        idx = idx + 1
                        continue 
        else:
            if 100000000000000 * 10^18 * totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)] / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)] == 100000000000000 * 10^18:
                if totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]]:
                    if not 100000000000000 * 10^18 * totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)] / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]]:
                        idx = idx + 1
                        continue 
                    if 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)] / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]] / 100000000000000 * 10^18 * totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)] / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]] == 100000 * 10^18:
                        if 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]][1][address(arg1)] / totalWeiContributed[mem[(32 * uint16(idx)) + 158 len 2]] / 100000000000000 * 10^18 >= 0:
                            idx = idx + 1
                            continue 
        revert
    return 0
}

function withdraw(uint16 arg1) {
    if block.timestamp <= start:
        revert with 0, 'day has not finished funding'
    require block.timestamp >= start
    require start <= block.timestamp
    if uint16(block.timestamp - start / 24 * 3600) <= arg1:
        revert with 0, 'day has not finished funding'
    require block.timestamp > start
    require block.timestamp >= start
    require start <= block.timestamp
    require uint16(block.timestamp - start / 24 * 3600) > arg1
    if not totalWeiContributed[arg1 << 240][1][address(msg.sender)]:
        require totalWeiContributed[arg1 << 240]
        if not 0 / totalWeiContributed[arg1 << 240]:
            totalWeiContributed[arg1 << 240][1][msg.sender] = 0
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit LogTokensCollected(0, msg.sender, arg1);
        else:
            require 100000 * 10^18 * 0 / totalWeiContributed[arg1 << 240] / 0 / totalWeiContributed[arg1 << 240] == 100000 * 10^18
            totalWeiContributed[arg1 << 240][1][msg.sender] = 0
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 100000 * 10^18 * 0 / totalWeiContributed[arg1 << 240] / 100000000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit LogTokensCollected((100000 * 10^18 * 0 / totalWeiContributed[arg1 << 240] / 100000000000000 * 10^18), msg.sender, arg1);
    else:
        require 100000000000000 * 10^18 * totalWeiContributed[arg1 << 240][1][address(msg.sender)] / totalWeiContributed[arg1 << 240][1][address(msg.sender)] == 100000000000000 * 10^18
        require totalWeiContributed[arg1 << 240]
        if not 100000000000000 * 10^18 * totalWeiContributed[arg1 << 240][1][address(msg.sender)] / totalWeiContributed[arg1 << 240]:
            totalWeiContributed[arg1 << 240][1][msg.sender] = 0
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit LogTokensCollected(0, msg.sender, arg1);
        else:
            require 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[arg1 << 240][1][address(msg.sender)] / totalWeiContributed[arg1 << 240] / 100000000000000 * 10^18 * totalWeiContributed[arg1 << 240][1][address(msg.sender)] / totalWeiContributed[arg1 << 240] == 100000 * 10^18
            totalWeiContributed[arg1 << 240][1][msg.sender] = 0
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[arg1 << 240][1][address(msg.sender)] / totalWeiContributed[arg1 << 240] / 100000000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit LogTokensCollected((100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[arg1 << 240][1][address(msg.sender)] / totalWeiContributed[arg1 << 240] / 100000000000000 * 10^18), msg.sender, arg1);
    return 1
}

function batchWithdraw(uint16[] arg1) {
    require arg1.length <= 50
    idx = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg1.length
        require block.timestamp > start
        require block.timestamp >= start
        require start <= block.timestamp
        require uint16(block.timestamp - start / 24 * 3600) > uint16(cd[((32 * uint8(idx)) + arg1 + 36)])
        require uint8(idx) < arg1.length
        require block.timestamp > start
        require block.timestamp >= start
        require start <= block.timestamp
        require uint16(block.timestamp - start / 24 * 3600) > uint16(cd[((32 * uint8(idx)) + arg1 + 36)])
        if not totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)]:
            require totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240]
            if not 0 / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240]:
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)] << 240, 5) + 1
                totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][msg.sender] = 0
                mem[96] = 0
                emit LogTokensCollected(0, msg.sender, uint16(cd[((32 * uint8(idx)) + arg1 + 36)]));
            else:
                require 100000 * 10^18 * 0 / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 0 / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] == 100000 * 10^18
                require 100000 * 10^18 * 0 / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18 >= 0
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)] << 240, 5) + 1
                totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][msg.sender] = 0
                mem[96] = 100000 * 10^18 * 0 / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18
                emit LogTokensCollected((100000 * 10^18 * 0 / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18), msg.sender, uint16(cd[((32 * uint8(idx)) + arg1 + 36)]));
        else:
            require 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] == 100000000000000 * 10^18
            require totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240]
            if not 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240]:
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)] << 240, 5) + 1
                totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][msg.sender] = 0
                mem[96] = 0
                emit LogTokensCollected(0, msg.sender, uint16(cd[((32 * uint8(idx)) + arg1 + 36)]));
            else:
                require 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] == 100000 * 10^18
                require 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18 >= 0
                require uint8(idx) < arg1.length
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * uint8(idx)) + arg1 + 36)] << 240, 5) + 1
                totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][msg.sender] = 0
                mem[96] = 100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18
                emit LogTokensCollected((100000 * 10^18 * 100000000000000 * 10^18 * totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240][1][address(msg.sender)] / totalWeiContributed[cd[((32 * uint8(idx)) + arg1 + 36)] << 240] / 100000000000000 * 10^18), msg.sender, uint16(cd[((32 * uint8(idx)) + arg1 + 36)]));
        idx = idx + 1
        continue 
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
