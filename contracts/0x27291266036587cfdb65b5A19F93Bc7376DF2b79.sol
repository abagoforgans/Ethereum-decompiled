contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
address stor4;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    Mask(88, 0, stor3.field_168) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor4 = code.data[9087 len 20]
    stor0 = code.data[9107 len 32]
    stor1[address(msg.sender)] = code.data[9107 len 32]
    emit Transfer(code.data[9107 len 32], 0, msg.sender);
    return code.data[430 len 8645]
}



// =====================  Runtime code  =====================


const name = 'BFTE TOKEN'

const decimals = 18

const symbol = 'BFTE'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
address adminAddress;

function totalSupply() {
    return totalSupply
}

function pausedPublic() {
    return bool(uint8(stor3.field_160))
}

function pausedOwnerAdmin() {
    return bool(uint8(stor3.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require msg.sender == owner
    emit AdminTransferred(adminAddress, arg1);
    adminAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function pause(bool arg1, bool arg2) {
    require msg.sender == owner
    if not arg1:
        require arg2 != 1
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg2)
    emit PausePublic(arg1);
    emit PauseOwnerAdmin(arg2);
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        require not uint8(stor3.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        require not uint8(stor3.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        require not uint8(stor3.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    if uint8(stor3.field_160):
        require not uint8(stor3.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    if uint8(stor3.field_160):
        require not uint8(stor3.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender
    require this.address != msg.sender
    if uint8(stor3.field_160):
        require not uint8(stor3.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}



}
