contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 20
    stor4.length.field_8 = 'Belgian Basic Income' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'BBI' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    require not msg.value
    stor3 = msg.sender
    stor7 = block.timestamp
    return code.data[396 len 4920]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 stor7;
mapping of uint256 stor8;
mapping of address stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_d309cfc4(?) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    stor9[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]] = arg1
    require not stor8[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]]
    require totalSupply + 1 >= totalSupply
    totalSupply++
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    stor8[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]] = block.timestamp
    emit 0x62bb738f: address(arg1), Array(len=arg2.length, data=arg2[all]), 1
}

function mint(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    require stor9[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]] == msg.sender
    require stor8[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]] >= stor7
    require totalSupply + 1 >= totalSupply
    totalSupply++
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    stor8[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]] = block.timestamp
    emit minted(address(arg1), Array(len=arg2.length, data=arg2[all]), 1);
}

function sub_53c9ea26(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    _24 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    stor9[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]] = stor9[_24]
    stor8[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]] = stor8[_24]
    stor9[_24] = 0
    stor8[_24] = 0
}

function sub_55d3fd24(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if arg2:
        require balanceOf[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]] + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = balanceOf[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]] + balanceOf[arg2]
    else:
        require balanceOf[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]] <= totalSupply
        totalSupply -= balanceOf[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]]
    balanceOf[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]] = 0
    stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 0
    stor8[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 0
}



}
