contract main {




// =====================  Runtime code  =====================


const name = 'The Populstay ERC20 token'

const decimals = 18

const symbol = 'PPS'

const INITIAL_SUPPLY = 5000000000 * 10^18


mapping of uint256 balances;
mapping of uint256 allowed;
uint256 totalSupply_;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address founderAddress;

function totalSupply() {
    return totalSupply_
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function totalSupply_() {
    return totalSupply_
}

function founder() {
    return founderAddress
}

function allowed(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function locker() {
    return bool(uint8(stor4.field_160))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unLock() {
    require msg.sender == owner
    require uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 0
    emit UnLock()
    return 1
}

function lock() {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    emit Lock()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    emit Approval(arg2, founderAddress, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor4.field_160)
    require arg3 <= balances[address(arg1)]
    require arg2
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowed[address(msg.sender)][address(arg1)]
        allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function revoke(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor4.field_160)
    require arg2 <= balances[address(arg1)]
    require arg1
    require balances[address(stor4.field_0)] + arg2 >= balances[address(stor4.field_0)]
    balances[address(stor4.field_0)] += arg2
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, founderAddress);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor4.field_160)
    require arg2 <= balances[address(stor4.field_0)]
    require arg1
    require arg2 <= balances[address(stor4.field_0)]
    balances[address(stor4.field_0)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, founderAddress, arg1);
    return 1
}



}
