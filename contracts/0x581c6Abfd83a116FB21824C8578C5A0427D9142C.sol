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

function _fallback() payable {
    stor4 = 0
    stor6 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -7036] = code.data[7623 len -7036]
    mem[64] = -6940
    stor3 = msg.sender
    stor11 = msg.sender
    stor3 = msg.sender
    stor14[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor15[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = mem[160]
    stor16 = mem[192]
    stor1[stor3] = mem[160]
    if mem[160] > 0:
        emit Minted(stor3, stor0);
    if not mem[224]:
        stor6 = 1
        require stor0
    return code.data[587 len 7036]
}



// =====================  Runtime code  =====================


const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 released; offset 160
address releaseAgentAddress;
mapping of uint8 stor5;
uint8 mintingFinished;
mapping of uint8 stor7;
mapping of struct sub_4b360c47;
array of address reservedTokensDestinations;
uint256 reservedTokensDestinationsLen;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of struct name;
array of struct symbol;
uint256 decimals;

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mintAgents(address arg1) {
    return bool(stor7[arg1])
}

function sub_4b360c47(?) {
    return sub_4b360c47[address(arg1)].field_256
}

function reservedTokensList(address arg1) {
    return bool(uint8(sub_4b360c47[arg1].field_0)), sub_4b360c47[arg1].field_256
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
    return bool(released)
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

function sub_e4dd105a(?) {
    return bool(uint8(sub_4b360c47[address(arg1)].field_0))
}

function _fallback() payable {
    revert
}

function canUpgrade() {
    if not released:
        return bool(released)
    return 1
}

function releaseTokenTransfer() {
    require releaseAgentAddress == msg.sender
    mintingFinished = 1
    released = 1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not released
    releaseAgentAddress = arg1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not released
    stor5[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUpgradeState() {
    if not released:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function setMintAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not mintingFinished
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
    if not released:
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
    if not released:
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

function sub_4efddd61(?) {
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
    uint8(sub_4b360c47[address(arg1)].field_0) = uint8(arg2)
    sub_4b360c47[address(arg1)].field_256 = arg3
}

function upgrade(uint256 arg1) {
    require released
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
    call upgradeAgentAddress.upgradeFrom(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require released
    require arg1
    require upgradeMasterAddress == msg.sender
    if released:
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
    require not mintingFinished
    require ext_code.size(0xe9ae538ffea453eae179e45a787ca76db619d40d)
    delegate 0xe9ae538ffea453eae179e45a787ca76db619d40d.plus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args totalSupply, arg2
    require delegate.return_code
    totalSupply = delegate.return_data[0]
    require ext_code.size(0xe9ae538ffea453eae179e45a787ca76db619d40d)
    delegate 0xe9ae538ffea453eae179e45a787ca76db619d40d.plus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg1)], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, 0, arg1);
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

function sub_a32bb01b(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _24 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _28 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require owner == msg.sender
        reservedTokensDestinations.length++
        if not reservedTokensDestinations.length > reservedTokensDestinations.length + 1:
            mem[0] = 9
            address(reservedTokensDestinations[reservedTokensDestinations.length]) = mem[(32 * idx) + 140 len 20]
            reservedTokensDestinationsLen++
            _31 = mem[64]
            mem[64] = mem[64] + 64
            mem[_31] = bool(mem[(32 * idx) + (32 * arg1.length) + 160])
            mem[_31 + 32] = _28
        else:
            s = reservedTokensDestinations.length + sha3(9) + 1
            while sha3(9) + reservedTokensDestinations.length > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[0] = 9
            address(reservedTokensDestinations[reservedTokensDestinations.length]) = mem[(32 * idx) + 140 len 20]
            reservedTokensDestinationsLen++
            _41 = mem[64]
            mem[64] = mem[64] + 64
            mem[_41] = bool(mem[(32 * idx) + (32 * arg1.length) + 160])
            mem[_41 + 32] = _28
        mem[0] = address(_24)
        mem[32] = 8
        uint8(sub_4b360c47[address(_24)].field_0) = uint8(bool(_26))
        sub_4b360c47[address(_24)].field_256 = _28
        idx = idx + 1
        continue 
}



}
