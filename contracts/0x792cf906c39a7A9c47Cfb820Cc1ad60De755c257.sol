contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 multiplier;
address owner_address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function multiplier() {
    return multiplier
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner_address() {
    return owner_address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint() payable {
    require msg.value >= 10^17
    balanceOf[address(msg.sender)] += 50 * multiplier
    totalSupply += 50 * multiplier
    emit Minted(msg.sender, 50 * multiplier);
    require balanceOf[address(msg.sender)] >= 50 * multiplier
    require totalSupply >= 50 * multiplier
}

function ownerMint() payable {
    require msg.sender == owner_address
    balanceOf[address(msg.sender)] += 500 * multiplier
    totalSupply += 500 * multiplier
    emit Minted(msg.sender, 500 * multiplier);
    require balanceOf[address(msg.sender)] >= 500 * multiplier
    require totalSupply >= 500 * multiplier
}

function transferFunds() {
    require msg.sender == owner_address
    require eth.balance(this.address) > 0
    call owner_address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require not eth.balance(this.address)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1
    require arg2
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
