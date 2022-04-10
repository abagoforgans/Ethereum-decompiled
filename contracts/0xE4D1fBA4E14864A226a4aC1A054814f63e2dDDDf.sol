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

function _fallback() {
    stor1 = msg.sender
    stor5 = 0
    stor7 = 16 * 10^6 * 3600
    bool(stor2.length) = 0
    stor2.length.field_1 = 16
    stor2.length.field_8 = 'Stable STB Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 4
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'STB' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 4026160
    stor6[address(msg.sender)] = stor5
    return code.data[565 len 4450]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 maxSupply;
uint256 icoEndBlock;
address icoAddress;

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

function icoAddress() {
    return icoAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
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

function mint(address arg1, uint256 arg2) {
    require icoAddress
    if icoAddress != msg.sender:
        require msg.sender == owner
    require block.number > icoEndBlock
    require totalSupply <= -arg2 - 1
    require totalSupply + arg2 < maxSupply
    require totalSupply <= -arg2 - 1
    totalSupply += arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1, sha3(None));
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
