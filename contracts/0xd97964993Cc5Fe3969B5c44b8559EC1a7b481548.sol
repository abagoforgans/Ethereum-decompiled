contract main {




// =====================  Runtime code  =====================


const name = 'Siberian Tiger Coin'

const decimals = 18

const symbol = 'STC'

const INITIAL_SUPPLY = 10000000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address destroyerAddress;

function destroyer() {
    return destroyerAddress
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor3)
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

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'owner Must Eq Msg.sender'
    if stor3:
        revert with 0, 'No Paused'
    stor3 = 1
    emit Pause()
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'owner Must Eq Msg.sender'
    if not stor3:
        revert with 0, 'Paused'
    stor3 = 0
    emit Unpause()
}

function approve(address arg1, uint256 arg2) {
    if stor3:
        revert with 0, 'No Paused'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setDestroyer(address arg1) {
    if stor3:
        revert with 0, 'No Paused'
    if owner != msg.sender:
        revert with 0, 'owner Must Eq Msg.sender'
    destroyerAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'owner Must Eq Msg.sender'
    if not arg1:
        revert with 0, 'newOwner Must Not Eq 0'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    if stor3:
        revert with 0, 'No Paused'
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if stor3:
        revert with 0, 'No Paused'
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if this.address == arg1:
        revert with 0, 'reject Token To Contract'
    if stor3:
        revert with 0, 'No Paused'
    if not arg1:
        revert with 0, 'toaddress Must No Eq 0'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if this.address == arg2:
        revert with 0, 'reject Token To Contract'
    if stor3:
        revert with 0, 'No Paused'
    if not arg2:
        revert with 0, 'toaddress Must Not Eq 0'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) {
    if stor3:
        revert with 0, 'No Paused'
    if destroyerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The destroyer must be equal to the sender'
    if arg1 > balanceOf[stor4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'balance is not enough and destroy value must greater than 0'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'balance is not enough and destroy value must greater than 0'
    require arg1 <= balanceOf[stor4]
    balanceOf[stor4] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1);
    return 1
}



}
