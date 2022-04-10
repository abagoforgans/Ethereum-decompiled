contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor10;

function _fallback() {
    stor1 = msg.sender
    stor4 = 8
    stor10 = 10^stor4
    stor5 = stor10
    stor8 = 1600 * 10^6 * 3600
    bool(stor2.length) = 0
    stor2.length.field_1 = 16
    stor2.length.field_8 = 'Stable STA Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'STA' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 4026160
    stor6[address(msg.sender)] = stor5
    return code.data[598 len 5282]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 icoEndBlock;
uint256 maxSupply;
uint256 sub_7432d0af;
uint256 stor10;
address icoAddress;
mapping of address sub_99ea64aa;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function icoEndBlock() {
    return icoEndBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7432d0af(?) {
    return sub_7432d0af
}

function icoAddress() {
    return icoAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_99ea64aa(?) {
    return sub_99ea64aa[arg1]
}

function maxSupply() {
    return maxSupply
}

function selfDestroy() {
    require msg.sender == owner
    selfdestruct(this.address)
}

function _fallback() payable {
    revert
}

function setIcoAddress(address arg1) {
    require msg.sender == owner
    require not icoAddress
    icoAddress = arg1
}

function burn(address arg1, uint256 arg2) {
    require icoAddress
    if owner != msg.sender:
        require msg.sender == icoAddress
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function claimMiningReward() {
    require icoAddress
    if icoAddress != msg.sender:
        require msg.sender == owner
    require block.number <= icoEndBlock
    require sub_7432d0af * stor10 < maxSupply
    require not sub_99ea64aa[block.number]
    totalSupply += stor10
    balanceOf[address(block.coinbase)] += stor10
    sub_7432d0af++
    sub_99ea64aa[block.number] = block.coinbase
    emit MessageClaimMiningReward(block.number, stor10, block.coinbase);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 260] = mem[128]
            mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
        require ext_call.success
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}



}
