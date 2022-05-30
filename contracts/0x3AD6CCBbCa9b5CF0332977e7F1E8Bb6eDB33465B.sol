contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address awardPoolAddress;
address sub_e0a9be75Address;
address businessAddress;
address teamAddress;
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
    return balanceOf[arg1]
}

function stopped() {
    return bool(stor0)
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function awardPool() {
    return awardPoolAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_e0a9be75(?) {
    return sub_e0a9be75Address
}

function business() {
    return businessAddress
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    stor0 = 1
    emit SetStop(msg.sender, 1);
}

function start() {
    require msg.sender == owner
    stor0 = 0
    emit SetStop(msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function setOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit SetOwner(arg1, msg.sender);
}

function burn(uint256 arg1) {
    require not stor0
    require arg1 <= balanceOf[msg.sender]
    require balanceOf[msg.sender] - arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not stor0
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require allowance[address(arg1)][msg.sender] - arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] + balanceOf[arg1] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[arg1] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[arg1] == balanceOf[address(msg.sender)] + balanceOf[arg1]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 <= allowance[address(arg1)][msg.sender]
    require allowance[address(arg1)][msg.sender] - arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require not stor0
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg1)] + balanceOf[arg2] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[arg2] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[arg2] == balanceOf[address(arg1)] + balanceOf[arg2]
    return 1
}



}
