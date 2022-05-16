contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
address stor4;

function _fallback() payable {
    stor0 = 0
    bool(stor1.length) = 0
    stor1.length.field_1 = 0
    stor1.length.field_8 = mem[128 len 31]
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 0
    stor2.length.field_8 = mem[160 len 31]
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[192 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = msg.sender
    return code.data[393 len 7469]
}



// =====================  Runtime code  =====================


const decimals = 0


uint256 totalSupply;
array of struct symbol;
array of struct name;
array of uint256 ipfsHash;
address owner;
address sub_2a05bbcbAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
address stor9;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function sub_2a05bbcb(?) {
    return sub_2a05bbcbAddress
}

function sub_344456c8(?) {
    return bool(stor8[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function ipfsHash() {
    return ipfsHash[0 len ipfsHash.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_223095ff(?) {
    require msg.sender == owner
    sub_2a05bbcbAddress = arg1
}

function setKittyCoreAddress(address arg1) {
    require msg.sender == owner
    stor9 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function updateIpfsHash(string arg1) {
    require msg.sender == owner
    ipfsHash[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function removeItem(uint256 arg1) {
    require ext_code.size(stor9)
    call stor9.0x6352211e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    stor8[arg1] = 0
    emit Remove(arg1);
}

function sub_fdbf1989(?) {
    require balanceOf[address(msg.sender)] > 0
    require ext_code.size(stor9)
    call stor9.0x6352211e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require not stor8[arg1]
    stor8[arg1] = 1
    balanceOf[address(msg.sender)]--
    emit 0x2fc96119: arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndApply(address arg1, uint256 arg2) {
    if sub_2a05bbcbAddress != msg.sender:
        require msg.sender == owner
    require balanceOf[address(msg.sender)] > 0
    require ext_code.size(stor9)
    call stor9.0x6352211e with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require arg1 == ext_call.return_data[12 len 20]
    require not stor8[arg2]
    stor8[arg2] = 1
    balanceOf[address(msg.sender)]--
    emit 0x2fc96119: arg2
}

function sub_32c12ca7(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == owner
    require not totalSupply
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = uint256(symbol.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + symbol.length + 160 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len symbol.length]) == sha3(None)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = uint256(name.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + name.length + 160 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len name.length]) == sha3(None)
    require arg1 > 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != sha3(None)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
    require sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32]) != sha3(None)
    totalSupply = arg1
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    name[].field_0 = Array(len=arg3.length, data=arg3[all])
    balanceOf[stor4] = arg1
}



}
