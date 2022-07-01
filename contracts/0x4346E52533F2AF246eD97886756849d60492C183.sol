contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2;
address sub_888f9adeAddress; offset 8
address sub_d2fe02b9Address;
address sub_96196dd9Address;
address _teamAddress;
uint8 stor6; offset 160
address sub_3497b062Address;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of uint256 sub_65c1b21f;
mapping of uint256 holdingOf;
uint32 sub_f42eff1f;
uint32 sub_728b4583; offset 32
uint32 sub_55b067f2; offset 64
uint32 sub_0999464d; offset 96
uint128 stor15; offset 128
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function sub_0999464d(?) {
    return sub_0999464d
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_3497b062(?) {
    return sub_3497b062Address
}

function sub_55b067f2(?) {
    return sub_55b067f2
}

function sub_65c1b21f(?) {
    return sub_65c1b21f[address(arg1)]
}

function sub_728b4583(?) {
    return sub_728b4583
}

function sub_888f9ade(?) {
    return sub_888f9adeAddress
}

function _teamAddress() {
    return _teamAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96196dd9(?) {
    return sub_96196dd9Address
}

function sub_d2fe02b9(?) {
    return sub_d2fe02b9Address
}

function holdingOf(address arg1) {
    return holdingOf[address(arg1)]
}

function sub_f42eff1f(?) {
    return sub_f42eff1f
}

function sub_75dbd15f(?) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 'Can be called only by owner'
    sub_f42eff1f = arg1
    sub_728b4583 = arg2
}

function sub_ad588613(?) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 'Can be called only by owner'
    sub_55b067f2 = arg1
    sub_0999464d = arg2
    stor15 = 0
}

function bonusOf(address arg1) {
    return stor7[address(arg1)], 
           stor8[address(arg1)],
           stor9[address(arg1)],
           stor10[address(arg1)],
           stor11[address(arg1)],
           stor12[address(arg1)]
}

function _fallback() payable {
    if not uint8(stor6.field_160):
        revert with 0, 'IEO must be in progress'
    require msg.value + sub_65c1b21f[msg.sender] >= sub_65c1b21f[msg.sender]
    sub_65c1b21f[msg.sender] += msg.value
    emit FundTransfer(msg.value, 1, msg.sender);
}

function totalBonusOf(address arg1) {
    require stor8[address(arg1)] + stor7[address(arg1)] >= stor7[address(arg1)]
    require stor9[address(arg1)] >= 0
    require stor10[address(arg1)] >= 0
    require stor11[address(arg1)] >= 0
    require stor12[address(arg1)] >= 0
    return (stor12[address(arg1)] + stor11[address(arg1)] + stor10[address(arg1)] + stor9[address(arg1)] + stor8[address(arg1)] + stor7[address(arg1)])
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Incorrect recipient address'
    if arg2 > holdingOf[msg.sender]:
        revert with 0, 'Not enough Token Balance'
    require arg2 <= holdingOf[msg.sender]
    holdingOf[msg.sender] -= arg2
    require arg2 + holdingOf[arg1] >= holdingOf[arg1]
    holdingOf[address(arg1)] = arg2 + holdingOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function safeWithdrawal() {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 'Can be called only by owner'
    if uint8(stor6.field_160):
        revert with 0, 'IEO must be stopped'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract doesn't hold any ether as of now'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(eth.balance(this.address), 0, msg.sender);
}

function balanceOf(address arg1) {
    require stor8[address(arg1)] + stor7[address(arg1)] >= stor7[address(arg1)]
    require stor9[address(arg1)] >= 0
    require stor10[address(arg1)] >= 0
    require stor11[address(arg1)] >= 0
    require stor12[address(arg1)] >= 0
    require stor12[address(arg1)] + stor11[address(arg1)] + stor10[address(arg1)] + stor9[address(arg1)] + stor8[address(arg1)] + stor7[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
    return (stor12[address(arg1)] + stor11[address(arg1)] + stor10[address(arg1)] + stor9[address(arg1)] + stor8[address(arg1)] + stor7[address(arg1)] + holdingOf[address(arg1)])
}

function sub_9206eb57(?) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 'Can be called only by owner'
    if not uint8(stor6.field_160):
        revert with 0, 'IEO must be in progress'
    if not arg1:
        revert with 0, 'Incorrect recipient address'
    if arg3 + arg2 > holdingOf[msg.sender]:
        revert with 0, 'Insufficient tokens'
    require arg3 + arg2 >= arg2
    require arg3 + arg2 <= holdingOf[msg.sender]
    holdingOf[msg.sender] = holdingOf[msg.sender] - arg3 - arg2
    require (arg2 / 4) + stor8[address(arg1)] >= stor8[address(arg1)]
    stor8[address(arg1)] += arg2 / 4
    require (arg2 / 4) + stor9[address(arg1)] >= stor9[address(arg1)]
    stor9[address(arg1)] += arg2 / 4
    require (arg2 / 2) + stor10[address(arg1)] >= stor10[address(arg1)]
    stor10[address(arg1)] += arg2 / 2
    require arg3 >= 0
    stor10[address(arg1)] = arg3 + (arg2 / 2) + stor10[address(arg1)]
    require arg3 + arg2 >= arg2
    emit Transfer((arg3 + arg2), msg.sender, arg1);
    return 1
}

function sub_9656a4f9(?) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 'Can be called only by owner'
    if not uint8(stor6.field_160):
        revert with 0, 'IEO must be in progress'
    if not arg1:
        revert with 0, 'Incorrect recipient address'
    if arg3 + arg2 > holdingOf[msg.sender]:
        revert with 0, 'Insufficient tokens'
    require arg2 <= holdingOf[msg.sender]
    require arg3 <= holdingOf[msg.sender] - arg2
    holdingOf[msg.sender] = holdingOf[msg.sender] - arg2 - arg3
    require (arg2 / 4) + holdingOf[arg1] >= holdingOf[arg1]
    holdingOf[address(arg1)] = (arg2 / 4) + holdingOf[arg1]
    require (arg2 / 4) + stor7[address(arg1)] >= stor7[address(arg1)]
    stor7[address(arg1)] += arg2 / 4
    require (arg2 / 2) + stor8[address(arg1)] >= stor8[address(arg1)]
    stor8[address(arg1)] += arg2 / 2
    require arg3 + stor10[address(arg1)] >= stor10[address(arg1)]
    stor10[address(arg1)] += arg3
    require arg3 + arg2 >= arg2
    emit Transfer((arg3 + arg2), msg.sender, arg1);
    return 1
}

function withdrawBonus(address arg1) {
    require stor8[address(arg1)] + stor7[address(arg1)] >= stor7[address(arg1)]
    require stor9[address(arg1)] >= 0
    require stor10[address(arg1)] >= 0
    require stor11[address(arg1)] >= 0
    require stor12[address(arg1)] >= 0
    if stor12[address(arg1)] + stor11[address(arg1)] + stor10[address(arg1)] + stor9[address(arg1)] + stor8[address(arg1)] + stor7[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Bonus should be more than 0'
    if stor7[address(arg1)]:
        if block.timestamp > 433752 * 24 * 3600:
            if stor7[address(arg1)] > 0:
                if 433752 * 24 * 3600 >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor7[address(arg1)] <= 0:
                    revert with 0, 'No 1 months withdrawal bonus'
                require stor7[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor7[address(arg1)]
                stor7[address(arg1)] = 0
    if stor8[address(arg1)]:
        if block.timestamp > 435216 * 24 * 3600:
            if stor8[address(arg1)] > 0:
                if 435216 * 24 * 3600 >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor8[address(arg1)] <= 0:
                    revert with 0, 'No 3 months withdrawal bonus'
                require stor8[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor8[address(arg1)]
                stor8[address(arg1)] = 0
    if stor9[address(arg1)]:
        if block.timestamp > 437424 * 24 * 3600:
            if stor9[address(arg1)] > 0:
                if 437424 * 24 * 3600 >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor9[address(arg1)] <= 0:
                    revert with 0, 'No 6 months withdrawal bonus'
                require stor9[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor9[address(arg1)]
                stor9[address(arg1)] = 0
    if stor10[address(arg1)]:
        if block.timestamp > 441792 * 24 * 3600:
            if stor10[address(arg1)] > 0:
                if 441792 * 24 * 3600 >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor10[address(arg1)] <= 0:
                    revert with 0, 'No 12 months withdrawal bonus'
                require stor10[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor10[address(arg1)]
                stor10[address(arg1)] = 0
    if stor11[address(arg1)]:
        if block.timestamp > 450552 * 24 * 3600:
            if stor11[address(arg1)] > 0:
                if 450552 * 24 * 3600 >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[address(arg1)] <= 0:
                    revert with 0, 'No 24 months withdrawal bonus'
                require stor11[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[address(arg1)]
                stor11[address(arg1)] = 0
    if stor12[address(arg1)]:
        if block.timestamp > 468072 * 24 * 3600:
            if stor12[address(arg1)] > 0:
                if 468072 * 24 * 3600 >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor12[msg.sender] <= 0:
                    revert with 0, 'No 48 months withdrawal bonus'
                require stor12[address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor12[address(arg1)]
                stor12[address(arg1)] = 0
}

function distributeTokens(address arg1, uint256 arg2) {
    if block.timestamp < sub_f42eff1f:
        if sub_888f9adeAddress != msg.sender:
            revert with 0, 'Can be called only by owner'
        if not uint8(stor6.field_160):
            revert with 0, 'IEO must be in progress'
        if not arg1:
            revert with 0, 'Incorrect recipient address'
        if arg2 > holdingOf[msg.sender]:
            revert with 0, 'Insufficient tokens'
        require arg2 <= holdingOf[msg.sender]
        require 0 <= holdingOf[msg.sender] - arg2
        holdingOf[msg.sender] -= arg2
        require (arg2 / 4) + holdingOf[arg1] >= holdingOf[arg1]
        holdingOf[address(arg1)] = (arg2 / 4) + holdingOf[arg1]
        require (arg2 / 4) + stor7[address(arg1)] >= stor7[address(arg1)]
        stor7[address(arg1)] += arg2 / 4
        require (arg2 / 2) + stor8[address(arg1)] >= stor8[address(arg1)]
        stor8[address(arg1)] += arg2 / 2
        require stor10[address(arg1)] >= stor10[address(arg1)]
        require arg2 >= arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if block.timestamp > sub_728b4583:
            if sub_888f9adeAddress != msg.sender:
                revert with 0, 'Can be called only by owner'
            if not uint8(stor6.field_160):
                revert with 0, 'IEO must be in progress'
            if not arg1:
                revert with 0, 'Incorrect recipient address'
            if arg2 > holdingOf[msg.sender]:
                revert with 0, 'Insufficient tokens'
            require arg2 <= holdingOf[msg.sender]
            require 0 <= holdingOf[msg.sender] - arg2
            holdingOf[msg.sender] -= arg2
            require (arg2 / 4) + holdingOf[arg1] >= holdingOf[arg1]
            holdingOf[address(arg1)] = (arg2 / 4) + holdingOf[arg1]
            require (arg2 / 4) + stor7[address(arg1)] >= stor7[address(arg1)]
            stor7[address(arg1)] += arg2 / 4
            require (arg2 / 2) + stor8[address(arg1)] >= stor8[address(arg1)]
            stor8[address(arg1)] += arg2 / 2
            require stor10[address(arg1)] >= stor10[address(arg1)]
            require arg2 >= arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                if sub_888f9adeAddress != msg.sender:
                    revert with 0, 'Can be called only by owner'
                if not uint8(stor6.field_160):
                    revert with 0, 'IEO must be in progress'
                if not arg1:
                    revert with 0, 'Incorrect recipient address'
                if arg2 > holdingOf[msg.sender]:
                    revert with 0, 'Insufficient tokens'
                require arg2 <= holdingOf[msg.sender]
                require 0 <= holdingOf[msg.sender] - arg2
                holdingOf[msg.sender] -= arg2
                require (arg2 / 4) + holdingOf[arg1] >= holdingOf[arg1]
                holdingOf[address(arg1)] = (arg2 / 4) + holdingOf[arg1]
                require (arg2 / 4) + stor7[address(arg1)] >= stor7[address(arg1)]
                stor7[address(arg1)] += arg2 / 4
                require (arg2 / 2) + stor8[address(arg1)] >= stor8[address(arg1)]
                stor8[address(arg1)] += arg2 / 2
                require stor10[address(arg1)] >= stor10[address(arg1)]
                require arg2 >= arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require 5 * arg2 / arg2 == 5
                if sub_888f9adeAddress != msg.sender:
                    revert with 0, 'Can be called only by owner'
                if not uint8(stor6.field_160):
                    revert with 0, 'IEO must be in progress'
                if not arg1:
                    revert with 0, 'Incorrect recipient address'
                if (5 * arg2 / 100) + arg2 > holdingOf[msg.sender]:
                    revert with 0, 'Insufficient tokens'
                require arg2 <= holdingOf[msg.sender]
                require 5 * arg2 / 100 <= holdingOf[msg.sender] - arg2
                holdingOf[msg.sender] = holdingOf[msg.sender] - arg2 - (5 * arg2 / 100)
                require (arg2 / 4) + holdingOf[arg1] >= holdingOf[arg1]
                holdingOf[address(arg1)] = (arg2 / 4) + holdingOf[arg1]
                require (arg2 / 4) + stor7[address(arg1)] >= stor7[address(arg1)]
                stor7[address(arg1)] += arg2 / 4
                require (arg2 / 2) + stor8[address(arg1)] >= stor8[address(arg1)]
                stor8[address(arg1)] += arg2 / 2
                require (5 * arg2 / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
                stor10[address(arg1)] += 5 * arg2 / 100
                require (5 * arg2 / 100) + arg2 >= arg2
                emit Transfer(((5 * arg2 / 100) + arg2), msg.sender, arg1);
    return 1
}

function sub_b64bd46b(?) {
    if not uint8(stor6.field_160):
        revert with 0, 'IEO must be in progress'
    if 433008 * 24 * 3600 >= block.timestamp:
        revert with 0, 'Function called too early.'
    require stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] >= stor7[address(stor6.field_0)]
    require stor9[address(stor6.field_0)] >= 0
    require stor10[address(stor6.field_0)] >= 0
    require stor11[address(stor6.field_0)] >= 0
    require stor12[address(stor6.field_0)] >= 0
    require stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] >= holdingOf[address(stor6.field_0)]
    require holdingOf[stor2] + holdingOf[stor3] >= holdingOf[stor3]
    require stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] >= 0
    if not stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3]:
        stor9[stor3] = 0
    else:
        require (25 * stor12[address(stor6.field_0)]) + (25 * stor11[address(stor6.field_0)]) + (25 * stor10[address(stor6.field_0)]) + (25 * stor9[address(stor6.field_0)]) + (25 * stor8[address(stor6.field_0)]) + (25 * stor7[address(stor6.field_0)]) + (25 * holdingOf[address(stor6.field_0)]) + (25 * holdingOf[stor2]) + (25 * holdingOf[stor3]) / stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3] == 25
        stor9[stor3] = (25 * stor12[address(stor6.field_0)]) + (25 * stor11[address(stor6.field_0)]) + (25 * stor10[address(stor6.field_0)]) + (25 * stor9[address(stor6.field_0)]) + (25 * stor8[address(stor6.field_0)]) + (25 * stor7[address(stor6.field_0)]) + (25 * holdingOf[address(stor6.field_0)]) + (25 * holdingOf[stor2]) + (25 * holdingOf[stor3]) / 100
    if not stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3]:
        stor10[stor3] = 0
    else:
        require (25 * stor12[address(stor6.field_0)]) + (25 * stor11[address(stor6.field_0)]) + (25 * stor10[address(stor6.field_0)]) + (25 * stor9[address(stor6.field_0)]) + (25 * stor8[address(stor6.field_0)]) + (25 * stor7[address(stor6.field_0)]) + (25 * holdingOf[address(stor6.field_0)]) + (25 * holdingOf[stor2]) + (25 * holdingOf[stor3]) / stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3] == 25
        stor10[stor3] = (25 * stor12[address(stor6.field_0)]) + (25 * stor11[address(stor6.field_0)]) + (25 * stor10[address(stor6.field_0)]) + (25 * stor9[address(stor6.field_0)]) + (25 * stor8[address(stor6.field_0)]) + (25 * stor7[address(stor6.field_0)]) + (25 * holdingOf[address(stor6.field_0)]) + (25 * holdingOf[stor2]) + (25 * holdingOf[stor3]) / 100
    if not stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3]:
        stor11[stor3] = 0
    else:
        require (20 * stor12[address(stor6.field_0)]) + (20 * stor11[address(stor6.field_0)]) + (20 * stor10[address(stor6.field_0)]) + (20 * stor9[address(stor6.field_0)]) + (20 * stor8[address(stor6.field_0)]) + (20 * stor7[address(stor6.field_0)]) + (20 * holdingOf[address(stor6.field_0)]) + (20 * holdingOf[stor2]) + (20 * holdingOf[stor3]) / stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3] == 20
        stor11[stor3] = (20 * stor12[address(stor6.field_0)]) + (20 * stor11[address(stor6.field_0)]) + (20 * stor10[address(stor6.field_0)]) + (20 * stor9[address(stor6.field_0)]) + (20 * stor8[address(stor6.field_0)]) + (20 * stor7[address(stor6.field_0)]) + (20 * holdingOf[address(stor6.field_0)]) + (20 * holdingOf[stor2]) + (20 * holdingOf[stor3]) / 100
    if not stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3]:
        stor12[stor3] = 0
    else:
        require (30 * stor12[address(stor6.field_0)]) + (30 * stor11[address(stor6.field_0)]) + (30 * stor10[address(stor6.field_0)]) + (30 * stor9[address(stor6.field_0)]) + (30 * stor8[address(stor6.field_0)]) + (30 * stor7[address(stor6.field_0)]) + (30 * holdingOf[address(stor6.field_0)]) + (30 * holdingOf[stor2]) + (30 * holdingOf[stor3]) / stor12[address(stor6.field_0)] + stor11[address(stor6.field_0)] + stor10[address(stor6.field_0)] + stor9[address(stor6.field_0)] + stor8[address(stor6.field_0)] + stor7[address(stor6.field_0)] + holdingOf[address(stor6.field_0)] + holdingOf[stor2] + holdingOf[stor3] == 30
        stor12[stor3] = (30 * stor12[address(stor6.field_0)]) + (30 * stor11[address(stor6.field_0)]) + (30 * stor10[address(stor6.field_0)]) + (30 * stor9[address(stor6.field_0)]) + (30 * stor8[address(stor6.field_0)]) + (30 * stor7[address(stor6.field_0)]) + (30 * holdingOf[address(stor6.field_0)]) + (30 * holdingOf[stor2]) + (30 * holdingOf[stor3]) / 100
    holdingOf[stor2] = 0
    holdingOf[stor3] = 0
    holdingOf[address(stor6.field_0)] = 0
    stor9[address(stor6.field_0)] = 0
    stor10[address(stor6.field_0)] = 0
    uint8(stor6.field_160) = 0
}



}
