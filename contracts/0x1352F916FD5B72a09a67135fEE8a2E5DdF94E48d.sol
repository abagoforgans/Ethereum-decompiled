contract main {




// =====================  Runtime code  =====================


const name = 'QueenBeeCoin'

const decimals = 18

const symbol = 'QBC'

const INITIAL_SUPPLY = 8000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint8 stor4; offset 160
address adminAddr;
mapping of uint256 stor5;

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
}

function transferEnabled() {
    return bool(stor4)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function adminAddr() {
    return adminAddr
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

function enableTransfer() {
    require msg.sender == owner
    stor4 = 1
}

function disableTransfer() {
    require msg.sender == owner
    stor4 = 0
}

function changeAdmin(address arg1) {
    require msg.sender == owner
    adminAddr = arg1
}

function unlockAccount(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function finishMinting() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit MintFinished()
    return 1
}

function lockAccount(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    stor5[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 0
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if bool(stor4) != 1:
        if owner != msg.sender:
            require msg.sender == adminAddr
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[msg.sender] - arg2 >= stor5[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if bool(stor4) != 1:
        if owner != msg.sender:
            require msg.sender == adminAddr
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= stor5[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
