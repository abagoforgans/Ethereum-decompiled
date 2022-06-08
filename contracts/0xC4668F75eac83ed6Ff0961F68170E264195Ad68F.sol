contract main {




// =====================  Runtime code  =====================


const decimals = 18

const tokenSupply = 10^9


address owner;
address reward_contractAddress;
address sub_f8e2a90dAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
array of uint256 name;
array of uint256 symbol;
uint256 TOTALSUPPLY;
uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return TOTALSUPPLY
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function TOTALSUPPLY() {
    return TOTALSUPPLY
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_baa255c7(?) {
    return bool(stor8)
}

function reward_contract() {
    return reward_contractAddress
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function sub_f8e2a90d(?) {
    return sub_f8e2a90dAddress
}

function terminate() {
    if owner != msg.sender:
        revert with 0, 'caller is not contract owner'
    selfdestruct(owner)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    if arg1 + arg2 < arg1:
        revert with 0, 'an overflow occured'
    return (arg1 + arg2)
}

function safeSub(uint256 arg1, uint256 arg2) {
    if arg2 > arg1:
        revert with 0, 'can't end up with negative value'
    return (arg1 - arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'can't end up with negative value'
    require arg2
    return (arg1 / arg2)
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'somebody is sending me free ether, i don't want it, really?'
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        if arg1 * arg2 / arg1 != arg2:
            revert with 0, 'results exceeded 256 bits'
    return (arg1 * arg2)
}

function sub_4a123ae3(?) {
    if owner != msg.sender:
        revert with 0, 'caller is not contract owner'
    sub_f8e2a90dAddress = arg1
    emit Register(Array(len=34, data='Registering trade contract addre', 'ss'), address(arg1));
}

function approve(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Prohibit approving tokens owned by this contract!'
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        emit Transfer(arg2, msg.sender, arg1);
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller does not have sufficient token'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'an overflow occured'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'the token receiver balance overflow and result in negative balance'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'can't end up with negative value'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'an overflow occured'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Prohibiting transfering tokens to this contract!'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'token does NOT have sufficient balance to transfer'
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'token does NOT have sufficient balance to transfer'
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'an overflow occured'
    balanceOf[address(arg2)] += arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'can't end up with negative value'
    balanceOf[address(arg1)] -= arg3
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        revert with 0, 'can't end up with negative value'
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
