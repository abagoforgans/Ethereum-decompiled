contract main {




// =====================  Runtime code  =====================


const DECIMALS = 18

const INITIAL_SUPPLY = 2000000000 * 10^18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint8 paused;
mapping of uint8 stor9;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function isBlacklistAdmin(address arg1) {
    require arg1
    return bool(stor9[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isPauser(address arg1) {
    require arg1
    return bool(stor7[address(arg1)])
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isBlacklisted(address arg1) {
    require arg1
    return bool(stor10[address(arg1)])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender
    require stor7[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor7[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function sub_5060a9ff(?) {
    require msg.sender
    require stor10[address(msg.sender)]
    stor10[address(msg.sender)] = 0
    emit BlacklistedRemoved(msg.sender);
}

function renounceBlacklistAdmin() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit BlacklistAdminRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor7[address(msg.sender)]
    require arg1
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addBlacklisted(address arg1) {
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor10[address(arg1)]
    stor10[address(arg1)] = 1
    emit BlacklistedAdded(arg1);
}

function removeBlacklisted(address arg1) {
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require stor10[address(arg1)]
    stor10[address(arg1)] = 0
    emit BlacklistedRemoved(arg1);
}

function addBlacklistAdmin(address arg1) {
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit BlacklistAdminAdded(arg1);
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not paused
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not paused
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}



}
