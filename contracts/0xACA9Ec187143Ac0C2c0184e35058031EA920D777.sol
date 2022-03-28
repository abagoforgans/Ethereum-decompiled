contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() {
    mem[96 len -2484] = code.data[3051 len -2484]
    mem[64] = -2388
    stor0 = msg.sender
    stor1 = mem[236 len 20]
    stor2 = mem[268 len 20]
    mem[32] = 7
    stor7[address(msg.sender)] = mem[96]
    stor3 = mem[96]
    mem[0] = 4
    stor4.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor5.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor5[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor5.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor5[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor5.length + 31 / 32 > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor6 = mem[160]
    stor7[stor0] = mem[96]
    return code.data[567 len 2484]
}



// =====================  Runtime code  =====================


address owner;
address marketAddress;
address adminAddress;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 sub_0deae51a;
mapping of uint256 balanceOf;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function sub_0deae51a(?) {
    return sub_0deae51a
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function market() {
    return marketAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function admin() {
    return adminAddress
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function setOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setAdmin(address arg1) {
    require owner == msg.sender
    adminAddress = arg1
}

function setMarket(address arg1) {
    require owner == msg.sender
    marketAddress = arg1
}

function sub_c2d245b9(?) {
    if owner == msg.sender:
        return True
    return (marketAddress == msg.sender)
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        require marketAddress == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require marketAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit 0x1939c107: 0, this.address, arg2
    emit 0x1939c107: this.address, arg1, arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require marketAddress == msg.sender
    require not stor8[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit 0x1939c107: arg1, arg2, arg3
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require marketAddress == msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x1939c107: msg.sender, arg1, arg2
    return 1
}



}
