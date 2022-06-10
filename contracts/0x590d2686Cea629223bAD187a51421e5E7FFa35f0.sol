contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor6;
address stor7;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function balanceEth(address arg1) {
    return eth.balance(arg1)
}

function sub_8fe679e4(?) {
    require msg.sender == stor6
    require arg1
    stor7 = arg1
    balanceOf[stor7] = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferEth(address arg1) {
    require msg.sender == stor6
    require arg1
    require eth.balance(stor6) > 0
    call arg1 with:
       value eth.balance(stor6) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function allocateToken(address arg1, uint256 arg2) {
    require msg.sender == stor6
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg2
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferBatch(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor6
    require balanceOf[stor7] >= arg2 * arg1.length
    balanceOf[stor7] += -1 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            mem[0] = stor7
            mem[32] = 4
            balanceOf[stor7] += arg2
        else:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _28 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, stor7, address(_28));
        idx = idx + 1
        continue 
    return 1
}



}
