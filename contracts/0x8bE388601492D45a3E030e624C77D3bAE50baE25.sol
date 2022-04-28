contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor2;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;
uint256 stor10;

function _fallback() {
    mem[96 len -8563] = code.data[9081 len -8563]
    mem[64] = -8467
    stor0 = msg.sender
    stor7[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor9 = mem[223 len 1]
    stor10 = mem[96] * 10^stor9
    stor2[address(msg.sender)] = stor10
    return code.data[518 len 8563]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

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

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function sub_2702aa49(?) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function sub_2dd22ae5(?) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function sub_6255ff1c(?) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function sub_a078b59a(?) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addToWhiteList(address arg1) {
    if bool(stor4[address(msg.sender)]) == 1:
        stor3[address(arg1)] = 1
    else:
        if msg.sender == owner:
            stor3[address(arg1)] = 1
}

function removeFromWhiteList(address arg1) {
    if bool(stor5[address(msg.sender)]) == 1:
        stor3[address(arg1)] = 0
    else:
        if msg.sender == owner:
            stor3[address(arg1)] = 0
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    if stor3[address(arg1)]:
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, 96, 0
            require ext_call.success
        emit Transfer(arg2, msg.sender, arg1, sha3(None));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3
    require arg1 != arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    if stor3[address(arg2)]:
        emit Transfer(arg3, arg1, arg2);
    else:
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg3, 96, 0
            require ext_call.success
        emit Transfer(arg3, arg1, arg2, sha3(None));
    require allowance[address(arg1)][address(msg.sender)] < -1
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1
    require arg2
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    if stor3[address(arg1)]:
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if ext_code.size(arg1) > 0:
            mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = msg.sender
            mem[ceil32(arg3.length) + 164] = arg2
            mem[ceil32(arg3.length) + 196] = 96
            mem[ceil32(arg3.length) + 228] = arg3.length
            mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
            require ext_call.success
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg2
    require arg3
    require arg1 != arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    if stor3[address(arg2)]:
        mem[ceil32(arg4.length) + 128] = arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if ext_code.size(arg2) <= 0:
            mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
            _118 = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 128 len arg4.length % 32])
            mem[ceil32(arg4.length) + 128] = arg3
            emit Transfer(arg3, arg1, arg2, _118);
        else:
            mem[ceil32(arg4.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = arg1
            mem[ceil32(arg4.length) + 164] = arg3
            mem[ceil32(arg4.length) + 196] = 96
            mem[ceil32(arg4.length) + 228] = arg4.length
            mem[ceil32(arg4.length) + 260 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            require ext_code.size(arg2)
            call arg2.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            require ext_call.success
            mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
            _208 = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 128 len arg4.length % 32])
            mem[ceil32(arg4.length) + 128] = arg3
            emit Transfer(arg3, arg1, arg2, _208);
    require allowance[address(arg1)][address(msg.sender)] < -1
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    emit Transfer(arg3, arg1, arg2, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 128 len arg4.length % 32]));
    return 1
}



}
