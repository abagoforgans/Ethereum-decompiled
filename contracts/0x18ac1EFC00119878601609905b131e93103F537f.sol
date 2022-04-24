contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint8 stor4; offset 160
uint8 stor6;
uint256 stor10;
address stor11;
array of uint256 stor14;
array of uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor4 = 0
    stor6 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -7266] = code.data[7867 len -7266]
    mem[64] = -7170
    stor3 = msg.sender
    stor11 = msg.sender
    stor3 = msg.sender
    stor14[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor15[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = mem[160]
    stor16 = mem[192]
    stor17 = mem[256]
    stor1[stor3] = mem[160]
    if mem[160] > 0:
        emit Minted(stor3, stor0);
    if not mem[224]:
        stor6 = 1
        require stor0
    return code.data[601 len 7266]
}



// =====================  Runtime code  =====================


const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
address releaseAgentAddress;
mapping of uint8 stor5;
uint8 stor6;
mapping of uint8 stor7;
mapping of struct reservedTokensListValInPercentageDecimals;
array of address reservedTokensDestinations;
uint256 reservedTokensDestinationsLen;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of struct name;
array of struct symbol;
uint256 decimals;
uint256 minCap;

function mintingFinished() {
    return bool(stor6)
}

function name() {
    return name[0 len name.length].field_0
}

function getReservedTokensListValInPercentageDecimals(address arg1) {
    return reservedTokensListValInPercentageDecimals[address(arg1)].field_512
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getReservedTokensListValInTokens(address arg1) {
    return reservedTokensListValInPercentageDecimals[address(arg1)].field_0
}

function minCap() {
    return minCap
}

function mintAgents(address arg1) {
    return bool(stor7[arg1])
}

function reservedTokensList(address arg1) {
    return reservedTokensListValInPercentageDecimals[arg1].field_0, 
           reservedTokensListValInPercentageDecimals[arg1].field_256,
           reservedTokensListValInPercentageDecimals[arg1].field_512
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

function reservedTokensDestinations(uint256 arg1) {
    require arg1 < reservedTokensDestinations.length
    return address(reservedTokensDestinations[arg1])
}

function transferAgents(address arg1) {
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function released() {
    return bool(stor4)
}

function getReservedTokensListValInPercentageUnit(address arg1) {
    return reservedTokensListValInPercentageDecimals[address(arg1)].field_256
}

function reservedTokensDestinationsLen() {
    return reservedTokensDestinationsLen
}

function totalUpgraded() {
    return totalUpgraded
}

function releaseAgent() {
    return releaseAgentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function canUpgrade() {
    if not stor4:
        return bool(stor4)
    return 1
}

function releaseTokenTransfer() {
    require releaseAgentAddress == msg.sender
    stor6 = 1
    stor4 = 1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not stor4
    releaseAgentAddress = arg1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor4
    stor5[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUpgradeState() {
    if not stor4:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function setMintAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor6
    stor7[address(arg1)] = uint8(arg2)
    emit MintingAgentChanged(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor4:
        require stor5[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor4:
        require stor5[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    require stor4
    require upgradeAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    require arg1 + totalUpgraded >= arg1
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require stor4
    require arg1
    require upgradeMasterAddress == msg.sender
    if stor4:
        if upgradeAgentAddress:
            require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == totalSupply
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function mint(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)]
    require not stor6
    require ext_code.size(0xb9627dc147a6b729645ac441b4594210dcb48931)
    delegate 0xb9627dc147a6b729645ac441b4594210dcb48931.0x66098d4f with:
         gas gas_remaining - 710 wei
        args totalSupply, arg2
    require delegate.return_code
    totalSupply = delegate.return_data[0]
    require ext_code.size(0xb9627dc147a6b729645ac441b4594210dcb48931)
    delegate 0xb9627dc147a6b729645ac441b4594210dcb48931.0x66098d4f with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg1)], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, 0, arg1);
}

function setReservedTokensList(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    reservedTokensDestinations.length++
    if not reservedTokensDestinations.length <= reservedTokensDestinations.length + 1:
        idx = reservedTokensDestinations.length + 1
        while reservedTokensDestinations.length > idx:
            uint256(reservedTokensDestinations[idx]) = 0
            idx = idx + 1
            continue 
    address(reservedTokensDestinations[reservedTokensDestinations.length]) = arg1
    reservedTokensDestinationsLen++
    reservedTokensListValInPercentageDecimals[address(arg1)].field_0 = arg2
    reservedTokensListValInPercentageDecimals[address(arg1)].field_256 = arg3
    reservedTokensListValInPercentageDecimals[address(arg1)].field_512 = arg4
}

function setTokenInformation(string arg1, string arg2) {
    require owner == msg.sender
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint256(name.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + 256 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = symbol.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + 288 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit UpdatedTokenInformation(Array(len=name.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 96);
}

function setReservedTokensListMultiple(address[] arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _33 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _35 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require owner == msg.sender
        reservedTokensDestinations.length++
        if not reservedTokensDestinations.length > reservedTokensDestinations.length + 1:
            mem[0] = 9
            address(reservedTokensDestinations[reservedTokensDestinations.length]) = mem[(32 * idx) + 140 len 20]
            reservedTokensDestinationsLen++
            _38 = mem[64]
            mem[64] = mem[64] + 96
            mem[_38] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_38 + 32] = _33
            mem[_38 + 64] = _35
        else:
            s = reservedTokensDestinations.length + sha3(9) + 1
            while sha3(9) + reservedTokensDestinations.length > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[0] = 9
            address(reservedTokensDestinations[reservedTokensDestinations.length]) = mem[(32 * idx) + 140 len 20]
            reservedTokensDestinationsLen++
            _50 = mem[64]
            mem[64] = mem[64] + 96
            mem[_50] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_50 + 32] = _33
            mem[_50 + 64] = _35
        mem[0] = address(_29)
        mem[32] = 8
        reservedTokensListValInPercentageDecimals[address(_29)].field_0 = _31
        reservedTokensListValInPercentageDecimals[address(_29)].field_256 = _33
        reservedTokensListValInPercentageDecimals[address(_29)].field_512 = _35
        idx = idx + 1
        continue 
}



}
