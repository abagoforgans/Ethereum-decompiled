contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
mapping of uint256 stor1;
mapping of address stor2;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of address stor6;
uint256 stor7;
mapping of uint8 stor8;
mapping of uint256 stor9;
mapping of address stor10;
uint256 stor11;
array of uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor14;
uint256 stor15;
uint256 stor20;

function _fallback() payable {
    stor3 = 0
    stor7 = 0
    stor11 = 0
    bool(stor12.length) = 0
    stor12.length.field_1 = 0
    stor12.length.field_8 = mem[128 len 31]
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor13.field_0) = 0
    uint8(stor13.field_8) = 1
    stor14 = 0
    stor15 = 0
    stor20 = 1
    stor0[address(msg.sender)] = 1
    stor1[address(msg.sender)] = stor3
    stor2[stor3] = msg.sender
    stor3++
    stor4[address(msg.sender)] = 1
    stor5[address(msg.sender)] = stor7
    stor6[stor7] = msg.sender
    stor7++
    stor8[address(msg.sender)] = 1
    stor9[address(msg.sender)] = stor11
    stor10[stor11] = msg.sender
    stor11++
    return code.data[542 len 8597]
}



// =====================  Runtime code  =====================


const name = 'FoodCoin EcoSystem'

const decimals = 8

const symbol = 'FOOD'


mapping of uint8 stor0;
mapping of uint256 owner;
mapping of address ownerListMap;
uint256 ownerCountInt;
mapping of uint8 stor4;
mapping of uint256 specialManager;
mapping of address specialManagerListMap;
uint256 specialManagerCountInt;
mapping of uint8 stor8;
mapping of uint256 manager;
mapping of address managerListMap;
uint256 managerCountInt;
array of uint256 description;
uint8 transactionsOn;
uint8 emissionOn; offset 8
uint256 stor13; offset 8
uint256 tokenCreationCap;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of address balancesList;
mapping of uint256 balancesListNumberMap;
array of uint256 balances;
uint256 stor20;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function ownerCountInt() {
    return ownerCountInt
}

function specialManagerAddressMap(address arg1) {
    return bool(stor4[arg1])
}

function transactionsOn() {
    return bool(transactionsOn)
}

function ownerAddressMap(address arg1) {
    return bool(stor0[arg1])
}

function managerAddressMap(address arg1) {
    return bool(stor8[arg1])
}

function tokenCreationCap() {
    return tokenCreationCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function description() {
    return description[0 len description.length]
}

function specialManagerAddressNumberMap(address arg1) {
    return specialManager[arg1]
}

function emissionOn() {
    return bool(emissionOn)
}

function specialManagerCountInt() {
    return specialManagerCountInt
}

function managerListMap(uint256 arg1) {
    return managerListMap[arg1]
}

function balancesListNumberMap(address arg1) {
    return balancesListNumberMap[arg1]
}

function specialManagerListMap(uint256 arg1) {
    return specialManagerListMap[arg1]
}

function ownerListMap(uint256 arg1) {
    return ownerListMap[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function managerAddressNumberMap(address arg1) {
    return manager[arg1]
}

function balancesAddressDescription(address arg1) {
    return balances[arg1][0 len balances[arg1].length]
}

function managerCountInt() {
    return managerCountInt
}

function balancesListAddressMap(uint256 arg1) {
    return balancesList[arg1]
}

function ownerAddressNumberMap(address arg1) {
    return owner[arg1]
}

function _fallback() payable {
    revert
}

function balancesQuantity() {
    return (stor20 - 1)
}

function emissionStatusUpdate(bool arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    stor13 = Mask(248, 0, arg1)
}

function tokenCreationCapUpdate(uint256 arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    tokenCreationCap = arg1
}

function transactionsStatusUpdate(bool arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    transactionsOn = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require transactionsOn
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ownerOn(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require arg1
    if owner[address(arg1)] > 0:
        if stor0[address(arg1)]:
            return 0
        stor0[address(arg1)] = 1
    else:
        stor0[address(arg1)] = 1
        owner[address(arg1)] = ownerCountInt
        ownerListMap[stor3] = arg1
        ownerCountInt++
    emit ContractManagementUpdate(Array(len=5, data='Owner'), address(msg.sender), address(arg1), 1);
    return 1
}

function managerOn(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require arg1
    if manager[address(arg1)] > 0:
        if stor8[address(arg1)]:
            return 0
        stor8[address(arg1)] = 1
    else:
        stor8[address(arg1)] = 1
        manager[address(arg1)] = managerCountInt
        managerListMap[stor11] = arg1
        managerCountInt++
    emit ContractManagementUpdate(Array(len=7, data='Manager'), address(msg.sender), address(arg1), 1);
    return 1
}

function descriptionUpdate(string arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    description.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        description[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while description.length + 31 / 32 > idx:
        description[idx] = 0
        idx = idx + 1
        continue 
    emit DescriptionPublished(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function specialManagerOn(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require arg1
    if specialManager[address(arg1)] > 0:
        if stor4[address(arg1)]:
            return 0
        stor4[address(arg1)] = 1
    else:
        stor4[address(arg1)] = 1
        specialManager[address(arg1)] = specialManagerCountInt
        specialManagerListMap[stor7] = arg1
        specialManagerCountInt++
    emit ContractManagementUpdate(Array(len=15, data='Special Manager'), address(msg.sender), address(arg1), 1);
    return 1
}

function ownerOff(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    if owner[address(arg1)] <= 0:
        return 0
    if not stor0[address(arg1)]:
        return 0
    stor0[address(arg1)] = 0
    emit ContractManagementUpdate(string rg1, address rg2, address rg3, bool rg4):
                                  128,
                                  address(msg.sender),
                                  address(arg1),
                                  0,
                                  5,
                                  'Owner',
    return 1
}

function managerOff(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    if manager[address(arg1)] <= 0:
        return 0
    if not stor8[address(arg1)]:
        return 0
    stor8[address(arg1)] = 0
    emit ContractManagementUpdate(string rg1, address rg2, address rg3, bool rg4):
                                  128,
                                  address(msg.sender),
                                  address(arg1),
                                  0,
                                  7,
                                  'Manager',
    return 1
}

function specialManagerOff(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    if specialManager[address(arg1)] <= 0:
        return 0
    if not stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 0
    emit ContractManagementUpdate(string rg1, address rg2, address rg3, bool rg4):
                                  128,
                                  address(msg.sender),
                                  address(arg1),
                                  0,
                                  15,
                                  'Special Manager',
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require transactionsOn
    if arg2 <= 0:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    if not balancesListNumberMap[address(arg1)]:
        balancesList[stor20] = arg1
        balancesListNumberMap[address(arg1)] = stor20
        stor20++
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(address(msg.sender), address(arg1), arg2, msg.sender);
    return 1
}

function balancesAddressDescriptionUpdate(string arg1) {
    if balancesListNumberMap[address(msg.sender)] <= 0:
        if bool(stor0[address(msg.sender)]) != 1:
            return 0
    balances[address(msg.sender)] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        balances[address(msg.sender)][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while balances[address(msg.sender)].length + 31 / 32 > idx:
        balances[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require transactionsOn
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require transactionsOn
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    balanceOf[address(arg1)] -= arg3
    if not balancesListNumberMap[address(arg2)]:
        balancesList[stor20] = arg2
        balancesListNumberMap[address(arg2)] = stor20
        stor20++
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(address(arg1), address(arg2), arg3, msg.sender);
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    if bool(stor4[address(msg.sender)]) != 1:
        require 1 == bool(stor0[address(msg.sender)])
    if balanceOf[address(arg1)] <= 0:
        emit WithdrawEvent(address(msg.sender), address(arg1), 0, arg2, balanceOf[address(arg1)]);
        return 0
    if balanceOf[address(arg1)] >= arg2:
        require balanceOf[address(arg1)] >= arg2
        balanceOf[address(arg1)] -= arg2
        require totalSupply >= arg2
        totalSupply -= arg2
        emit WithdrawEvent(address(msg.sender), address(arg1), 1, arg2, balanceOf[address(arg1)]);
        return 1, arg2, balanceOf[address(arg1)]
    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require totalSupply >= balanceOf[address(arg1)]
    totalSupply -= balanceOf[address(arg1)]
    emit WithdrawEvent(address(msg.sender), address(arg1), 1, balanceOf[address(arg1)], balanceOf[address(arg1)]);
    return 1, balanceOf[address(arg1)], balanceOf[address(arg1)]
}

function tokenEmission(address arg1, uint256 arg2) {
    if bool(stor8[address(msg.sender)]) != 1:
        require 1 == bool(stor0[address(msg.sender)])
    require emissionOn
    require arg1
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    if tokenCreationCap <= 0:
        if arg2 <= 0:
            emit TokenEmissionEvent(msg.sender, arg2, 0);
        else:
            if not balancesListNumberMap[address(arg1)]:
                balancesList[stor20] = arg1
                balancesListNumberMap[address(arg1)] = stor20
                stor20++
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require arg2 + balanceOf[address(arg1)] >= arg2
            balanceOf[address(arg1)] += arg2
            totalSupply += arg2
            emit TokenEmissionEvent(msg.sender, arg2, 1);
    else:
        if tokenCreationCap < arg2 + totalSupply:
            emit TokenEmissionEvent(msg.sender, arg2, 0);
        else:
            if arg2 <= 0:
                emit TokenEmissionEvent(msg.sender, arg2, 0);
            else:
                if not balancesListNumberMap[address(arg1)]:
                    balancesList[stor20] = arg1
                    balancesListNumberMap[address(arg1)] = stor20
                    stor20++
                require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require arg2 + balanceOf[address(arg1)] >= arg2
                balanceOf[address(arg1)] += arg2
                totalSupply += arg2
                emit TokenEmissionEvent(msg.sender, arg2, 1);
    return 0
}



}
