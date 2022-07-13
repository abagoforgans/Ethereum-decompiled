contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint32 sub_0e949f3e; offset 8
uint32 sub_4babbb6a; offset 40
uint256 stor2; offset 72
uint256 totalSupply;
uint256 stor4;
uint8 stor5;
address stor5;
address sub_888f9adeAddress; offset 8
address sub_d2fe02b9Address;
address sub_96196dd9Address;
address _teamAddress;
address sub_3497b062Address;
mapping of uint32 stor10;
mapping of uint256 stor11;
mapping of uint256 sub_65c1b21f;
mapping of uint256 holdingOf;
mapping of uint256 stor209139814133306509258501428721693679095770898809699097271351498724684681653;
mapping of uint256 stor4718856422425738321444780670640498146606462907479523375931038742471125283154;
mapping of uint256 stor37605368831466597038693372195520559093553806950781259734736135806215827240436;
mapping of uint256 stor45572926591265996059734945013229796335703285977920525374966243757893046358846;
mapping of uint256 stor105847445149126580889896209646828926364671000332244233600356668919894368918645;

function name() {
    return name[0 len name.length]
}

function sub_0e949f3e(?) {
    return sub_0e949f3e
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

function sub_4babbb6a(?) {
    return sub_4babbb6a
}

function sub_65c1b21f(?) {
    return sub_65c1b21f[address(arg1)]
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

function bonusOf(address arg1) {
    return stor11[1][address(arg1)], stor64C1[address(arg1)], storEA03[arg1], stor765E[arg1], stor5323[arg1], storA6EC[arg1]
}

function sub_dc3c0521(?) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
    sub_0e949f3e = arg1
    sub_4babbb6a = arg2
    stor2 = 0
}

function _fallback() payable {
    if not uint8(stor5.field_0):
        revert with 0, 'IEO must be in progress'
    require msg.value + sub_65c1b21f[msg.sender] >= sub_65c1b21f[msg.sender]
    sub_65c1b21f[msg.sender] += msg.value
    emit FundTransfer(msg.value, 1, msg.sender);
}

function totalBonusOf(address arg1) {
    require stor64C1[arg1] + stor11[1][arg1] >= stor11[1][arg1]
    require storEA03[arg1] >= 0
    require stor765E[arg1] >= 0
    require stor5323[address(arg1)] >= 0
    require storA6EC[address(arg1)] >= 0
    return (storA6EC[address(arg1)] + stor5323[address(arg1)] + stor765E[arg1] + storEA03[arg1] + stor64C1[arg1] + stor11[1][arg1])
}

function burn(address arg1, uint256 arg2) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
    require arg2 <= holdingOf[address(arg1)]
    require arg2 <= holdingOf[address(arg1)]
    holdingOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
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

function balanceOf(address arg1) {
    require stor64C1[arg1] + stor11[1][arg1] >= stor11[1][arg1]
    require storEA03[arg1] >= 0
    require stor765E[arg1] >= 0
    require stor5323[address(arg1)] >= 0
    require storA6EC[address(arg1)] >= 0
    require storA6EC[address(arg1)] + stor5323[address(arg1)] + stor765E[arg1] + storEA03[arg1] + stor64C1[arg1] + stor11[1][arg1] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
    return (storA6EC[address(arg1)] + stor5323[address(arg1)] + stor765E[arg1] + storEA03[arg1] + stor64C1[arg1] + stor11[1][arg1] + holdingOf[address(arg1)])
}

function safeWithdrawal() {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
    if uint8(stor5.field_0):
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

function sub_034df13d(?) {
    if sub_888f9adeAddress != msg.sender:
        revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
    if not uint8(stor5.field_0):
        revert with 0, 'IEO must be in progress'
    if not arg1:
        revert with 0, 'Incorrect recipient address'
    if not arg4:
        if arg3 + arg2 > holdingOf[msg.sender]:
            revert with 0, 'Insufficient tokens'
        require arg2 <= holdingOf[msg.sender]
        require arg3 <= holdingOf[msg.sender] - arg2
        holdingOf[msg.sender] = holdingOf[msg.sender] - arg2 - arg3
    else:
        if arg3 + arg2 > stor4:
            revert with 0, 'Insufficient tokens'
        require arg2 <= stor4
        require arg3 <= stor4 - arg2
        stor4 = stor4 - arg2 - arg3
    require arg2 + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
    holdingOf[address(arg1)] += arg2
    require arg3 + storEA03[arg1] >= storEA03[arg1]
    storEA03[arg1] += arg3
    require arg3 + arg2 >= arg2
    emit Transfer((arg3 + arg2), msg.sender, arg1);
    return 1
}

function distributeTokens(address arg1, uint256 arg2) {
    if block.timestamp < sub_0e949f3e:
        if sub_888f9adeAddress != msg.sender:
            revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
        if not uint8(stor5.field_0):
            revert with 0, 'IEO must be in progress'
        if not arg1:
            revert with 0, 'Incorrect recipient address'
        if arg2 > holdingOf[msg.sender]:
            revert with 0, 'Insufficient tokens'
        require arg2 <= holdingOf[msg.sender]
        require 0 <= holdingOf[msg.sender] - arg2
        holdingOf[msg.sender] -= arg2
        require arg2 + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
        holdingOf[address(arg1)] += arg2
        require storEA03[arg1] >= storEA03[arg1]
        require arg2 >= arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if block.timestamp > sub_4babbb6a:
            if sub_888f9adeAddress != msg.sender:
                revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
            if not uint8(stor5.field_0):
                revert with 0, 'IEO must be in progress'
            if not arg1:
                revert with 0, 'Incorrect recipient address'
            if arg2 > holdingOf[msg.sender]:
                revert with 0, 'Insufficient tokens'
            require arg2 <= holdingOf[msg.sender]
            require 0 <= holdingOf[msg.sender] - arg2
            holdingOf[msg.sender] -= arg2
            require arg2 + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
            holdingOf[address(arg1)] += arg2
            require storEA03[arg1] >= storEA03[arg1]
            require arg2 >= arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                if sub_888f9adeAddress != msg.sender:
                    revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
                if not uint8(stor5.field_0):
                    revert with 0, 'IEO must be in progress'
                if not arg1:
                    revert with 0, 'Incorrect recipient address'
                if arg2 > holdingOf[msg.sender]:
                    revert with 0, 'Insufficient tokens'
                require arg2 <= holdingOf[msg.sender]
                require 0 <= holdingOf[msg.sender] - arg2
                holdingOf[msg.sender] -= arg2
                require arg2 + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += arg2
                require storEA03[arg1] >= storEA03[arg1]
                require arg2 >= arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require 5 * arg2 / arg2 == 5
                if sub_888f9adeAddress != msg.sender:
                    revert with 0, 32, 27, 0xfc43616e2062652063616c6c6564206f6e6c79206279206f776e657200000000
                if not uint8(stor5.field_0):
                    revert with 0, 'IEO must be in progress'
                if not arg1:
                    revert with 0, 'Incorrect recipient address'
                if (5 * arg2 / 100) + arg2 > holdingOf[msg.sender]:
                    revert with 0, 'Insufficient tokens'
                require arg2 <= holdingOf[msg.sender]
                require 5 * arg2 / 100 <= holdingOf[msg.sender] - arg2
                holdingOf[msg.sender] = holdingOf[msg.sender] - arg2 - (5 * arg2 / 100)
                require arg2 + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += arg2
                require (5 * arg2 / 100) + storEA03[arg1] >= storEA03[arg1]
                storEA03[arg1] += 5 * arg2 / 100
                require (5 * arg2 / 100) + arg2 >= arg2
                emit Transfer(((5 * arg2 / 100) + arg2), msg.sender, arg1);
    return 1
}

function withdrawBonus(address arg1) {
    require stor64C1[arg1] + stor11[1][arg1] >= stor11[1][arg1]
    require storEA03[arg1] >= 0
    require stor765E[arg1] >= 0
    require stor5323[address(arg1)] >= 0
    require storA6EC[address(arg1)] >= 0
    if storA6EC[address(arg1)] + stor5323[address(arg1)] + stor765E[arg1] + storEA03[arg1] + stor64C1[arg1] + stor11[1][arg1] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Bonus should be more than 0'
    if stor11[1][address(arg1)]:
        if block.timestamp > stor10[1]:
            if stor11[1][address(arg1)] > 0:
                if stor10[1] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[1][address(arg1)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[1][address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[1][address(arg1)]
                stor11[1][address(arg1)] = 0
    if stor11[3][address(arg1)]:
        if block.timestamp > stor10[3]:
            if stor11[3][address(arg1)] > 0:
                if stor10[3] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[3][address(arg1)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[3][address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[3][address(arg1)]
                stor11[3][address(arg1)] = 0
    if stor11[6][address(arg1)]:
        if block.timestamp > stor10[6]:
            if stor11[6][address(arg1)] > 0:
                if stor10[6] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[6][address(arg1)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[6][address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[6][address(arg1)]
                stor11[6][address(arg1)] = 0
    if stor11[12][address(arg1)]:
        if block.timestamp > stor10[12]:
            if stor11[12][address(arg1)] > 0:
                if stor10[12] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[12][address(arg1)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[12][address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[12][address(arg1)]
                stor11[12][address(arg1)] = 0
    if stor11[24][address(arg1)]:
        if block.timestamp > stor10[24]:
            if stor11[24][address(arg1)] > 0:
                if stor10[24] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[24][address(arg1)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[24][address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[24][address(arg1)]
                stor11[24][address(arg1)] = 0
    if stor11[48][address(arg1)]:
        if block.timestamp > stor10[48]:
            if stor11[48][address(arg1)] > 0:
                if stor10[48] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[48][address(arg1)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[48][address(arg1)] + holdingOf[address(arg1)] >= holdingOf[address(arg1)]
                holdingOf[address(arg1)] += stor11[48][address(arg1)]
                stor11[48][address(arg1)] = 0
}

function sub_ec2d96b8(?) {
    require stor64C1[msg.sender] + stor11[1][msg.sender] >= stor11[1][msg.sender]
    require storEA03[msg.sender] >= 0
    require stor765E[msg.sender] >= 0
    require stor5323[address(msg.sender)] >= 0
    require storA6EC[address(msg.sender)] >= 0
    if storA6EC[address(msg.sender)] + stor5323[address(msg.sender)] + stor765E[msg.sender] + storEA03[msg.sender] + stor64C1[msg.sender] + stor11[1][msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Bonus should be more than 0'
    if stor11[1][address(msg.sender)]:
        if block.timestamp > stor10[1]:
            if stor11[1][address(msg.sender)] > 0:
                if stor10[1] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[1][address(msg.sender)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[1][address(msg.sender)] + holdingOf[address(msg.sender)] >= holdingOf[address(msg.sender)]
                holdingOf[address(msg.sender)] += stor11[1][address(msg.sender)]
                stor11[1][address(msg.sender)] = 0
    if stor11[3][address(msg.sender)]:
        if block.timestamp > stor10[3]:
            if stor11[3][address(msg.sender)] > 0:
                if stor10[3] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[3][address(msg.sender)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[3][address(msg.sender)] + holdingOf[address(msg.sender)] >= holdingOf[address(msg.sender)]
                holdingOf[address(msg.sender)] += stor11[3][address(msg.sender)]
                stor11[3][address(msg.sender)] = 0
    if stor11[6][address(msg.sender)]:
        if block.timestamp > stor10[6]:
            if stor11[6][address(msg.sender)] > 0:
                if stor10[6] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[6][address(msg.sender)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[6][address(msg.sender)] + holdingOf[address(msg.sender)] >= holdingOf[address(msg.sender)]
                holdingOf[address(msg.sender)] += stor11[6][address(msg.sender)]
                stor11[6][address(msg.sender)] = 0
    if stor11[12][address(msg.sender)]:
        if block.timestamp > stor10[12]:
            if stor11[12][address(msg.sender)] > 0:
                if stor10[12] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[12][address(msg.sender)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[12][address(msg.sender)] + holdingOf[address(msg.sender)] >= holdingOf[address(msg.sender)]
                holdingOf[address(msg.sender)] += stor11[12][address(msg.sender)]
                stor11[12][address(msg.sender)] = 0
    if stor11[24][address(msg.sender)]:
        if block.timestamp > stor10[24]:
            if stor11[24][address(msg.sender)] > 0:
                if stor10[24] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[24][address(msg.sender)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[24][address(msg.sender)] + holdingOf[address(msg.sender)] >= holdingOf[address(msg.sender)]
                holdingOf[address(msg.sender)] += stor11[24][address(msg.sender)]
                stor11[24][address(msg.sender)] = 0
    if stor11[48][address(msg.sender)]:
        if block.timestamp > stor10[48]:
            if stor11[48][address(msg.sender)] > 0:
                if stor10[48] >= block.timestamp:
                    revert with 0, 'Function called too early.'
                if stor11[48][address(msg.sender)] <= 0:
                    revert with 0, 'No withdrawal bonus available'
                require stor11[48][address(msg.sender)] + holdingOf[address(msg.sender)] >= holdingOf[address(msg.sender)]
                holdingOf[address(msg.sender)] += stor11[48][address(msg.sender)]
                stor11[48][address(msg.sender)] = 0
}

function sub_b64bd46b(?) {
    if not uint8(stor5.field_0):
        revert with 0, 'IEO must be in progress'
    if 433008 * 24 * 3600 >= block.timestamp:
        revert with 0, 'Function called too early.'
    require stor64C1[stor9] + stor11[1][stor9] >= stor11[1][stor9]
    require storEA03[stor9] >= 0
    require stor765E[stor9] >= 0
    require stor5323[stor9] >= 0
    require storA6EC[stor9] >= 0
    require storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] >= holdingOf[stor9]
    require holdingOf[address(stor5.field_0)] + holdingOf[stor6] >= holdingOf[stor6]
    require storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] >= 0
    if not storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6]:
        storEA03[stor6] = 0
    else:
        require (25 * storA6EC[stor9]) + (25 * stor5323[stor9]) + (25 * stor765E[stor9]) + (25 * storEA03[stor9]) + (25 * stor64C1[stor9]) + (25 * stor11[1][stor9]) + (25 * holdingOf[stor9]) + (25 * holdingOf[address(stor5.field_0)]) + (25 * holdingOf[stor6]) / storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6] == 25
        storEA03[stor6] = (25 * storA6EC[stor9]) + (25 * stor5323[stor9]) + (25 * stor765E[stor9]) + (25 * storEA03[stor9]) + (25 * stor64C1[stor9]) + (25 * stor11[1][stor9]) + (25 * holdingOf[stor9]) + (25 * holdingOf[address(stor5.field_0)]) + (25 * holdingOf[stor6]) / 100
    if not storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6]:
        stor765E[stor6] = 0
    else:
        require (25 * storA6EC[stor9]) + (25 * stor5323[stor9]) + (25 * stor765E[stor9]) + (25 * storEA03[stor9]) + (25 * stor64C1[stor9]) + (25 * stor11[1][stor9]) + (25 * holdingOf[stor9]) + (25 * holdingOf[address(stor5.field_0)]) + (25 * holdingOf[stor6]) / storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6] == 25
        stor765E[stor6] = (25 * storA6EC[stor9]) + (25 * stor5323[stor9]) + (25 * stor765E[stor9]) + (25 * storEA03[stor9]) + (25 * stor64C1[stor9]) + (25 * stor11[1][stor9]) + (25 * holdingOf[stor9]) + (25 * holdingOf[address(stor5.field_0)]) + (25 * holdingOf[stor6]) / 100
    if not storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6]:
        stor5323[stor6] = 0
    else:
        require (20 * storA6EC[stor9]) + (20 * stor5323[stor9]) + (20 * stor765E[stor9]) + (20 * storEA03[stor9]) + (20 * stor64C1[stor9]) + (20 * stor11[1][stor9]) + (20 * holdingOf[stor9]) + (20 * holdingOf[address(stor5.field_0)]) + (20 * holdingOf[stor6]) / storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6] == 20
        stor5323[stor6] = (20 * storA6EC[stor9]) + (20 * stor5323[stor9]) + (20 * stor765E[stor9]) + (20 * storEA03[stor9]) + (20 * stor64C1[stor9]) + (20 * stor11[1][stor9]) + (20 * holdingOf[stor9]) + (20 * holdingOf[address(stor5.field_0)]) + (20 * holdingOf[stor6]) / 100
    if not storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6]:
        storA6EC[stor6] = 0
    else:
        require (30 * storA6EC[stor9]) + (30 * stor5323[stor9]) + (30 * stor765E[stor9]) + (30 * storEA03[stor9]) + (30 * stor64C1[stor9]) + (30 * stor11[1][stor9]) + (30 * holdingOf[stor9]) + (30 * holdingOf[address(stor5.field_0)]) + (30 * holdingOf[stor6]) / storA6EC[stor9] + stor5323[stor9] + stor765E[stor9] + storEA03[stor9] + stor64C1[stor9] + stor11[1][stor9] + holdingOf[stor9] + holdingOf[address(stor5.field_0)] + holdingOf[stor6] == 30
        storA6EC[stor6] = (30 * storA6EC[stor9]) + (30 * stor5323[stor9]) + (30 * stor765E[stor9]) + (30 * storEA03[stor9]) + (30 * stor64C1[stor9]) + (30 * stor11[1][stor9]) + (30 * holdingOf[stor9]) + (30 * holdingOf[address(stor5.field_0)]) + (30 * holdingOf[stor6]) / 100
    holdingOf[address(stor5.field_0)] = 0
    holdingOf[stor6] = 0
    holdingOf[stor9] = 0
    storEA03[stor9] = 0
    stor765E[stor9] = 0
    uint8(stor5.field_0) = 0
}



}
