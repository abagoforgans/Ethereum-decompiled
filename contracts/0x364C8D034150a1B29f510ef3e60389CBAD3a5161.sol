contract main {




// =====================  Runtime code  =====================


const name = 'HUMToken'

const decimals = 18

const symbol = 'HUM'

const INITIAL_SUPPLY = 2500000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address rootAddress;
mapping of address owners;
uint8 stor5;
mapping of uint8 stor6;
uint8 stor7;

function owners(address arg1) {
    return owners[arg1]
}

function mintingFinished() {
    return bool(stor5)
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isUnlocked() {
    return bool(stor7)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function root() {
    return rootAddress
}

function blacklist(address arg1) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function lockTransfer() {
    require owners[address(msg.sender)]
    stor7 = 0
}

function unlockTransfer() {
    require owners[address(msg.sender)]
    stor7 = 1
}

function addToBlacklist(address arg1) {
    require owners[address(msg.sender)]
    stor6[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) {
    require owners[address(msg.sender)]
    stor6[address(arg1)] = 0
}

function finishMinting() {
    require owners[address(msg.sender)]
    require not stor5
    stor5 = 1
    emit MintFinished()
    return 1
}

function newOwner(address arg1) {
    require owners[address(msg.sender)]
    require arg1
    owners[address(arg1)] = msg.sender
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function deleteOwner(address arg1) {
    require owners[address(msg.sender)]
    if owners[address(arg1)] != msg.sender:
        require owners[address(arg1)]
        require msg.sender == rootAddress
    owners[address(arg1)] = 0
    return 1
}

function addManyToBlacklist(address[] arg1) {
    require owners[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owners[address(msg.sender)]
    require not stor5
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor7:
        require owners[address(msg.sender)]
    require not stor6[address(msg.sender)]
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
    if not stor7:
        require owners[address(msg.sender)]
    require not stor6[address(msg.sender)]
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
