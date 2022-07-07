contract main {




// =====================  Runtime code  =====================


address owner;
address tokenRewardAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function tokenReward() {
    return tokenRewardAddress
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
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function sub_8ac5752e(?) payable {
    require msg.sender == owner
    tokenRewardAddress = arg1
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FundTransfer(owner, arg2, 1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    if stor8[address(arg1)]:
        revert with 0, 'the Accont has been frozen!'
    if stor8[address(arg2)]:
        revert with 0, 'the Destination has been frozen!'
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _transfer(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        revert with 0, 'Please Verifiy the Destination'
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    if stor8[address(arg1)]:
        revert with 0, 'the Accont has been frozen!'
    if stor8[address(arg2)]:
        revert with 0, 'the Destination has been frozen!'
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Please Verifiy the Destination'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if stor8[address(msg.sender)]:
        revert with 0, 'the Accont has been frozen!'
    if stor8[address(arg1)]:
        revert with 0, 'the Destination has been frozen!'
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}



}
