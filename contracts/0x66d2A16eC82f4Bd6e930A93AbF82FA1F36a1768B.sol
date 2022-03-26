contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 16
uint256 stor1;
uint256 stor4;
array of struct stor8;
address stor9;
address stor10;

function _fallback() payable {
    uint8(stor0.field_0) = 1
    uint8(stor0.field_16) = 1
    stor0.field_256 % 1 = 0
    stor4 = 12500 * 10^18
    require not msg.value
    stor9 = msg.sender
    stor1 = block.timestamp
    stor10 = 0x7a992f486fbc7c03a3f2f862ad260f158c5c5486
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = (3 * stor8.length) + 3
        while 3 * stor8.length > idx:
            stor8[idx].field_0 = 0
            stor8[idx].field_256 = 0
            stor8[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor8[stor8.length].field_0 = 0
    stor8[stor8.length].field_256 = 0
    stor8[stor8.length].field_512 = 0
    return code.data[319 len 4359]
}



// =====================  Runtime code  =====================


const name = Array(len=38, data='DXF - Decentralized eXperience F', Mask(48, 208, 'riends') >> 208, mem[288])

const decimals = 18

const tokensCreationMin = 25000 * 10^18

const tokensCreationVIPsCap = 12500 * 10^18

const symbol = Array(len=3, data=mem[224])

const tokensCreationCap = 75000 * 10^18

const maxNumberMembers = 5000


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
uint256 startingDateFunding;
uint256 closingDateFunding;
uint256 totalTokens;
uint256 remainingTokensVIPs;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
mapping of uint256 stor7;
array of struct members;
address adminAddress;
address multisigDXFAddress;

function refundState() {
    return bool(uint8(stor0.field_8))
}

function transferLocked() {
    return bool(uint8(stor0.field_16))
}

function totalSupply() {
    return totalTokens
}

function startingDateFunding() {
    return startingDateFunding
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1].field_0, members[arg1].field_256, members[arg1].field_512
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function dxfOpen() {
    return bool(uint8(stor0.field_0))
}

function totalTokens() {
    return totalTokens
}

function multisigDXF() {
    return multisigDXFAddress
}

function closingDateFunding() {
    return closingDateFunding
}

function admin() {
    return adminAddress
}

function remainingTokensVIPs() {
    return remainingTokensVIPs
}

function _fallback() {
    revert 
}

function allowTransfers() {
    require adminAddress == msg.sender
    uint8(stor0.field_16) = 0
}

function disableTransfers() {
    require adminAddress == msg.sender
    uint8(stor0.field_16) = 1
}

function changeAdmin(address arg1, address arg2) {
    require adminAddress == msg.sender
    require arg2 == arg1
    require arg1
    adminAddress = arg1
}

function accountInformation(address arg1) {
    require totalTokens
    return bool(stor6[address(arg1)]), balanceOf[address(arg1)] / 10^18, 1000 * balanceOf[address(arg1)] / totalTokens
}

function closeFunding() {
    require adminAddress == msg.sender
    closingDateFunding = block.timestamp
    uint8(stor0.field_0) = 0
    if totalTokens < 25000 * 10^18:
        uint8(stor0.field_8) = 1
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function fullTransfer(address arg1) {
    require not uint8(stor0.field_16)
    require not balanceOf[address(arg1)]
    if not balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] = 0
    balanceOf[arg1] = balanceOf[address(msg.sender)]
    if stor6[address(msg.sender)]:
        stor6[address(arg1)] = 1
        stor6[msg.sender] = 0
    require stor7[address(msg.sender)] < members.length
    members[stor7[address(msg.sender)]].field_0 = arg1
    stor7[arg1] = stor7[address(msg.sender)]
    stor7[address(msg.sender)] = 0
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
    return 1
}

function registerVIP(address arg1, address arg2, uint256 arg3) {
    require adminAddress == msg.sender
    require arg1
    require arg2 == arg1
    require not balanceOf[address(arg1)]
    require arg3
    totalTokens = arg3 + (arg3 / 3) + totalTokens
    require arg3 + (arg3 / 3) <= remainingTokensVIPs
    remainingTokensVIPs = remainingTokensVIPs - arg3 - (arg3 / 3)
    balanceOf[address(arg1)] = arg3 + (arg3 / 3) + balanceOf[address(arg1)]
    stor7[address(arg1)] = members.length
    members.length++
    if not members.length <= members.length + 1:
        idx = (3 * members.length) + 3
        while 3 * members.length > idx:
            members[idx].field_0 = 0
            members[idx].field_256 = 0
            members[idx].field_512 = 0
            idx = idx + 3
            continue 
    members[members.length].field_0 = arg1
    members[members.length].field_256 = block.timestamp
    members[members.length].field_512 = arg3
    stor6[address(arg1)] = 1
    emit VipMigration(arg3, arg1);
}

function paybackContribution(uint256 arg1) payable {
    require adminAddress == msg.sender
    require arg1 < members.length
    require members[arg1].field_0
    if not stor6[stor8[arg1].field_0]:
        require msg.value <= balanceOf[stor8[arg1].field_0]
        balanceOf[stor8[arg1].field_0] -= msg.value
        totalTokens -= msg.value
    else:
        remainingTokensVIPs = msg.value + (msg.value / 3) + remainingTokensVIPs
        require msg.value + (msg.value / 3) <= balanceOf[stor8[arg1].field_0]
        balanceOf[stor8[arg1].field_0] = balanceOf[stor8[arg1].field_0] - msg.value - (msg.value / 3)
        totalTokens = totalTokens - msg.value - (msg.value / 3)
    if not balanceOf[stor8[arg1].field_0]:
        require arg1 < members.length
        members[arg1].field_0 = 0
        members[arg1].field_256 = 0
        members[arg1].field_512 = 0
        stor6[stor8[arg1].field_0] = 0
        stor7[stor8[arg1].field_0] = 0
    call members[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit failingRefund(msg.value, members[arg1].field_0);
    emit Refund(msg.value, members[arg1].field_0);
}

function acceptTermsAndJoinDXF() payable {
    require block.timestamp <= startingDateFunding + (8760 * 24 * 3600)
    require uint8(stor0.field_0)
    require not stor6[address(msg.sender)]
    require msg.value >= 10 * 10^18
    require msg.value <= -totalTokens + 75000 * 10^18
    require msg.value <= -balanceOf[address(msg.sender)] + 10000 * 10^18
    if balanceOf[address(msg.sender)]:
        require stor7[address(msg.sender)] < members.length
        members[stor7[address(msg.sender)]].field_512 += msg.value
    else:
        emit newMember(msg.sender);
        stor7[address(msg.sender)] = members.length
        members.length++
        members[members.length].field_0 = msg.sender
        members[members.length].field_256 = block.timestamp
        members[members.length].field_512 = msg.value
    require members.length <= 5000
    require multisigDXFAddress
    call multisigDXFAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalTokens += msg.value
    require -msg.value + -totalTokens + 75000 * 10^18 >= remainingTokensVIPs
    balanceOf[address(msg.sender)] += msg.value
    emit Transfer(msg.value, 0, msg.sender);
}



}
