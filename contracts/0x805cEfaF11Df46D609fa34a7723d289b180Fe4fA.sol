contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1; offset 8
uint256 stor1;
mapping of uint256 stor2;
address stor5;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    uint256(stor1.field_0) = 0x123456789abcdf012345556789abcdf0123456789abcdf0123456789abcdf0 * 3600 and uint256(stor1.field_0)
    require not msg.value
    stor5 = address(stor1.field_8)
    uint8(stor8.length) = 42
    stor8.length.field_8 = 'Notary Platform Token' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor9.length) = 8
    stor9.length.field_8 = 'NTRY' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 18
    address(stor1.field_8) = 0x1538ef80213cde339a333ee420a85c21905b1b2d
    stor0 = 150000000 * 10^18
    stor2[0x1538ef80213cde339a333ee420a85c21905b1b2d] = 150000000 * 10^18
    stor11 = block.timestamp + (7920 * 24 * 3600)
    return code.data[519 len 7284]
}



// =====================  Runtime code  =====================


#
#  - setUpgradeAgent(address arg1)
#
const teamAllocations = 15000000 * 10^18

const canUpgrade = 1

const isToken = 1

const BURN_ADDRESS = 0


uint256 totalSupply;
uint8 stor1;
uint8 stor1; offset 168
uint128 stor1; offset 168
address stor1;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 unlockedAt;
mapping of uint256 stor12;
uint256 stor2AC7;
uint256 stor30C5;
uint256 stor43BD;
uint256 stor46C1;
uint256 stor627F;
uint256 stor663A;
uint256 stor77AC;
uint256 stor78C9;
uint256 stor7F85;
uint256 stor8486;
uint256 stor93B5;
uint256 stor9501;
uint256 stor96EA;
uint256 storC7CA;
uint256 storEC15;
uint256 storF4A8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function upgradeMaster() {
    return upgradeMasterAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function unlockedAt() {
    return unlockedAt
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isInTestMode() {
    return bool(uint8(stor1.field_0))
}

function totalUpgraded() {
    return totalUpgraded
}

function emergency() {
    return bool(uint8(stor1.field_168))
}

function frozen(address arg1) {
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function getUpgradeState() {
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function emergencyStop(bool arg1) {
    if owner != msg.sender:
        emit evRecord(msg.sender, msg.value, 'Only Owner!');
        require uint8(stor1.field_0)
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burned(msg.sender, arg1);
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        emit evRecord(msg.sender, msg.value, 'Only Owner!');
        require uint8(stor1.field_0)
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        emit evRecord(msg.sender, msg.value, 'Only Owner!');
        require uint8(stor1.field_0)
    if arg1:
        balanceOf[arg1] = balanceOf[address(stor1.field_0)]
        balanceOf[address(stor1.field_8)] = 0
        owner = arg1
        emit Transfer(balanceOf[arg1], arg1, arg1);
}

function setUpgradeMaster(address arg1) {
    if not arg1:
        emit evRecord(msg.sender, msg.value, Array(len=34, data='Invalid address of upgrade maste', uint16('r!')));
        require uint8(stor1.field_0)
    if upgradeMasterAddress != msg.sender:
        emit evRecord(msg.sender, msg.value, 'Only upgrade master!');
        require uint8(stor1.field_0)
    upgradeMasterAddress = arg1
}

function allocate() {
    stor9501 = 2500000 * 10^18
    storC7CA = 2500000 * 10^18
    stor7F85 = 2500000 * 10^18
    stor627F = 2500000 * 10^18
    stor2AC7 = 500000 * 10^18
    stor30C5 = 500000 * 10^18
    stor77AC = 250000 * 10^18
    stor8486 = 250000 * 10^18
    stor663A = 250000 * 10^18
    stor93B5 = 250000 * 10^18
    storF4A8 = 200000 * 10^18
    stor43BD = 200000 * 10^18
    stor78C9 = 200000 * 10^18
    stor96EA = 200000 * 10^18
    storEC15 = 200000 * 10^18
    stor46C1 = 2000000 * 10^18
}

function withDraw() {
    if block.timestamp >= unlockedAt:
        if not stor12[address(msg.sender)]:
            emit evRecord(msg.sender, msg.value, 'No allocation found!');
            require uint8(stor1.field_0)
    else:
        emit evRecord(msg.sender, msg.value, 'Allocations are freezed!');
        require uint8(stor1.field_0)
        if not stor12[address(msg.sender)]:
            emit evRecord(address rg1, uint256 rg2, string rg3):
                          msg.sender,
                          msg.value,
                          96,
                          0,
                          20,
                          address('No allocation found!'),
            require uint8(stor1.field_0)
    balanceOf[address(stor1.field_0)] -= stor12[address(msg.sender)]
    balanceOf[msg.sender] += stor12[address(msg.sender)]
    emit Transfer(stor12[address(msg.sender)], owner, msg.sender);
    stor12[address(msg.sender)] = 0
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor1.field_168):
        if arg2:
            if allowance[address(msg.sender)][address(arg1)]:
                emit evRecord(msg.sender, msg.value, 'Allowance race condition!');
                require uint8(stor1.field_0)
    else:
        emit evRecord(msg.sender, msg.value, 'Emergency state!');
        require uint8(stor1.field_0)
        if arg2:
            if allowance[address(msg.sender)][address(arg1)]:
                emit evRecord(address rg1, uint256 rg2, string rg3):
                              msg.sender,
                              msg.value,
                              96,
                              0,
                              25,
                              Mask(200, 0, 'Allowance race condition!'),
                require uint8(stor1.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor1.field_168):
        if stor4[address(arg1)]:
            emit evRecord(msg.sender, msg.value, 'Account freezed!');
            require uint8(stor1.field_0)
    else:
        emit evRecord(msg.sender, msg.value, 'Emergency state!');
        require uint8(stor1.field_0)
        if stor4[address(arg1)]:
            emit evRecord(address rg1, uint256 rg2, string rg3):
                          msg.sender,
                          msg.value,
                          96,
                          0,
                          16,
                          uint128('Account freezed!'),
            require uint8(stor1.field_0)
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    if upgradeAgentAddress:
        if not arg1:
            emit evRecord(msg.sender, msg.value, 'Value to upgrade is zero!');
            require uint8(stor1.field_0)
    else:
        emit evRecord(msg.sender, msg.value, 'Called in a bad state!');
        require uint8(stor1.field_0)
        if not arg1:
            emit evRecord(address rg1, uint256 rg2, string rg3):
                          msg.sender,
                          msg.value,
                          96,
                          0,
                          25,
                          Mask(200, 0, 'Value to upgrade is zero!'),
            require uint8(stor1.field_0)
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor1.field_168):
        if calldata.size >= 68:
            if stor4[address(msg.sender)]:
                emit evRecord(msg.sender, msg.value, 'Account freezed!');
                require uint8(stor1.field_0)
        else:
            emit evRecord(msg.sender, msg.value, 'Short address attack!');
            require uint8(stor1.field_0)
            if stor4[address(msg.sender)]:
                emit evRecord(address rg1, uint256 rg2, string rg3):
                              msg.sender,
                              msg.value,
                              96,
                              0,
                              16,
                              uint128('Account freezed!'),
                require uint8(stor1.field_0)
    else:
        emit evRecord(msg.sender, msg.value, 'Emergency state!');
        require uint8(stor1.field_0)
        if calldata.size >= 68:
            if stor4[address(msg.sender)]:
                emit evRecord(address rg1, uint256 rg2, string rg3):
                              msg.sender,
                              msg.value,
                              96,
                              0,
                              16,
                              uint128('Account freezed!'),
                require uint8(stor1.field_0)
        else:
            emit evRecord(address rg1, uint256 rg2, string rg3):
                          msg.sender,
                          msg.value,
                          96,
                          0,
                          21,
                          Mask(168, 0, 'Short address attack!'),
            require uint8(stor1.field_0)
            if stor4[address(msg.sender)]:
                emit evRecord(address rg1, uint256 rg2, string rg3):
                              msg.sender,
                              0,
                              msg.value,
                              96,
                              0,
                              16,
                              uint128('Account freezed!'),
                require uint8(stor1.field_0)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
