contract main {




// =====================  Runtime code  =====================


const name = 'BonumToken'

const decimals = 18

const symbol = 'BONUM'

const INITIAL_SUPPLY = 65000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address bountyAddress;
uint8 stor5; offset 160
address advisorsAddress;
address reserveTimelockAddress;
address teamTimelockAddress;

function totalSupply() {
    return totalSupply
}

function teamTimelock() {
    return teamTimelockAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function bounty() {
    return bountyAddress
}

function burnt() {
    return bool(stor5)
}

function reserveTimelock() {
    return reserveTimelockAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function advisors() {
    return advisorsAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
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

function releaseTeamTokens() {
    require ext_code.size(teamTimelockAddress)
    call teamTimelockAddress.0x86d1a69f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseReserveTokens() {
    require ext_code.size(reserveTimelockAddress)
    call reserveTimelockAddress.0x86d1a69f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
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

function burn(uint256 arg1) {
    require msg.sender == owner
    require not stor5
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    require block.timestamp < 469680 * 24 * 3600
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    stor5 = 1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
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



}
