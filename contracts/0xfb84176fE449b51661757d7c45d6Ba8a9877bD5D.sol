contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address sub_5506ed44;
uint8 tokenFrozen;
mapping of struct frozenWallets;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_5506ed44(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5506ed44.length
    return sub_5506ed44[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function frozenWallets(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(frozenWallets[arg1].field_0), 
           frozenWallets[arg1].field_256,
           frozenWallets[arg1].field_512,
           frozenWallets[arg1].field_768
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function tokenFrozen() payable {
    return bool(tokenFrozen)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function freezeToken(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenFrozen = uint8(arg1)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_09ce3855(?) payable {
    require calldata.size - 4 >= 64
    if arg1 == owner:
        return True
    if tokenFrozen:
        return not bool(tokenFrozen)
    if not frozenWallets[address(arg1)].field_0:
        return not bool(frozenWallets[address(arg1)].field_0)
    if block.timestamp >= frozenWallets[address(arg1)].field_768:
        return block.timestamp >= frozenWallets[address(arg1)].field_768
    require arg2 <= balanceOf[address(arg1)]
    return balanceOf[address(arg1)] - arg2 >= frozenWallets[address(arg1)].field_512
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    if owner != msg.sender:
        require not tokenFrozen
        if frozenWallets[address(msg.sender)].field_0:
            if block.timestamp < frozenWallets[address(msg.sender)].field_768:
                require arg2 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg2 >= frozenWallets[address(msg.sender)].field_512
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    if arg1 != owner:
        require not tokenFrozen
        if frozenWallets[address(arg1)].field_0:
            if block.timestamp < frozenWallets[address(arg1)].field_768:
                require arg3 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] - arg3 >= frozenWallets[address(arg1)].field_512
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}



}
