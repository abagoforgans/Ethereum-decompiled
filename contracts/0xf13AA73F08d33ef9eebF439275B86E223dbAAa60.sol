contract main {




// =====================  Runtime code  =====================


const name = 'OZTXTOKEN'

const decimals = 18

const elapsedMonthsFromICOStart = (block.timestamp - (424046 * 3600) / 60 / 12 * 3600)

const getStartIcoTimestamp = (424046 * 3600)

const getBlockTimestamp = block.timestamp

const lagDefrost = 3

const symbol = 'OZTX'

const sub_97d03062(?) = 730000000 * 10^18

const getDefrostFactor = 20

const START_ICO_TIMESTAMP = (424046 * 3600)

const DEFROST_FACTOR = 20

const DEFROST_MONTHS = 3

const DEFROST_MONTH_IN_MINUTES = (12 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 stor3;
array of address sub_3f7b7380;
mapping of uint256 sub_22a02661;
mapping of uint256 sub_81325e54;
uint256 assignedSupply;
uint8 stor8;
uint8 stor8; offset 8
address stor10;

function batchAssignStopped() {
    return bool(uint8(stor8.field_0))
}

function totalSupply() {
    return totalSupply
}

function sub_22a02661(?) {
    return sub_22a02661[arg1]
}

function getAddressBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_3f7b7380(?) {
    require arg1 < sub_3f7b7380.length
    return sub_3f7b7380[arg1]
}

function getAssignedSupply() {
    return assignedSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_81325e54(?) {
    return sub_81325e54[arg1]
}

function owner() {
    return address(owner)
}

function assignedSupply() {
    return assignedSupply
}

function stopDefrost() {
    return bool(uint8(stor8.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function killContract() {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function _fallback() payable {
    revert
}

function setDefroster(address arg1) {
    require msg.sender == address(owner)
    stor10 = arg1
}

function getAddressAndBalance(address arg1) {
    return address(arg1), balanceOf[address(arg1)]
}

function setStopDefrost() {
    require msg.sender == address(owner)
    uint8(stor8.field_8) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    require arg1
    address(owner) = arg1
}

function stopBatchAssign() {
    require msg.sender == address(owner)
    require not uint8(stor8.field_0)
    uint8(stor8.field_0) = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function canDefrost() {
    if block.timestamp - (424046 * 3600) / 60 / 12 * 3600 <= 3:
        return (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 > 3)
    return block.timestamp - (424046 * 3600) / 60 / 12 * 3600 <= 14
}

function sub_89af7740(?) {
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    assignedSupply = 0
    totalSupply = 730000000 * 10^18
    balanceOf[msg.sender] = 730000000 * 10^18
    emit Transfer(730000000 * 10^18, 0, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchAssignTokens(address[] arg1, uint256[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == address(owner)
    require not uint8(stor8.field_0)
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _35 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _37 = mem[(32 * arg1.length) + (32 * idx) + 160]
        if not mem[(32 * arg1.length) + (32 * idx) + 160]:
            require idx < arg3.length
            _39 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            if mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] != 0:
                if 1 == mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]:
                    sub_3f7b7380.length++
                    sub_3f7b7380[sub_3f7b7380.length] = mem[(32 * idx) + 140 len 20]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    sub_22a02661[mem[(32 * idx) + 140 len 20]] = 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
                    mem[32] = 6
                    sub_81325e54[mem[(32 * idx) + 140 len 20]] = 0
                    require (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + assignedSupply >= assignedSupply
                    assignedSupply += 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
                s = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                s = 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            require mem[(32 * idx) + 140 len 20]
            require 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[msg.sender]
            balanceOf[msg.sender] += -1 * 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
            require (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[address(mem[(32 * idx) + 128])] = (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
            emit Transfer(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192], msg.sender, address(_35));
            require (10^18 * _37) + assignedSupply >= assignedSupply
            assignedSupply += 10^18 * _37
            s = _39
            s = 10^18 * _37
            s = _35
            idx = idx + 1
            continue 
        require mem[(32 * arg1.length) + (32 * idx) + 160]
        require 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160] / mem[(32 * arg1.length) + (32 * idx) + 160] == 10^18
        require idx < arg3.length
        _43 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        if mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] != 0:
            if 1 == mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]:
                sub_3f7b7380.length++
                sub_3f7b7380[sub_3f7b7380.length] = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                sub_22a02661[mem[(32 * idx) + 140 len 20]] = 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[32] = 6
                sub_81325e54[mem[(32 * idx) + 140 len 20]] = 0
                require (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + assignedSupply >= assignedSupply
                assignedSupply += 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
            s = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            s = 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        require mem[(32 * idx) + 140 len 20]
        require 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[msg.sender]
        balanceOf[msg.sender] += -1 * 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
        require (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * idx) + 128])] = (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = 10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]
        emit Transfer(mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192], msg.sender, address(_35));
        require (10^18 * _37) + assignedSupply >= assignedSupply
        assignedSupply += 10^18 * _37
        s = _43
        s = 10^18 * _37
        s = _35
        idx = idx + 1
        continue 
}

function defrostTokens(uint256 arg1, uint256 arg2) {
    if stor10 != msg.sender:
        require msg.sender == address(owner)
    require block.timestamp > 424046 * 3600
    require not uint8(stor8.field_8)
    require arg1 >= 0
    require arg2 <= sub_3f7b7380.length
    require (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 3 > 0
    if block.timestamp - (424046 * 3600) / 60 / 12 * 3600 <= 3:
        require 1 == block.timestamp - (424046 * 3600) / 60 / 12 * 3600 > 3
    else:
        require 1 == block.timestamp - (424046 * 3600) / 60 / 12 * 3600 <= 14
    if arg1:
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        idx = arg1
        while idx < arg2:
            require idx < sub_3f7b7380.length
            require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] >= sub_22a02661[stor4[idx]]
            if 1 == (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 3:
                if sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20:
                    require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 / sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 == 10
                mem[0] = sub_3f7b7380[idx]
                mem[32] = 6
                require sub_81325e54[stor4[idx]] <= 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] > 0:
                    if 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 > 0:
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] <= sub_22a02661[stor4[idx]]
                        sub_22a02661[stor4[idx]] = sub_22a02661[stor4[idx]] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + sub_81325e54[stor4[idx]]
                        require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 >= sub_81325e54[stor4[idx]]
                        sub_81325e54[stor4[idx]] = 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                        require sub_3f7b7380[idx]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] <= balanceOf[msg.sender]
                        balanceOf[msg.sender] = balanceOf[msg.sender] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + sub_81325e54[stor4[idx]]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]] >= balanceOf[stor4[idx]]
                        mem[0] = sub_3f7b7380[idx]
                        mem[32] = 1
                        balanceOf[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]]
                        mem[96] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]
                        emit Transfer(((10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]), msg.sender, sub_3f7b7380[idx]);
                s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]
                s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                s = 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                s = sub_3f7b7380[idx]
                idx = idx + 1
                continue 
            if (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4:
                require (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4
                require (-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4 == sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
            if sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20:
                require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 / sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 == 10
            mem[0] = sub_3f7b7380[idx]
            mem[32] = 6
            require sub_81325e54[stor4[idx]] <= (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
            if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] > 0:
                if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) > 0:
                    require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] <= sub_22a02661[stor4[idx]]
                    sub_22a02661[stor4[idx]] = sub_22a02661[stor4[idx]] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) + sub_81325e54[stor4[idx]]
                    require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) >= sub_81325e54[stor4[idx]]
                    sub_81325e54[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                    require sub_3f7b7380[idx]
                    require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] <= balanceOf[msg.sender]
                    balanceOf[msg.sender] = balanceOf[msg.sender] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) + sub_81325e54[stor4[idx]]
                    require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]] >= balanceOf[stor4[idx]]
                    mem[0] = sub_3f7b7380[idx]
                    mem[32] = 1
                    balanceOf[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]]
                    mem[96] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]
                    emit Transfer(((10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]), msg.sender, sub_3f7b7380[idx]);
            s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]
            s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
            s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
            s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
            s = sub_3f7b7380[idx]
            idx = idx + 1
            continue 
    else:
        if arg2:
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            idx = arg1
            while idx < arg2:
                require idx < sub_3f7b7380.length
                require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] >= sub_22a02661[stor4[idx]]
                if 1 == (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 3:
                    if sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20:
                        require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                        require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 / sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 == 10
                    mem[0] = sub_3f7b7380[idx]
                    mem[32] = 6
                    require sub_81325e54[stor4[idx]] <= 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] > 0:
                        if 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 > 0:
                            require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] <= sub_22a02661[stor4[idx]]
                            sub_22a02661[stor4[idx]] = sub_22a02661[stor4[idx]] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + sub_81325e54[stor4[idx]]
                            require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 >= sub_81325e54[stor4[idx]]
                            sub_81325e54[stor4[idx]] = 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                            require sub_3f7b7380[idx]
                            require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] <= balanceOf[msg.sender]
                            balanceOf[msg.sender] = balanceOf[msg.sender] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + sub_81325e54[stor4[idx]]
                            require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]] >= balanceOf[stor4[idx]]
                            mem[0] = sub_3f7b7380[idx]
                            mem[32] = 1
                            balanceOf[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]]
                            mem[96] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]
                            emit Transfer(((10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]), msg.sender, sub_3f7b7380[idx]);
                    s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]
                    s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    s = 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                    s = sub_3f7b7380[idx]
                    idx = idx + 1
                    continue 
                if (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4:
                    require (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4
                    require (-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4 == sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                if sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20:
                    require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 / sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 == 10
                mem[0] = sub_3f7b7380[idx]
                mem[32] = 6
                require sub_81325e54[stor4[idx]] <= (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] > 0:
                    if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) > 0:
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] <= sub_22a02661[stor4[idx]]
                        sub_22a02661[stor4[idx]] = sub_22a02661[stor4[idx]] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) + sub_81325e54[stor4[idx]]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) >= sub_81325e54[stor4[idx]]
                        sub_81325e54[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                        require sub_3f7b7380[idx]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] <= balanceOf[msg.sender]
                        balanceOf[msg.sender] = balanceOf[msg.sender] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) + sub_81325e54[stor4[idx]]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]] >= balanceOf[stor4[idx]]
                        mem[0] = sub_3f7b7380[idx]
                        mem[32] = 1
                        balanceOf[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]]
                        mem[96] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]
                        emit Transfer(((10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]), msg.sender, sub_3f7b7380[idx]);
                s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]
                s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                s = sub_3f7b7380[idx]
                idx = idx + 1
                continue 
        else:
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < sub_3f7b7380.length:
                require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] >= sub_22a02661[stor4[idx]]
                if 1 == (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 3:
                    if sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20:
                        require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                        require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 / sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 == 10
                    mem[0] = sub_3f7b7380[idx]
                    mem[32] = 6
                    require sub_81325e54[stor4[idx]] <= 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] > 0:
                        if 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 > 0:
                            require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] <= sub_22a02661[stor4[idx]]
                            sub_22a02661[stor4[idx]] = sub_22a02661[stor4[idx]] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + sub_81325e54[stor4[idx]]
                            require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 >= sub_81325e54[stor4[idx]]
                            sub_81325e54[stor4[idx]] = 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                            require sub_3f7b7380[idx]
                            require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] <= balanceOf[msg.sender]
                            balanceOf[msg.sender] = balanceOf[msg.sender] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + sub_81325e54[stor4[idx]]
                            require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]] >= balanceOf[stor4[idx]]
                            mem[0] = sub_3f7b7380[idx]
                            mem[32] = 1
                            balanceOf[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]]
                            mem[96] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]
                            emit Transfer(((10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]), msg.sender, sub_3f7b7380[idx]);
                    s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - sub_81325e54[stor4[idx]]
                    s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    s = 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                    s = sub_3f7b7380[idx]
                    idx = idx + 1
                    continue 
                if (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4:
                    require (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4
                    require (-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / (block.timestamp - (424046 * 3600) / 60 / 12 * 3600) - 4 == sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                if sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20:
                    require sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                    require 10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 / sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20 == 10
                mem[0] = sub_3f7b7380[idx]
                mem[32] = 6
                require sub_81325e54[stor4[idx]] <= (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] > 0:
                    if (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) > 0:
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] <= sub_22a02661[stor4[idx]]
                        sub_22a02661[stor4[idx]] = sub_22a02661[stor4[idx]] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) + sub_81325e54[stor4[idx]]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) >= sub_81325e54[stor4[idx]]
                        sub_81325e54[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                        require sub_3f7b7380[idx]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] <= balanceOf[msg.sender]
                        balanceOf[msg.sender] = balanceOf[msg.sender] - (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) - ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) + sub_81325e54[stor4[idx]]
                        require (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]] >= balanceOf[stor4[idx]]
                        mem[0] = sub_3f7b7380[idx]
                        mem[32] = 1
                        balanceOf[stor4[idx]] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]] + balanceOf[stor4[idx]]
                        mem[96] = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]
                        emit Transfer(((10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]), msg.sender, sub_3f7b7380[idx]);
                s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20) - sub_81325e54[stor4[idx]]
                s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20
                s = (10 * sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]] / 20) + ((-4 * sub_81325e54[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_81325e54[stor4[idx]]) - (4 * sub_22a02661[stor4[idx]]) + (block.timestamp - (424046 * 3600) / 60 / 12 * 3600 * sub_22a02661[stor4[idx]]) / 20)
                s = sub_81325e54[stor4[idx]] + sub_22a02661[stor4[idx]]
                s = sub_3f7b7380[idx]
                idx = idx + 1
                continue 
}



}
