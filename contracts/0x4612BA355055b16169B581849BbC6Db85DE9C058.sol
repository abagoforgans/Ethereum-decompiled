contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint16 stor16;

function _fallback() payable {
    stor1 = msg.sender
    stor5 = 5 * 10^15
    stor6 = 10^15
    stor7 = 10^15
    require 10^15 <= stor5
    stor8 = stor5 - 10^15
    stor9 = stor5 - 10^15
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 10^11
    stor16 = 0
    require not msg.value
    stor1 = msg.sender
    stor10 = 10^11
    if stor6 / 100:
        require stor6 / 100
        require 20 * stor6 / 100 / stor6 / 100 == 20
    stor11 = 20 * stor6 / 100
    return code.data[381 len 4183]
}



// =====================  Runtime code  =====================


const name = 'TFFC'

const decimals = 8

const symbol = 'TF'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 totaTeamRemaining;
uint256 stor7;
uint256 totalRemaining;
uint256 stor9;
uint256 stor10; offset 1
uint256 uservalue;
uint256 teamvalue;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint8 stor16; offset 8

function totalSupply() {
    return totalSupply
}

function totaTeamRemaining() {
    return totaTeamRemaining
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionteamFinished() {
    return bool(uint8(stor16.field_8))
}

function distributionuserFinished() {
    return bool(uint8(stor16.field_0))
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function teamvalue() {
    return teamvalue
}

function uservalue() {
    return uservalue
}

function blacklist(address arg1) {
    return bool(stor4[arg1])
}

function transferOwnership(address arg1) {
    require stor1 == msg.sender
    if arg1:
        stor1 = arg1
}

function finishUserDistribution() {
    require stor1 == msg.sender
    require not uint8(stor16.field_0)
    uint8(stor16.field_0) = 1
    emit DistrFinished()
    return 1
}

function withdraw() {
    require stor1 == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function disableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor1 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
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
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function teamRelease(address arg1) payable {
    require not uint8(stor16.field_8)
    require stor1 == msg.sender
    if teamvalue > totaTeamRemaining:
        teamvalue = totaTeamRemaining
        revert
    require not uint8(stor16.field_8)
    require teamvalue + stor12 >= stor12
    stor12 += teamvalue
    require teamvalue <= totaTeamRemaining
    totaTeamRemaining -= teamvalue
    require teamvalue + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += teamvalue
    emit TeamDistr(teamvalue, arg1);
    emit Transfer(teamvalue, 0, arg1);
    if stor12 >= stor7:
        uint8(stor16.field_8) = 1
}

function getTokens() payable {
    require not uint8(stor16.field_0)
    require not stor4[address(msg.sender)]
    if uservalue > totalRemaining:
        uservalue = totalRemaining
        revert
    require not uint8(stor16.field_0)
    require uservalue + stor13 >= stor13
    stor13 += uservalue
    require uservalue <= totalRemaining
    totalRemaining -= uservalue
    require uservalue + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += uservalue
    if stor13 < stor9:
        require stor14 <= stor13
        if stor13 - stor14 >= stor15:
            uservalue = stor10
            stor14 = stor13
    emit UserDistr(uservalue, msg.sender);
    emit Transfer(uservalue, 0, msg.sender);
    if uservalue > 0:
        stor4[address(msg.sender)] = 1
    if stor13 >= stor9:
        uint8(stor16.field_0) = 1
}

function _fallback() payable {
    require not uint8(stor16.field_0)
    require not stor4[address(msg.sender)]
    if uservalue > totalRemaining:
        uservalue = totalRemaining
        revert
    require not uint8(stor16.field_0)
    require uservalue + stor13 >= stor13
    stor13 += uservalue
    require uservalue <= totalRemaining
    totalRemaining -= uservalue
    require uservalue + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += uservalue
    if stor13 < stor9:
        require stor14 <= stor13
        if stor13 - stor14 >= stor15:
            uservalue = stor10
            stor14 = stor13
    emit UserDistr(uservalue, msg.sender);
    emit Transfer(uservalue, 0, msg.sender);
    if uservalue > 0:
        stor4[address(msg.sender)] = 1
    if stor13 >= stor9:
        uint8(stor16.field_0) = 1
}



}
