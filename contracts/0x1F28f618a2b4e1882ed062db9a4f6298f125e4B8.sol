contract main {




// =====================  Runtime code  =====================


const name = 'AskChain Token'

const decimals = 18

const symbol = 'ASKT'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 totalDistributed;
uint256 totalICO;
uint256 totalAirDrop;
uint256 totalRemaining;
uint256 value;
uint8 distributionFinished;

function totalSupply() {
    return totalSupply
}

function value() {
    return value
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalICO() {
    return totalICO
}

function distributionFinished() {
    return bool(distributionFinished)
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

function totalAirDrop() {
    return totalAirDrop
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function finishDistribution() {
    require msg.sender == stor1
    require not distributionFinished
    distributionFinished = 1
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
    require not distributionFinished
    if msg.value < 10^16:
        require value <= totalICO
        require value <= totalAirDrop
        totalAirDrop -= value
        call 0x75b86367effbb8efc94998205e7be73b8a45ce92 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if value <= totalRemaining:
            require not distributionFinished
            require value + totalDistributed >= totalDistributed
            totalDistributed += value
            require value <= totalRemaining
            totalRemaining -= value
            require value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += value
            emit Distr(value, msg.sender);
            emit Transfer(value, 0, msg.sender);
        else:
            require totalRemaining <= totalRemaining
            require not distributionFinished
            require totalRemaining + totalDistributed >= totalDistributed
            totalDistributed += totalRemaining
            require totalRemaining <= totalRemaining
            totalRemaining = 0
            require totalRemaining + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += totalRemaining
            emit Distr(totalRemaining, msg.sender);
            emit Transfer(totalRemaining, 0, msg.sender);
    else:
        if value:
            require value
            require 2000 * value / value == 2000
        if 2000 * value:
            require 2000 * value
            require 2000 * msg.value * value / 2000 * value == msg.value
        require 2000 * msg.value * value / 10^18 <= totalICO
        totalICO -= 2000 * msg.value * value / 10^18
        call 0x75b86367effbb8efc94998205e7be73b8a45ce92 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 2000 * msg.value * value / 10^18 <= totalRemaining:
            require not distributionFinished
            require (2000 * msg.value * value / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += 2000 * msg.value * value / 10^18
            require 2000 * msg.value * value / 10^18 <= totalRemaining
            totalRemaining -= 2000 * msg.value * value / 10^18
            require (2000 * msg.value * value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 2000 * msg.value * value / 10^18
            emit Distr((2000 * msg.value * value / 10^18), msg.sender);
            emit Transfer((2000 * msg.value * value / 10^18), 0, msg.sender);
        else:
            require totalRemaining <= totalRemaining
            require not distributionFinished
            require totalRemaining + totalDistributed >= totalDistributed
            totalDistributed += totalRemaining
            require totalRemaining <= totalRemaining
            totalRemaining = 0
            require totalRemaining + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += totalRemaining
            emit Distr(totalRemaining, msg.sender);
            emit Transfer(totalRemaining, 0, msg.sender);
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}

function _fallback() payable {
    require not distributionFinished
    if msg.value < 10^16:
        require value <= totalICO
        require value <= totalAirDrop
        totalAirDrop -= value
        call 0x75b86367effbb8efc94998205e7be73b8a45ce92 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if value <= totalRemaining:
            require not distributionFinished
            require value + totalDistributed >= totalDistributed
            totalDistributed += value
            require value <= totalRemaining
            totalRemaining -= value
            require value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += value
            emit Distr(value, msg.sender);
            emit Transfer(value, 0, msg.sender);
        else:
            require totalRemaining <= totalRemaining
            require not distributionFinished
            require totalRemaining + totalDistributed >= totalDistributed
            totalDistributed += totalRemaining
            require totalRemaining <= totalRemaining
            totalRemaining = 0
            require totalRemaining + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += totalRemaining
            emit Distr(totalRemaining, msg.sender);
            emit Transfer(totalRemaining, 0, msg.sender);
    else:
        if value:
            require value
            require 2000 * value / value == 2000
        if 2000 * value:
            require 2000 * value
            require 2000 * msg.value * value / 2000 * value == msg.value
        require 2000 * msg.value * value / 10^18 <= totalICO
        totalICO -= 2000 * msg.value * value / 10^18
        call 0x75b86367effbb8efc94998205e7be73b8a45ce92 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 2000 * msg.value * value / 10^18 <= totalRemaining:
            require not distributionFinished
            require (2000 * msg.value * value / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += 2000 * msg.value * value / 10^18
            require 2000 * msg.value * value / 10^18 <= totalRemaining
            totalRemaining -= 2000 * msg.value * value / 10^18
            require (2000 * msg.value * value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 2000 * msg.value * value / 10^18
            emit Distr((2000 * msg.value * value / 10^18), msg.sender);
            emit Transfer((2000 * msg.value * value / 10^18), 0, msg.sender);
        else:
            require totalRemaining <= totalRemaining
            require not distributionFinished
            require totalRemaining + totalDistributed >= totalDistributed
            totalDistributed += totalRemaining
            require totalRemaining <= totalRemaining
            totalRemaining = 0
            require totalRemaining + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += totalRemaining
            emit Distr(totalRemaining, msg.sender);
            emit Transfer(totalRemaining, 0, msg.sender);
    if totalDistributed >= totalSupply:
        distributionFinished = 1
}



}
