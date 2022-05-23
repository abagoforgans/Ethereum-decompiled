contract main {




// =====================  Runtime code  =====================


const name = 'HaraToken'

const decimals = 18

const symbol = 'HART'

const INITIAL_SUPPLY = 1200000000 * 10^18

const HART_NETWORK_ID = 1


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address minterAddress;
uint256 cap;
uint256 nonce;
mapping of uint8 stor7;

function mintingFinished() {
    return bool(stor3)
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function cap() {
    return cap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function nonce() {
    return nonce
}

function mintStatus(uint8 arg1, uint256 arg2) {
    return bool(stor7[arg1][arg2])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setMinter(address arg1) {
    require msg.sender == owner
    minterAddress = arg1
    return 1
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
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1, string arg2) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    emit BurnLog(arg1, sha3(nonce, msg.sender, arg1, 1), Array(len=arg2.length, data=arg2[all]), nonce, msg.sender);
    nonce++
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == minterAddress
    require not stor3
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    if owner != msg.sender:
        require msg.sender == minterAddress
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnToken(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    emit BurnLog(uint256 arg1, address arg2, uint256 arg3, bytes32 arg4, string arg5):
                 arg1,
                 sha3(nonce, msg.sender, arg1, 1),
                 96,
                 0,
                 nonce,
                 msg.sender,
    nonce++
}

function mintToken(uint256 arg1, address arg2, uint256 arg3, bytes32 arg4, uint8 arg5) {
    if stor7[arg5 << 248][arg1]:
        revert with 0, 'id already requested for mint'
    if sha3(arg1, arg2, arg3, arg5) != arg4:
        revert with 0, 'request item are not valid'
    if owner != msg.sender:
        require msg.sender == minterAddress
    require not stor3
    require arg3 + totalSupply >= totalSupply
    require arg3 + totalSupply <= cap
    if owner != msg.sender:
        require msg.sender == minterAddress
    require not stor3
    require arg3 + totalSupply >= totalSupply
    totalSupply += arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Mint(arg3, arg2);
    emit Transfer(arg3, 0, arg2);
    emit MintLog(arg3, 1, arg1, arg2);
    stor7[arg5 << 248][arg1] = 1
    return 1
}



}
