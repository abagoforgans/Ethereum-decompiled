contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor0 = 1000000000 * 10^18
    stor2[address(msg.sender)] = 1000000000 * 10^18
    return code.data[109 len 3225]
}



// =====================  Runtime code  =====================


const name = 'ArnaToken'

const decimals = 18

const symbol = 'ARNA'

const INITIAL_SUPPLY = 1000000000 * 10^18


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
address crowdsaleAddress;
mapping of uint256 stor4;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor1.field_160))
}

function crowdsale() {
    return crowdsaleAddress
}

function _fallback() payable {
    revert
}

function setCrowdsale(address arg1) {
    require owner == msg.sender
    crowdsaleAddress = arg1
}

function setTransferable(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function allowance(address arg1, address arg2) {
    if not uint8(stor1.field_160):
        if owner != msg.sender:
            require crowdsaleAddress == msg.sender
    return stor4[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        if owner != msg.sender:
            require crowdsaleAddress == msg.sender
    stor4[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        if owner != msg.sender:
            require crowdsaleAddress == msg.sender
    require arg2 + stor4[address(msg.sender)][address(arg1)] >= stor4[address(msg.sender)][address(arg1)]
    stor4[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + stor4[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        if owner != msg.sender:
            require crowdsaleAddress == msg.sender
    if arg2 <= stor4[address(msg.sender)][address(arg1)]:
        stor4[address(msg.sender)][address(arg1)] -= arg2
    else:
        stor4[address(msg.sender)][address(arg1)] = 0
    emit Approval(stor4[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if not uint8(stor1.field_160):
        if owner != msg.sender:
            require crowdsaleAddress == msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= stor4[address(arg1)][address(msg.sender)]
    if not uint8(stor1.field_160):
        if owner != msg.sender:
            require crowdsaleAddress == msg.sender
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= stor4[address(arg1)][address(msg.sender)]
    stor4[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
