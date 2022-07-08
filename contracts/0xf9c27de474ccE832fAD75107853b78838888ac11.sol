contract main {




// =====================  Runtime code  =====================


const name = 'APM Coin'

const decimals = 18

const symbol = 'APM'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function isBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function isOwner() {
    return (msg.sender == owner)
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpaused()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Paused()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function registerBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 1
    emit RegisterBlacklist(arg1);
}

function unregisterBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 0
    emit UnregisterBlacklist(arg1);
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
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor3
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require not stor3
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function claimTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ClaimedTokens(arg2, msg.sender, arg1);
}



}
