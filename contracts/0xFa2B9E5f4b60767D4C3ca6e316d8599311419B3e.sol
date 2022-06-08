contract main {




// =====================  Runtime code  =====================


const name = 'Paradise Token'

const sub_08a9b96e(?) = 300000000 * 10^18

const decimals = 18

const sub_719cf088(?) = (25000 * 10^18 * 3600)

const symbol = 'PDT'

const TokenAllowance = 210000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address adminAddr;
uint8 stor5; offset 160
uint128 stor5; offset 160
address sub_37987710Address;

function totalSupply() {
    return totalSupply
}

function sub_37987710(?) {
    return sub_37987710Address
}

function transferEnabled() {
    return bool(uint8(stor5.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function adminAddr() {
    return adminAddr
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function enableTransfer() {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 1
    allowance[address(msg.sender)][address(stor5.field_0)] = 0
    emit Approval(0, msg.sender, sub_37987710Address);
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setTokenOffering(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not uint8(stor5.field_160)
    if not arg2:
        allowance[address(msg.sender)][address(arg1)] = 210000000 * 10^18
        emit Approval(210000000 * 10^18, msg.sender, arg1);
    else:
        require arg2 <= 210000000 * 10^18
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    sub_37987710Address = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor5.field_160):
        if adminAddr != msg.sender:
            require msg.sender == sub_37987710Address
    require arg1
    require arg1 != this.address
    require arg1 != owner
    require arg1 != adminAddr
    require arg1 != sub_37987710Address
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
    require calldata.size - 4 >= 96
    if not uint8(stor5.field_160):
        if adminAddr != msg.sender:
            require msg.sender == sub_37987710Address
    require arg2
    require arg2 != this.address
    require arg2 != owner
    require arg2 != adminAddr
    require arg2 != sub_37987710Address
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



}
