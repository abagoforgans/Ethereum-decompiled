contract main {




// =====================  Runtime code  =====================


const name = 'IPCoin'

const decimals = 8

const nowInSeconds = block.timestamp

const symbol = 'IPC'


address stor1;
address stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 totalSupply;
uint256 totalDistributed;
uint256 totalRemaining;
uint256 value;
uint256 sub_35b873cd;
uint8 distributionClosed;

function sub_071187a2(?) {
    return bool(stor10[arg1])
}

function totalSupply() {
    return totalSupply
}

function distributionClosed() {
    return bool(distributionClosed)
}

function sub_35b873cd(?) {
    return sub_35b873cd
}

function value() {
    return value
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function sub_a04e1da4(?) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    require arg1 <= 100
    require arg1 >= 1
    sub_35b873cd = arg1
    return 1
}

function closeDistribution(bool arg1) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    distributionClosed = uint8(arg1)
    emit DistrClosed(arg1);
    return 1
}

function balanceOf(address arg1) {
    if distributionClosed:
        return stor3[address(arg1)]
    if stor10[address(arg1)]:
        return stor3[address(arg1)]
    return (stor3[address(arg1)] + value)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    if stor1 != msg.sender:
        require msg.sender == stor2
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    if arg1:
        if stor1 != arg1:
            if stor2 != arg1:
                if msg.sender == stor1:
                    stor1 = arg1
                if msg.sender == stor2:
                    stor2 = arg1
}

function freeze(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor1 != msg.sender:
        require msg.sender == stor2
    require 255 >= arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = arg2
        emit FrozenFunds(mem[(32 * arg1.length) + 128], arg2);
        idx = idx + 1
        continue 
}

function lockOf(address arg1) {
    idx = 1
    s = 0
    while uint8(idx) < stor5[address(arg1)] + 1:
        if block.timestamp < stor7[address(arg1)][idx << 248] + stor8[address(arg1)][idx << 248] + (24 * 3600):
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            s = stor6[address(arg1)][idx << 248] + s
            continue 
        require sub_35b873cd
        mem[0] = arg1
        mem[32] = 5
        if block.timestamp >= stor7[address(arg1)][idx << 248] + stor8[address(arg1)][idx << 248] + (24 * 3600 * 100 / sub_35b873cd):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + (block.timestamp - stor7[address(arg1)][idx << 248] - stor8[address(arg1)][idx << 248] / 24 * 3600 * stor6[address(arg1)][idx << 248] * sub_35b873cd / 100)
        continue 
    return s
}

function getTokens() payable {
    if not distributionClosed:
        if value > totalRemaining:
            value = totalRemaining
            revert
        if not stor10[address(msg.sender)]:
            require value + totalDistributed >= totalDistributed
            totalDistributed += value
            require value <= totalRemaining
            totalRemaining -= value
            require value + stor3[address(msg.sender)] >= stor3[address(msg.sender)]
            stor3[address(msg.sender)] += value
            stor5[address(msg.sender)]++
            stor7[address(msg.sender)][stor5[address(msg.sender)] + 1] = block.timestamp
            stor8[address(msg.sender)][stor5[address(msg.sender)]] = 4320 * 24 * 3600
            stor6[address(msg.sender)][stor5[address(msg.sender)]] = value
            stor10[address(msg.sender)] = 1
            if totalDistributed >= totalSupply:
                distributionClosed = 1
            emit Distr(value, msg.sender);
            emit Transfer(value, 0, msg.sender);
}

function _fallback() payable {
    if not distributionClosed:
        if value > totalRemaining:
            value = totalRemaining
            revert
        if not stor10[address(msg.sender)]:
            require value + totalDistributed >= totalDistributed
            totalDistributed += value
            require value <= totalRemaining
            totalRemaining -= value
            require value + stor3[address(msg.sender)] >= stor3[address(msg.sender)]
            stor3[address(msg.sender)] += value
            stor5[address(msg.sender)]++
            stor7[address(msg.sender)][stor5[address(msg.sender)] + 1] = block.timestamp
            stor8[address(msg.sender)][stor5[address(msg.sender)]] = 4320 * 24 * 3600
            stor6[address(msg.sender)][stor5[address(msg.sender)]] = value
            stor10[address(msg.sender)] = 1
            if totalDistributed >= totalSupply:
                distributionClosed = 1
            emit Distr(value, msg.sender);
            emit Transfer(value, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    idx = 1
    s = 0
    while uint8(idx) < stor5[address(msg.sender)] + 1:
        if block.timestamp < stor7[address(msg.sender)][idx << 248] + stor8[address(msg.sender)][idx << 248] + (24 * 3600):
            mem[0] = msg.sender
            mem[32] = 5
            idx = idx + 1
            s = stor6[address(msg.sender)][idx << 248] + s
            continue 
        require sub_35b873cd
        mem[0] = msg.sender
        mem[32] = 5
        if block.timestamp >= stor7[address(msg.sender)][idx << 248] + stor8[address(msg.sender)][idx << 248] + (24 * 3600 * 100 / sub_35b873cd):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + (block.timestamp - stor7[address(msg.sender)][idx << 248] - stor8[address(msg.sender)][idx << 248] / 24 * 3600 * stor6[address(msg.sender)][idx << 248] * sub_35b873cd / 100)
        continue 
    require arg2 <= stor3[msg.sender] - s
    require not stor9[msg.sender]
    require not stor9[address(arg1)]
    require arg2 <= stor3[msg.sender]
    stor3[msg.sender] -= arg2
    require arg2 + stor3[arg1] >= stor3[arg1]
    stor3[address(arg1)] = arg2 + stor3[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= stor3[address(arg1)]
    idx = 1
    s = 0
    while uint8(idx) < stor5[address(msg.sender)] + 1:
        if block.timestamp < stor7[address(msg.sender)][idx << 248] + stor8[address(msg.sender)][idx << 248] + (24 * 3600):
            mem[0] = msg.sender
            mem[32] = 5
            idx = idx + 1
            s = stor6[address(msg.sender)][idx << 248] + s
            continue 
        require sub_35b873cd
        mem[0] = msg.sender
        mem[32] = 5
        if block.timestamp >= stor7[address(msg.sender)][idx << 248] + stor8[address(msg.sender)][idx << 248] + (24 * 3600 * 100 / sub_35b873cd):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + (block.timestamp - stor7[address(msg.sender)][idx << 248] - stor8[address(msg.sender)][idx << 248] / 24 * 3600 * stor6[address(msg.sender)][idx << 248] * sub_35b873cd / 100)
        continue 
    require arg3 <= allowance[address(arg1)][msg.sender] - s
    require arg3 <= stor3[address(arg1)]
    stor3[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + stor3[address(arg2)] >= stor3[address(arg2)]
    stor3[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f72df651(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == stor1:
        require 255 >= arg1.length
        require arg1.length == arg2.length
        idx = 0
        while uint8(idx) < arg1.length:
            require uint8(idx) < arg2.length
            require mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] * stor11 <= totalRemaining
            require uint8(idx) < arg1.length
            _163 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg2.length
            _167 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            if mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11 > totalRemaining:
                require totalRemaining + totalDistributed >= totalDistributed
                totalDistributed += totalRemaining
                require totalRemaining <= totalRemaining
                totalRemaining = 0
                require totalRemaining + stor3[mem[(32 * uint8(idx)) + 140 len 20]] >= stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                mem[32] = 3
                stor3[address(mem[(32 * uint8(idx)) + 128])] = totalRemaining + stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                if arg3 <= 0:
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    emit Distr(totalRemaining, mem[(32 * uint8(idx)) + 140 len 20]);
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = totalRemaining
                    mem[0] = address(_163)
                else:
                    _197 = sha3(address(mem[(32 * uint8(idx)) + 128]), 5)
                    stor5[address(mem[(32 * uint8(idx)) + 128])]++
                    stor7[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])] + 1] = block.timestamp
                    stor8[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = 24 * 3600 * arg3
                    mem[32] = sha3(address(mem[(32 * uint8(idx)) + 128]), 6)
                    stor6[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = totalRemaining
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    emit Distr(totalRemaining, mem[(32 * uint8(idx)) + 140 len 20]);
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = totalRemaining
                    mem[0] = stor[_197]
                emit Transfer(totalRemaining, 0, address(_163));
            else:
                require (mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11) + totalDistributed >= totalDistributed
                totalDistributed += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11 <= totalRemaining
                totalRemaining += -1 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                require (mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11) + stor3[mem[(32 * uint8(idx)) + 140 len 20]] >= stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                mem[32] = 3
                stor3[address(mem[(32 * uint8(idx)) + 128])] = (mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11) + stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                if arg3 <= 0:
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                    emit Distr(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_163));
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _167 * stor11
                    mem[0] = address(_163)
                else:
                    _175 = sha3(address(mem[(32 * uint8(idx)) + 128]), 5)
                    stor5[address(mem[(32 * uint8(idx)) + 128])]++
                    stor7[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])] + 1] = block.timestamp
                    stor8[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = 24 * 3600 * arg3
                    mem[32] = sha3(address(mem[(32 * uint8(idx)) + 128]), 6)
                    stor6[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                    emit Distr(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_163));
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _167 * stor11
                    mem[0] = stor[_175]
                emit Transfer((_167 * stor11), 0, address(_163));
            idx = idx + 1
            continue 
    else:
        require msg.sender == stor2
        require 255 >= arg1.length
        require arg1.length == arg2.length
        idx = 0
        while uint8(idx) < arg1.length:
            require uint8(idx) < arg2.length
            require mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] * stor11 <= totalRemaining
            require uint8(idx) < arg1.length
            _165 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg2.length
            _168 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            if mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11 > totalRemaining:
                require totalRemaining + totalDistributed >= totalDistributed
                totalDistributed += totalRemaining
                require totalRemaining <= totalRemaining
                totalRemaining = 0
                require totalRemaining + stor3[mem[(32 * uint8(idx)) + 140 len 20]] >= stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                mem[32] = 3
                stor3[address(mem[(32 * uint8(idx)) + 128])] = totalRemaining + stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                if arg3 <= 0:
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    emit Distr(totalRemaining, mem[(32 * uint8(idx)) + 140 len 20]);
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = totalRemaining
                    mem[0] = address(_165)
                else:
                    _210 = sha3(address(mem[(32 * uint8(idx)) + 128]), 5)
                    stor5[address(mem[(32 * uint8(idx)) + 128])]++
                    stor7[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])] + 1] = block.timestamp
                    stor8[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = 24 * 3600 * arg3
                    mem[32] = sha3(address(mem[(32 * uint8(idx)) + 128]), 6)
                    stor6[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = totalRemaining
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    emit Distr(totalRemaining, mem[(32 * uint8(idx)) + 140 len 20]);
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = totalRemaining
                    mem[0] = stor[_210]
                emit Transfer(totalRemaining, 0, address(_165));
            else:
                require (mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11) + totalDistributed >= totalDistributed
                totalDistributed += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11 <= totalRemaining
                totalRemaining += -1 * mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                require (mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11) + stor3[mem[(32 * uint8(idx)) + 140 len 20]] >= stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                mem[32] = 3
                stor3[address(mem[(32 * uint8(idx)) + 128])] = (mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11) + stor3[mem[(32 * uint8(idx)) + 140 len 20]]
                if arg3 <= 0:
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                    emit Distr(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_165));
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _168 * stor11
                    mem[0] = address(_165)
                else:
                    _183 = sha3(address(mem[(32 * uint8(idx)) + 128]), 5)
                    stor5[address(mem[(32 * uint8(idx)) + 128])]++
                    stor7[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])] + 1] = block.timestamp
                    stor8[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = 24 * 3600 * arg3
                    mem[32] = sha3(address(mem[(32 * uint8(idx)) + 128]), 6)
                    stor6[address(mem[(32 * uint8(idx)) + 128])][stor5[address(mem[(32 * uint8(idx)) + 128])]] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                    if totalDistributed >= totalSupply:
                        distributionClosed = 1
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] * stor11
                    emit Distr(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_165));
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _168 * stor11
                    mem[0] = stor[_183]
                emit Transfer((_168 * stor11), 0, address(_165));
            idx = idx + 1
            continue 
}



}
