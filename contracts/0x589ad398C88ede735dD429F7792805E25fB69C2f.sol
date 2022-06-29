contract main {




// =====================  Runtime code  =====================


address sub_2a8e593aAddress;
address ownerAddr;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 cap;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function sub_0958a13b(?) {
    return bool(stor2[arg1])
}

function totalSupply() {
    return totalSupply
}

function sub_2a8e593a(?) {
    return sub_2a8e593aAddress
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function sub_5a8be781(?) {
    return bool(stor3[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownerAddr() {
    return ownerAddr
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Spender address must be set.'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addApiAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor2[address(arg1)] = 1
}

function removeApiAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor2[address(arg1)] = 0
}

function addContractAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor3[address(arg1)] = 1
}

function removeContractAddr(address arg1) {
    if ownerAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be an owner.'
    stor3[address(arg1)] = 0
}

function setOwnerAddr(address arg1) {
    if sub_2a8e593aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be a superOwner.'
    ownerAddr = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Spender address must be set.'
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Spender address must be set.'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if sub_2a8e593aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be a superOwner.'
    if not msg.sender:
        revert with 0, 'Target address must be set.'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must not be higher than balance.'
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    mem[128] = 64
    mem[160] = arg1
    mem[192 len ceil32(arg1)] = mem[128 len ceil32(arg1)]
    emit Transfer(arg1, Array(len=arg1, data=mem[192 len arg1]), msg.sender, 0);
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Value must not be higher than sender's balance.'
    if not arg1:
        revert with 0, 'Receiver address must be set.'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if ownerAddr != msg.sender:
        if bool(stor2[address(msg.sender)]) != 1:
            if bool(stor3[address(msg.sender)]) != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Access denied for this address. It has to be an owner or api or allowed contract.'
    if not arg1:
        revert with 0, 'Receiver address must be set.'
    require totalSupply + arg2 >= totalSupply
    if totalSupply + arg2 > cap:
        revert with 0, 'Total supply cap exceeded.'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), 0, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if sub_2a8e593aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Access denied for this address. It has to be a superOwner.'
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must not be higher than allowed balance.'
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    if not arg1:
        revert with 0, 'Target address must be set.'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must not be higher than balance.'
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value must not be higher than sender's balance.'
    if not arg1:
        revert with 0, 'Receiver address must be set.'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        mem[128] = 64
        mem[160] = arg2
        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
        emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value must not be higher than allowed.'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value must not be higher than sender's balance.'
    if not arg2:
        revert with 0, 'Receiver address must be set.'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if ext_code.size(arg2) > 0:
        mem[128] = 64
        mem[160] = arg3
        mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
        emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
