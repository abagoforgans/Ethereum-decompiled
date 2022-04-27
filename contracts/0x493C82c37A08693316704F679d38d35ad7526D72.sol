contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    stor1 = msg.sender
    stor5 = 0
    stor6 = 0
    require not msg.value
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'Crypto CAD' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'CADc' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 2
    require msg.sender == stor1
    require stor6 + 20171226000 > stor6
    stor6 += 20171226000
    stor7[address(msg.sender)] += 20171226000
    emit Transfer(20171226000, 0, msg.sender);
    return code.data[867 len 5070]
}



// =====================  Runtime code  =====================


mapping of uint256 allowance;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

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
    revert
}

function changeOwner(address arg1) {
    require msg.sender == stor1
    require arg1
    require arg1 != stor1
    stor1 = arg1
    emit ChangeOwner(stor1);
}

function burnTokens(uint256 arg1) {
    require balanceOf[address(msg.sender)] > arg1
    totalSupply -= arg1
    balanceOf[stor1] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function mintTokens(uint256 arg1) {
    require msg.sender == stor1
    require totalSupply + arg1 > totalSupply
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != msg.sender
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require msg.sender
    require arg1 != msg.sender
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require arg1 != this.address
    require msg.sender
    require arg1 != msg.sender
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg2 != this.address
    require arg1
    require arg1 != arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg3, 96, 0
        require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
