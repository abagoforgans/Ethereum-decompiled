contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint8 stor3;
address stor3; offset 8

function _fallback() payable {
    uint8(stor3.field_0) = 1
    require not msg.value
    address(stor3.field_8) = msg.sender
    stor1 = 1509279285
    stor2 = 420768 * 24 * 3600
    return code.data[144 len 6741]
}



// =====================  Runtime code  =====================


const name = 'Ethereum Ultimate'

const decimals = 18

const tokenCreationCap = 3000000 * 10^18

const symbol = 'ETHU'

const tokenCreationMin = 250000 * 10^18

const getExchangeRate = 30000


mapping of uint256 allowance;
uint256 fundingStart;
uint256 fundingEnd;
uint8 stor3;
address stor3;
address masterAddress; offset 8
uint256 totalSupply;
uint256 amountSoldAfterPowerDay;
mapping of uint256 balanceOf;
mapping of uint256 stor7;
mapping of uint256 etherBalanceOf;
address migrationAgentAddress;
uint256 totalMigrated;
uint256 amountofTotalParticipants;

function fundingEnd() {
    return fundingEnd
}

function EtherBalanceOf(address arg1) {
    return etherBalanceOf[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function getAmountSoldAfterPowerDay() {
    return amountSoldAfterPowerDay
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function migrationAgent() {
    return migrationAgentAddress
}

function totalMigrated() {
    return totalMigrated
}

function fundingStart() {
    return fundingStart
}

function funding() {
    return bool(uint8(stor3.field_0))
}

function getAmountofTotalParticipants() {
    return amountofTotalParticipants
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function master() {
    return masterAddress
}

function TimeLeft() {
    if fundingEnd <= block.timestamp:
        return 0
    return (fundingEnd - block.timestamp)
}

function TimeLeftBeforeCrowdsale() {
    if fundingStart <= block.timestamp:
        return 0
    return (fundingStart - block.timestamp)
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMigrationAgent(address arg1) {
    require not uint8(stor3.field_0)
    require not migrationAgentAddress
    require msg.sender == masterAddress
    migrationAgentAddress = 0xc04fdf16cdf0af953d2ef14cfb01cddbe881dd2d
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_0)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    stor7[address(msg.sender)] = block.timestamp
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function ICOopen() {
    if uint8(stor3.field_0):
        if block.timestamp >= fundingStart:
            if block.timestamp <= fundingEnd:
                if 3000000 * 10^18 > totalSupply:
                    return 1
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function finalize() {
    require uint8(stor3.field_0)
    uint8(stor3.field_0) = 0
    totalSupply += 25 * totalSupply / 62
    balanceOf[address(stor3.field_0)] += 25 * totalSupply / 62
    emit Transfer((25 * totalSupply / 62), 0, masterAddress);
    call masterAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require uint8(stor3.field_0)
    require block.timestamp >= fundingStart
    require block.timestamp <= fundingEnd
    require msg.value
    require 30000 * msg.value <= -totalSupply + 3000000 * 10^18
    totalSupply += 30000 * msg.value
    balanceOf[address(msg.sender)] += 30000 * msg.value
    etherBalanceOf[address(msg.sender)] += msg.value
    amountofTotalParticipants++
    emit Transfer((30000 * msg.value), 0, msg.sender);
}

function refund() {
    require uint8(stor3.field_0)
    require block.timestamp > fundingEnd
    require totalSupply < 250000 * 10^18
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    etherBalanceOf[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund(etherBalanceOf[address(msg.sender)], msg.sender);
    call msg.sender with:
       value etherBalanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_0)
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function migrate(uint256 arg1) {
    require not uint8(stor3.field_0)
    require migrationAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}



}
