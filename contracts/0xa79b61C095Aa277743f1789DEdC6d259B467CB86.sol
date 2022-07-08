contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
address stor4;
address stor5;
mapping of uint256 balanceOf;
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
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'must be contract owner'
    call stor4 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function topupSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'must be admin'
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[stor5] + arg1 >= balanceOf[stor5]
    balanceOf[stor5] += arg1
    emit Transfer(arg1, 0, stor5);
    emit 0x6d4f4d29: arg1, totalSupply, msg.sender
    return totalSupply
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'must be contract owner'
    require balanceOf[stor5] <= balanceOf[stor5]
    balanceOf[stor5] = 0
    require balanceOf[address(arg1)] + balanceOf[stor5] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor5]
    emit Transfer(balanceOf[stor5], stor5, arg1);
    emit ChangeAdmin(stor5, arg1);
    stor5 = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'must be admin'
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[stor5] + arg2 >= balanceOf[stor5]
    balanceOf[stor5] += arg2
    emit Transfer(arg2, arg1, stor5);
    emit 0x9d0841c4: arg2, arg1
    return balanceOf[address(arg1)], balanceOf[address(msg.sender)]
}



}
