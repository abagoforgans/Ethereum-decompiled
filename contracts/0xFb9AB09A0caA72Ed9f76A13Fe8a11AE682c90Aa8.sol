contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'minereum' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'MNE' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor3 = 32 * 10^11
    stor4 = 3516521
    stor5 = 32000
    stor6 = 4268
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    return code.data[1099 len 7943]
}



// =====================  Runtime code  =====================


const currentEthBlock = block.number


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupplyPerAddress;
uint256 initialBlockCount;
uint256 rewardPerBlockPerAddress;
uint256 totalGenesisAddresses;
address sub_db113af8Address;
address sub_e7bab8ecAddress;
address sub_9328ec0dAddress;
address sub_6360636bAddress;
address sub_8c21d803Address;
address sub_3eab5a1fAddress;
address sub_ee02a0eaAddress;
address sub_bde214daAddress;
address sub_51bff227Address;
address sub_f03d0d1aAddress;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
mapping of uint256 balanceOf;
mapping of uint8 stor23;

function name() {
    return name[0 len name.length]
}

function initialSupplyPerAddress() {
    return initialSupplyPerAddress
}

function totalGenesisAddresses() {
    return totalGenesisAddresses
}

function decimals() {
    return decimals
}

function sub_3eab5a1f(?) {
    return sub_3eab5a1fAddress
}

function sub_51bff227(?) {
    return sub_51bff227Address
}

function sub_6360636b(?) {
    return sub_6360636bAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_8c21d803(?) {
    return sub_8c21d803Address
}

function sub_9328ec0d(?) {
    return sub_9328ec0dAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_bde214da(?) {
    return sub_bde214daAddress
}

function genesisAddress(address arg1) {
    return bool(stor23[arg1])
}

function sub_db113af8(?) {
    return sub_db113af8Address
}

function rewardPerBlockPerAddress() {
    return rewardPerBlockPerAddress
}

function initialBlockCount() {
    return initialBlockCount
}

function sub_e7bab8ec(?) {
    return sub_e7bab8ecAddress
}

function sub_ee02a0ea(?) {
    return sub_ee02a0eaAddress
}

function sub_f03d0d1a(?) {
    return sub_f03d0d1aAddress
}

function _fallback() payable {
    revert
}

function currentBlock() {
    return (block.number - initialBlockCount)
}

function maxTotalSupply() {
    return (initialSupplyPerAddress * totalGenesisAddresses)
}

function sub_08d2b7e2(?) {
    if sub_9328ec0dAddress:
        return 0
    sub_9328ec0dAddress = arg1
    return 1
}

function sub_11419a7e(?) {
    if sub_8c21d803Address:
        return 0
    sub_8c21d803Address = arg1
    return 1
}

function sub_172dcc47(?) {
    if sub_bde214daAddress:
        return 0
    sub_bde214daAddress = arg1
    return 1
}

function sub_360dbd97(?) {
    if sub_51bff227Address:
        return 0
    sub_51bff227Address = arg1
    return 1
}

function sub_44b094f2(?) {
    if sub_f03d0d1aAddress:
        return 0
    sub_f03d0d1aAddress = arg1
    return 1
}

function sub_582bc10b(?) {
    if sub_6360636bAddress:
        return 0
    sub_6360636bAddress = arg1
    return 1
}

function sub_78e108ca(?) {
    if sub_e7bab8ecAddress:
        return 0
    sub_e7bab8ecAddress = arg1
    return 1
}

function sub_96226521(?) {
    if sub_3eab5a1fAddress:
        return 0
    sub_3eab5a1fAddress = arg1
    return 1
}

function sub_c313c8b4(?) {
    if sub_db113af8Address:
        return 0
    sub_db113af8Address = arg1
    return 1
}

function sub_f555e453(?) {
    if sub_ee02a0eaAddress:
        return 0
    sub_ee02a0eaAddress = arg1
    return 1
}

function totalSupply() {
    stor19 = block.number - initialBlockCount
    stor17 = rewardPerBlockPerAddress * stor19
    return (stor17 * totalGenesisAddresses)
}

function availableBalanceOf(address arg1) {
    if not stor23[address(arg1)]:
        return balanceOf[address(arg1)]
    stor19 = block.number - initialBlockCount
    if stor19 >= 100 * 10^6:
        return balanceOf[address(arg1)]
    stor17 = rewardPerBlockPerAddress * stor19
    stor20 = initialSupplyPerAddress - stor17
    stor18 = balanceOf[address(arg1)] - stor20
    return stor18
}

function transfer(address arg1, uint256 arg2) {
    require not stor23[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if stor23[address(msg.sender)]:
        stor19 = block.number - initialBlockCount
        if stor19 < 100 * 10^6:
            stor17 = rewardPerBlockPerAddress * stor19
            stor20 = initialSupplyPerAddress - stor17
            stor18 = balanceOf[address(msg.sender)] - stor20
            require arg2 <= stor18
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function setGenesisAddress(address arg1) {
    if sub_db113af8Address != msg.sender:
        if sub_e7bab8ecAddress != msg.sender:
            if sub_9328ec0dAddress != msg.sender:
                if sub_6360636bAddress != msg.sender:
                    if sub_8c21d803Address != msg.sender:
                        if sub_3eab5a1fAddress != msg.sender:
                            if sub_ee02a0eaAddress != msg.sender:
                                if sub_bde214daAddress != msg.sender:
                                    if sub_51bff227Address != msg.sender:
                                        if sub_f03d0d1aAddress != msg.sender:
                                            return 0
    balanceOf[address(arg1)] = initialSupplyPerAddress
    stor23[address(arg1)] = 1
    return 1
}



}
