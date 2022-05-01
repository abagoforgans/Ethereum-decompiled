contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor5 = 18
    require not msg.value
    mem[96 len -5526] = code.data[6027 len -5526]
    mem[64] = -5430
    stor2 = msg.sender
    stor0 = 3 * 10^9 * 10^stor5
    stor1[address(msg.sender)] = stor0
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[501 len 5526]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor6;
mapping of uint256 allowance;

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
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.approvalFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
        require ext_call.return_data[0]
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor6[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor6[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor6[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
        require ext_call.return_data[0]
    return 1
}



}
