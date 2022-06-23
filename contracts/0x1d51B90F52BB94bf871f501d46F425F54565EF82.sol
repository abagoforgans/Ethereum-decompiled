contract main {




// =====================  Runtime code  =====================


const name = 'Aeternity'

const decimals = 18

const symbol = 'AE'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_de092267;
mapping of uint256 sub_6c55d90e;
mapping of uint256 unlockUnixTime;
uint256 totalSupply;
uint256 totalDistributed;
uint256 totalRemaining;
uint256 value;
uint8 distributionFinished;

function totalSupply() {
    return totalSupply
}

function value() {
    return value
}

function sub_6c55d90e(?) {
    return sub_6c55d90e[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(distributionFinished)
}

function unlockUnixTime(address arg1) {
    return unlockUnixTime[arg1]
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_de092267(?) {
    return sub_de092267[arg1]
}

function totalDistributed() {
    return totalDistributed
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

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
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
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
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
    require not distributionFinished
    require sub_de092267[address(msg.sender)] + 1 >= sub_de092267[address(msg.sender)]
    sub_de092267[address(msg.sender)]++
    require sub_6c55d90e[address(msg.sender)] + msg.value >= sub_6c55d90e[address(msg.sender)]
    sub_6c55d90e[address(msg.sender)] += msg.value
    unlockUnixTime[address(msg.sender)] = block.timestamp + (24 * 3600)
    if msg.value >= 10^16:
        if value:
            require value
            require 750 * value / value == 750
        if 750 * value:
            require 750 * value
            require 750 * value * msg.value / 750 * value == msg.value
        call 0x8abf406f5be5bf9209e9b841758bd063185dac80 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if value / 1000:
            require value / 1000
            require 1000 * value / 1000 / value / 1000 == 1000
        value = 1000 * value / 1000
        if 750 * value * msg.value / 10^18 <= totalRemaining:
            require not distributionFinished
            require totalDistributed + (750 * value * msg.value / 10^18) >= totalDistributed
            totalDistributed += 750 * value * msg.value / 10^18
            require 750 * value * msg.value / 10^18 <= totalRemaining
            totalRemaining -= 750 * value * msg.value / 10^18
            require balanceOf[address(msg.sender)] + (750 * value * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 750 * value * msg.value / 10^18
            emit Distr((750 * value * msg.value / 10^18), msg.sender);
            emit Transfer((750 * value * msg.value / 10^18), 0, msg.sender);
        else:
            require totalRemaining <= totalRemaining
            require not distributionFinished
            require totalDistributed + totalRemaining >= totalDistributed
            totalDistributed += totalRemaining
            require totalRemaining <= totalRemaining
            totalRemaining = 0
            require balanceOf[address(msg.sender)] + totalRemaining >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += totalRemaining
            emit Distr(totalRemaining, msg.sender);
            emit Transfer(totalRemaining, 0, msg.sender);
        if totalDistributed >= totalSupply:
            distributionFinished = 1
        if value / 10 * 10^6:
            require value / 10 * 10^6
            require 10 * 10^6 * value / 10 * 10^6 / value / 10 * 10^6 == 10 * 10^6
        value = 10 * 10^6 * value / 10 * 10^6
}

function _fallback() payable {
    require not distributionFinished
    require not distributionFinished
    require sub_de092267[address(msg.sender)] + 1 >= sub_de092267[address(msg.sender)]
    sub_de092267[address(msg.sender)]++
    require sub_6c55d90e[address(msg.sender)] + msg.value >= sub_6c55d90e[address(msg.sender)]
    sub_6c55d90e[address(msg.sender)] += msg.value
    unlockUnixTime[address(msg.sender)] = block.timestamp + (24 * 3600)
    if msg.value >= 10^16:
        if value:
            require value
            require 750 * value / value == 750
        if 750 * value:
            require 750 * value
            require 750 * value * msg.value / 750 * value == msg.value
        call 0x8abf406f5be5bf9209e9b841758bd063185dac80 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if value / 1000:
            require value / 1000
            require 1000 * value / 1000 / value / 1000 == 1000
        value = 1000 * value / 1000
        if 750 * value * msg.value / 10^18 <= totalRemaining:
            require not distributionFinished
            require totalDistributed + (750 * value * msg.value / 10^18) >= totalDistributed
            totalDistributed += 750 * value * msg.value / 10^18
            require 750 * value * msg.value / 10^18 <= totalRemaining
            totalRemaining -= 750 * value * msg.value / 10^18
            require balanceOf[address(msg.sender)] + (750 * value * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 750 * value * msg.value / 10^18
            emit Distr((750 * value * msg.value / 10^18), msg.sender);
            emit Transfer((750 * value * msg.value / 10^18), 0, msg.sender);
        else:
            require totalRemaining <= totalRemaining
            require not distributionFinished
            require totalDistributed + totalRemaining >= totalDistributed
            totalDistributed += totalRemaining
            require totalRemaining <= totalRemaining
            totalRemaining = 0
            require balanceOf[address(msg.sender)] + totalRemaining >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += totalRemaining
            emit Distr(totalRemaining, msg.sender);
            emit Transfer(totalRemaining, 0, msg.sender);
        if totalDistributed >= totalSupply:
            distributionFinished = 1
        if value / 10 * 10^6:
            require value / 10 * 10^6
            require 10 * 10^6 * value / 10 * 10^6 / value / 10 * 10^6 == 10 * 10^6
        value = 10 * 10^6 * value / 10 * 10^6
}



}
