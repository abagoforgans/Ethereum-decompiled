contract main {




// =====================  Runtime code  =====================


const name = 'SuperSkyNet'

const decimals = 18

const symbol = 'SSN'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 totalDistributed;
uint256 totalRemaining;
uint256 value;
uint8 stor9;

function totalSupply() {
    return totalSupply
}

function value() {
    return value
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(stor9)
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function blacklist(address arg1) {
    return bool(stor4[arg1])
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function finishDistribution() {
    require msg.sender == stor1
    require not stor9
    stor9 = 1
    emit DistrFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require msg.sender == stor1
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokens() payable {
    require not stor9
    require not stor4[msg.sender]
    if value > totalRemaining:
        value = totalRemaining
        revert
    require not stor9
    require value + totalDistributed >= totalDistributed
    totalDistributed += value
    require value <= totalRemaining
    totalRemaining -= value
    require value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += value
    emit Distr(value, msg.sender);
    emit Transfer(value, 0, msg.sender);
    if value > 0:
        stor4[address(msg.sender)] = 1
    if totalDistributed >= totalSupply:
        stor9 = 1
    if value / 100000:
        require value / 100000
        require 99999 * value / 100000 / value / 100000 == 99999
    value = 99999 * value / 100000
}

function _fallback() payable {
    require not stor9
    require not stor4[msg.sender]
    if value > totalRemaining:
        value = totalRemaining
        revert
    require not stor9
    require value + totalDistributed >= totalDistributed
    totalDistributed += value
    require value <= totalRemaining
    totalRemaining -= value
    require value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += value
    emit Distr(value, msg.sender);
    emit Transfer(value, 0, msg.sender);
    if value > 0:
        stor4[address(msg.sender)] = 1
    if totalDistributed >= totalSupply:
        stor9 = 1
    if value / 100000:
        require value / 100000
        require 99999 * value / 100000 / value / 100000 == 99999
    value = 99999 * value / 100000
}



}
