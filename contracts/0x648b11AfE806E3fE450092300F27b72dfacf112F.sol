contract main {




// =====================  Runtime code  =====================


const decimals = 18


uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
array of address stor4;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value >= 10^17
    require stor5 < stor4.length
    require stor4.length
    stor5 = stor5 + 1 % stor4.length
    call stor4[stor5] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(stor4[stor5], msg.value);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function push(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(msg.sender)] >= 10^18 * arg2
    require balanceOf[address(arg1)] + (10^18 * arg2) >= balanceOf[address(arg1)]
    require 10^18 * arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg2
    require balanceOf[address(arg1)] + (10^18 * arg2) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), msg.sender, arg1);
    emit PreICOTokenPushed((10^18 * arg2), arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
