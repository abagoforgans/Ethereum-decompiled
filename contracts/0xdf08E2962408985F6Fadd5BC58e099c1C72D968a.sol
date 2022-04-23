contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - updatePrice()
#
const name = 'Envion'

const decimals = 18

const version = '0.9'

const symbol = 'ENV'

const ETH_RECEIVED_MIN = 3000 * 10^18

const TOKEN_THIRD_DISCOUNT_MULTIPLIER = 111111

const ETH_RECEIVED_CAP = 533300 * 10^18

const TOKEN_FIRST_DISCOUNT_MULTIPLIER = 142857

const TOKEN_MIN = 10^18

const TOKEN_SECOND_DISCOUNT_MULTIPLIER = 125000

const TOKEN_CREATED_MIN = 1000000 * 10^18

const TOKEN_CREATION_CAP = 150000000 * 10^18


uint256 totalSupply;
array of uint256 balanceOf;
mapping of uint8 allowance;
address stor3;
address stor4;
uint256 stor4;
array of uint256 stor5;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint256 roundTwoBlock;
uint256 roundThreeBlock;
uint256 roundFourBlock;
uint256 ccReleaseBlock;
address admin1Address;
address admin2Address;
bool stor16; offset 256
uint8 state; offset 160
uint8 stor16; offset 168
uint128 stor16; offset 176
uint128 stor16; offset 168
uint128 stor16; offset 160
address tokenVendorAddress;
mapping of struct stor17;
mapping of uint256 ccLockedUpBalances;
array of uint256 purchaseArray;
mapping of uint8 stor20;
array of address holder;
mapping of uint8 stor22;
mapping of uint256 stor23;
mapping of uint256 stor24;
uint256 allReceivedEth;
uint256 allUnKycedEth;
mapping of uint256 stor27;
mapping of uint8 stor28;
mapping of uint8 stor29;
uint8 teamTokensDelivered;
uint256 ETH_USD_EXCHANGE_RATE_IN_CENTS;
uint256 oraclizeQueryCost;

function admin2() {
    return admin2Address
}

function isKycTeam(address arg1) {
    return bool(stor28[arg1])
}

function admin1() {
    return admin1Address
}

function totalSupply() {
    return totalSupply
}

function holders(uint256 arg1) {
    require arg1 < holder.length
    return address(holder[arg1])
}

function ccLockedUpBalances(address arg1) {
    return ccLockedUpBalances[arg1]
}

function oraclizeQueryCost() {
    return oraclizeQueryCost
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getHolderCount() {
    return holder.length
}

function allReceivedEth() {
    return allReceivedEth
}

function ccReleaseBlock() {
    return ccReleaseBlock
}

function fundingEndBlock() {
    return fundingEndBlock
}

function getBalanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenVendor() {
    return tokenVendorAddress
}

function kycVerified(address arg1) {
    return bool(stor29[arg1])
}

function allUnKycedEth() {
    return allUnKycedEth
}

function purchaseArray(uint256 arg1) {
    return purchaseArray[arg1][0 len purchaseArray[arg1].length]
}

function getPurchaseCount() {
    return purchaseArray.length
}

function state() {
    require state <= 2
    return state
}

function ETH_USD_EXCHANGE_RATE_IN_CENTS() {
    return ETH_USD_EXCHANGE_RATE_IN_CENTS
}

function teamTokensDelivered() {
    return bool(teamTokensDelivered)
}

function roundTwoBlock() {
    return roundTwoBlock
}

function isHolder(address arg1) {
    return bool(stor20[arg1])
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    require 68 == calldata.size
    return uint256(allowance[address(arg1)][address(arg2)])
}

function roundFourBlock() {
    return roundFourBlock
}

function getHolder(uint256 arg1) {
    require arg1 < holder.length
    return address(holder[arg1])
}

function roundThreeBlock() {
    return roundThreeBlock
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function approve(address arg1, uint256 arg2) {
    require 68 == calldata.size
    uint256(allowance[address(msg.sender)][address(arg1)]) = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addToKycTeam(address arg1) {
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        require 36 == calldata.size
        stor28[address(arg1)] = 1
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function removeFromKycTeam(address arg1) {
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        require 36 == calldata.size
        stor28[address(arg1)] = 0
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function pause() {
    require state <= 2
    require state != 2
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        require state <= 2
        Mask(88, 0, stor16.field_168) = state
        state = 2
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function proceed() {
    require state <= 2
    require state == 2
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        require uint8(stor16.field_168) <= 2
        Mask(96, 0, stor16.field_160) = uint8(stor16.field_168)
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function unlockKyc(address arg1) {
    require 1 == bool(stor28[address(msg.sender)])
    require not stor29[address(arg1)]
    stor29[address(arg1)] = 1
    if stor24[address(arg1)] > 0:
        stor23[address(arg1)] = stor24[address(arg1)]
        require stor24[address(arg1)] + allReceivedEth >= allReceivedEth
        require stor24[address(arg1)] + allReceivedEth >= stor24[address(arg1)]
        allReceivedEth += stor24[address(arg1)]
        require allUnKycedEth >= stor24[address(arg1)]
        allUnKycedEth -= stor24[address(arg1)]
        stor24[address(arg1)] = 0
}

function retrieveEth(uint256 arg1, address arg2) {
    require allReceivedEth >= 3000 * 10^18
    require totalSupply >= 1000000 * 10^18
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        require eth.balance(this.address) >= arg1
        require eth.balance(this.address) - arg1 >= allUnKycedEth
        require arg2
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function refuseKyc(address arg1) {
    require 1 == bool(stor28[address(msg.sender)])
    require not stor29[address(arg1)]
    require stor24[address(arg1)] > 0
    require balanceOf[address(arg1)] > 0
    require stor24[address(arg1)] > 0
    require allUnKycedEth >= stor24[address(arg1)]
    allUnKycedEth -= stor24[address(arg1)]
    balanceOf[address(arg1)] = ccLockedUpBalances[address(arg1)]
    stor24[address(arg1)] = 0
    require totalSupply >= balanceOf[address(arg1)]
    totalSupply -= balanceOf[address(arg1)]
    emit LogKycRefused(stor24[address(arg1)], arg1);
    call arg1 with:
       value stor24[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize(address arg1) {
    require state <= 2
    require not state
    require allReceivedEth >= 3000 * 10^18
    require totalSupply >= 1000000 * 10^18
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        if block.number <= fundingEndBlock:
            if totalSupply < 150000000 * 10^18:
                require allReceivedEth >= 533300 * 10^18
        require arg1
        state = 1
        uint8(stor16.field_168) = 1
        Mask(80, 0, stor16.field_176) = 0
        stor16.field_256 % 1 = 0
        call arg1 with:
           value allReceivedEth wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function cancelDelivery(string arg1) {
    require 1 == bool(stor28[address(msg.sender)])
    require block.number < ccReleaseBlock
    require 1 == bool(uint8(stor17[arg1[all]].field_512))
    require balanceOf[address(stor17[arg1[all]].field_0)] >= uint256(stor17[arg1[all]].field_256)
    balanceOf[address(stor17[arg1[all]].field_0)] -= uint256(stor17[arg1[all]].field_256)
    require ccLockedUpBalances[address(stor17[arg1[all]].field_0)] >= uint256(stor17[arg1[all]].field_256)
    ccLockedUpBalances[address(stor17[arg1[all]].field_0)] -= uint256(stor17[arg1[all]].field_256)
    uint8(stor17[arg1[all]].field_512) = 0
    require totalSupply >= uint256(stor17[arg1[all]].field_256)
    totalSupply -= uint256(stor17[arg1[all]].field_256)
    emit LogCancelDelivery(Array(len=arg1.length, data=arg1[all]), address(stor17[arg1[all]].field_0));
}

function refund() {
    require block.number > fundingEndBlock + 42000
    if allReceivedEth >= 3000 * 10^18:
        require totalSupply < 1000000 * 10^18
    if stor23[address(msg.sender)] <= 0:
        require stor24[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] > 0
    require stor24[address(msg.sender)] + stor23[address(msg.sender)] >= stor23[address(msg.sender)]
    require stor24[address(msg.sender)] + stor23[address(msg.sender)] >= stor24[address(msg.sender)]
    require stor24[address(msg.sender)] + stor23[address(msg.sender)] > 0
    require allReceivedEth >= stor23[address(msg.sender)]
    allReceivedEth -= stor23[address(msg.sender)]
    require allUnKycedEth >= stor24[address(msg.sender)]
    allUnKycedEth -= stor24[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    stor23[address(msg.sender)] = 0
    stor24[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund((stor24[address(msg.sender)] + stor23[address(msg.sender)]), msg.sender);
    call msg.sender with:
       value stor24[address(msg.sender)] + stor23[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deliverTeamTokens(address arg1) {
    require state <= 2
    require state == 1
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        require not teamTokensDelivered
        require arg1
        require block.number >= fundingEndBlock + 1095000
        if totalSupply:
            require totalSupply
            require 117647 * totalSupply / totalSupply == 117647
        require 117647 * totalSupply / 100000 >= totalSupply
        balanceOf[address(arg1)] = (117647 * totalSupply / 100000) - totalSupply
        teamTokensDelivered = 1
        totalSupply = 117647 * totalSupply / 100000
        if not stor20[address(arg1)]:
            holder.length++
            if not holder.length <= holder.length + 1:
                idx = holder.length + 1
                while holder.length > idx:
                    uint256(holder[idx]) = 0
                    idx = idx + 1
                    continue 
            address(holder[holder.length]) = arg1
            stor20[address(arg1)] = 1
        emit LogTeamTokensDelivered(((117647 * totalSupply / 100000) - totalSupply), arg1);
        stor27[stor14] = 0
        stor27[stor15] = 0
}

function transfer(address arg1, uint256 arg2) {
    require state <= 2
    require state == 1
    if 1 == bool(stor22[address(msg.sender)]):
        require 1 == bool(stor29[address(msg.sender)])
    if ccLockedUpBalances[address(msg.sender)] > 0:
        if block.number < ccReleaseBlock:
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(msg.sender)] - arg2 >= ccLockedUpBalances[address(msg.sender)]
    require 68 == calldata.size
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if not stor20[address(arg1)]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        address(holder[holder.length]) = arg1
        stor20[address(arg1)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 2
    require state == 1
    if 1 == bool(stor22[address(msg.sender)]):
        require 1 == bool(stor29[address(msg.sender)])
    if ccLockedUpBalances[address(msg.sender)] > 0:
        if block.number < ccReleaseBlock:
            require balanceOf[address(msg.sender)] >= arg3
            require balanceOf[address(msg.sender)] - arg3 >= ccLockedUpBalances[address(msg.sender)]
    require 100 == calldata.size
    if balanceOf[address(arg1)] < arg3:
        return 0
    if uint256(allowance[address(arg1)][address(msg.sender)]) < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[arg1] >= arg3
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require uint256(allowance[address(arg1)][address(msg.sender)]) >= arg3
    uint256(allowance[address(arg1)][address(msg.sender)]) -= arg3
    emit Transfer(arg3, arg1, arg2);
    if not stor20[address(arg2)]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        address(holder[holder.length]) = arg2
        stor20[address(arg2)] = 1
    return 1
}

function getPurchaseById(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 17
    _28 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 17
    _49 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 17
    return address(stor[_28]), 
           balanceOf[_49],
           bool(uint8(allowance[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]))
}

function sub_2c2aee17(?) {
    require state <= 2
    require not state
    require tokenVendorAddress == msg.sender
    require address(cd[4])
    require cd[36] > 0
    require ('cd', 68).length > 0
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock + 84000
    if cd[36]:
        require cd[36]
        require 10^16 * cd[36] / cd[36] == 10^16
    require (10^16 * cd[36]) + totalSupply >= totalSupply
    require (10^16 * cd[36]) + totalSupply >= 10^16 * cd[36]
    require (10^16 * cd[36]) + totalSupply <= 150000000 * 10^18
    totalSupply += 10^16 * cd[36]
    require not address(stor17[call.data[cd[68] + 36 len ('cd', 68).length]].field_0)
    Mask(96, 0, stor17[call.data[cd[68] + 36 len ('cd', 68).length]].field_0) = 0
    uint64(stor17[call.data[cd[68] + 36 len ('cd', 68).length]].field_96) = uint64(cd[4])
    uint256(stor17[call.data[cd[68] + 36 len ('cd', 68).length]].field_256) = 10^16 * cd[36]
    uint8(stor17[call.data[cd[68] + 36 len ('cd', 68).length]].field_512) = 1
    purchaseArray.length++
    if not purchaseArray.length <= purchaseArray.length + 1:
        mem[0] = 19
        idx = purchaseArray.length + 1
        while sha3(19) + purchaseArray.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    purchaseArray[purchaseArray.length] = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        purchaseArray[purchaseArray.length + s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while purchaseArray[purchaseArray.length].length + 31 / 32 > idx:
        purchaseArray[purchaseArray.length + idx] = 0
        idx = idx + 1
        continue 
    require (10^16 * cd[36]) + ccLockedUpBalances[address(cd[4])] >= ccLockedUpBalances[address(cd[4])]
    require (10^16 * cd[36]) + ccLockedUpBalances[address(cd[4])] >= 10^16 * cd[36]
    ccLockedUpBalances[address(cd[4])] += 10^16 * cd[36]
    require (10^16 * cd[36]) + balanceOf[address(cd[4])] >= balanceOf[address(cd[4])]
    require (10^16 * cd[36]) + balanceOf[address(cd[4])] >= 10^16 * cd[36]
    balanceOf[address(cd[4])] += 10^16 * cd[36]
    if not stor20[address(cd[4])]:
        holder.length++
        if not holder.length <= holder.length + 1:
            idx = holder.length + 1
            while holder.length > idx:
                uint256(holder[idx]) = 0
                idx = idx + 1
                continue 
        address(holder[holder.length]) = address(cd[4])
        stor20[address(cd[4])] = 1
    stor22[address(cd[4])] = 1
    emit 0x23f1331e: (10^16 * cd[36]), address(cd[4])
}

function createTokens() payable {
    require state <= 2
    require not state
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value > 0
    require allReceivedEth + allUnKycedEth >= allUnKycedEth
    require allReceivedEth + allUnKycedEth >= allReceivedEth
    require msg.value >= 0
    require msg.value + allReceivedEth + allUnKycedEth >= msg.value
    require msg.value + allReceivedEth + allUnKycedEth <= 533300 * 10^18
    if msg.value:
        require msg.value
        require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / msg.value == ETH_USD_EXCHANGE_RATE_IN_CENTS
    if block.number < roundTwoBlock:
        if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
            require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
            require 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 142857
        require 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 >= 10^18
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply <= 150000000 * 10^18
        if stor29[address(msg.sender)]:
            require msg.value + stor23[address(msg.sender)] >= stor23[address(msg.sender)]
            require msg.value + stor23[address(msg.sender)] >= msg.value
            stor23[address(msg.sender)] += msg.value
            require msg.value + allReceivedEth >= allReceivedEth
            require msg.value + allReceivedEth >= msg.value
            allReceivedEth += msg.value
        else:
            require msg.value + stor24[address(msg.sender)] >= stor24[address(msg.sender)]
            require msg.value + stor24[address(msg.sender)] >= msg.value
            stor24[address(msg.sender)] += msg.value
            require msg.value + allUnKycedEth >= allUnKycedEth
            require msg.value + allUnKycedEth >= msg.value
            allUnKycedEth += msg.value
        totalSupply += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        balanceOf[address(msg.sender)] += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        if not stor20[address(msg.sender)]:
            holder.length++
            if not holder.length <= holder.length + 1:
                idx = holder.length + 1
                while holder.length > idx:
                    uint256(holder[idx]) = 0
                    idx = idx + 1
                    continue 
            address(holder[holder.length]) = msg.sender
            stor20[address(msg.sender)] = 1
        stor22[address(msg.sender)] = 1
        emit 0x2c07c39d: (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
    else:
        if block.number < roundThreeBlock:
            if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                require 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 125000
            require 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 >= 10^18
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply <= 150000000 * 10^18
            if stor29[address(msg.sender)]:
                require msg.value + stor23[address(msg.sender)] >= stor23[address(msg.sender)]
                require msg.value + stor23[address(msg.sender)] >= msg.value
                stor23[address(msg.sender)] += msg.value
                require msg.value + allReceivedEth >= allReceivedEth
                require msg.value + allReceivedEth >= msg.value
                allReceivedEth += msg.value
            else:
                require msg.value + stor24[address(msg.sender)] >= stor24[address(msg.sender)]
                require msg.value + stor24[address(msg.sender)] >= msg.value
                stor24[address(msg.sender)] += msg.value
                require msg.value + allUnKycedEth >= allUnKycedEth
                require msg.value + allUnKycedEth >= msg.value
                allUnKycedEth += msg.value
            totalSupply += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            balanceOf[address(msg.sender)] += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            if not stor20[address(msg.sender)]:
                holder.length++
                if not holder.length <= holder.length + 1:
                    idx = holder.length + 1
                    while holder.length > idx:
                        uint256(holder[idx]) = 0
                        idx = idx + 1
                        continue 
                address(holder[holder.length]) = msg.sender
                stor20[address(msg.sender)] = 1
            stor22[address(msg.sender)] = 1
            emit 0x2c07c39d: (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
        else:
            if block.number >= roundFourBlock:
                if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                    require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                    require 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 100000
                require 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 >= 10^18
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply <= 150000000 * 10^18
                if stor29[address(msg.sender)]:
                    require msg.value + stor23[address(msg.sender)] >= stor23[address(msg.sender)]
                    require msg.value + stor23[address(msg.sender)] >= msg.value
                    stor23[address(msg.sender)] += msg.value
                    require msg.value + allReceivedEth >= allReceivedEth
                    require msg.value + allReceivedEth >= msg.value
                    allReceivedEth += msg.value
                else:
                    require msg.value + stor24[address(msg.sender)] >= stor24[address(msg.sender)]
                    require msg.value + stor24[address(msg.sender)] >= msg.value
                    stor24[address(msg.sender)] += msg.value
                    require msg.value + allUnKycedEth >= allUnKycedEth
                    require msg.value + allUnKycedEth >= msg.value
                    allUnKycedEth += msg.value
                totalSupply += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                balanceOf[address(msg.sender)] += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if not stor20[address(msg.sender)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holder[holder.length]) = msg.sender
                    stor20[address(msg.sender)] = 1
                stor22[address(msg.sender)] = 1
                emit 0x2c07c39d: (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
            else:
                if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                    require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                    require 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 111111
                require 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 >= 10^18
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply <= 150000000 * 10^18
                if stor29[address(msg.sender)]:
                    require msg.value + stor23[address(msg.sender)] >= stor23[address(msg.sender)]
                    require msg.value + stor23[address(msg.sender)] >= msg.value
                    stor23[address(msg.sender)] += msg.value
                    require msg.value + allReceivedEth >= allReceivedEth
                    require msg.value + allReceivedEth >= msg.value
                    allReceivedEth += msg.value
                else:
                    require msg.value + stor24[address(msg.sender)] >= stor24[address(msg.sender)]
                    require msg.value + stor24[address(msg.sender)] >= msg.value
                    stor24[address(msg.sender)] += msg.value
                    require msg.value + allUnKycedEth >= allUnKycedEth
                    require msg.value + allUnKycedEth >= msg.value
                    allUnKycedEth += msg.value
                totalSupply += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                balanceOf[address(msg.sender)] += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if not stor20[address(msg.sender)]:
                    holder.length++
                    if not holder.length <= holder.length + 1:
                        idx = holder.length + 1
                        while holder.length > idx:
                            uint256(holder[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holder[holder.length]) = msg.sender
                    stor20[address(msg.sender)] = 1
                stor22[address(msg.sender)] = 1
                emit 0x2c07c39d: (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
}

function setOraclizeGas(uint256 arg1) {
    if admin1Address != msg.sender:
        require admin2Address == msg.sender
    stor27[address(msg.sender)] = sha3(call.data[0 len calldata.size])
    if stor27[stor14] == stor27[stor15]:
        if arg1 <= 30:
            if not stor3:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor5.length) = 0
                    uint255(stor5.length.field_1) = 11
                    Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint256(stor5[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor5.length) = 0
                        uint255(stor5.length.field_1) = 12
                        Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            uint256(stor5[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            bool(stor5.length) = 0
                            uint255(stor5.length.field_1) = 9
                            Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                uint256(stor5[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 11
                                Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                require ext_code.size(stor3)
            else:
                if not ext_code.size(stor3):
                    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                        stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                        bool(stor5.length) = 0
                        uint255(stor5.length.field_1) = 11
                        Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            uint256(stor5[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                            stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                            bool(stor5.length) = 0
                            uint255(stor5.length.field_1) = 12
                            Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                uint256(stor5[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 9
                                Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                        stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                    else:
                                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                            stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                        else:
                                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                else:
                                    stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 11
                                    Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                    require ext_code.size(stor3)
            call stor3.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] != address(stor4):
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
            require ext_code.size(address(stor4))
            call address(stor4).setCustomGasPrice(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args 3 * 10^10
            require ext_call.success
        else:
            if arg1 <= 50:
                if not stor3:
                    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                        stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                        bool(stor5.length) = 0
                        uint255(stor5.length.field_1) = 11
                        Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            uint256(stor5[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                            stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                            bool(stor5.length) = 0
                            uint255(stor5.length.field_1) = 12
                            Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                uint256(stor5[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 9
                                Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                        stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                    else:
                                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                            stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                        else:
                                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                else:
                                    stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 11
                                    Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                    require ext_code.size(stor3)
                else:
                    if not ext_code.size(stor3):
                        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                            stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                            bool(stor5.length) = 0
                            uint255(stor5.length.field_1) = 11
                            Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                uint256(stor5[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                                stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 12
                                Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                    stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 9
                                    Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                            stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                        else:
                                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                                stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                            else:
                                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                    stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                    else:
                                        stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                        bool(stor5.length) = 0
                                        uint255(stor5.length.field_1) = 11
                                        Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                        idx = 0
                                        while stor5.length + 31 / 32 > idx:
                                            uint256(stor5[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                        require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != address(stor4):
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(address(stor4))
                call address(stor4).setCustomGasPrice(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args 5 * 10^10
                require ext_call.success
            else:
                if arg1 <= 70:
                    if not stor3:
                        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                            stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                            bool(stor5.length) = 0
                            uint255(stor5.length.field_1) = 11
                            Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                uint256(stor5[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                                stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 12
                                Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                    stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 9
                                    Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                            stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                        else:
                                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                                stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                            else:
                                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                    stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                    else:
                                        stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                        bool(stor5.length) = 0
                                        uint255(stor5.length.field_1) = 11
                                        Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                        idx = 0
                                        while stor5.length + 31 / 32 > idx:
                                            uint256(stor5[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                        require ext_code.size(stor3)
                    else:
                        if not ext_code.size(stor3):
                            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                                stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 11
                                Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                                    stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 12
                                    Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                        stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                        bool(stor5.length) = 0
                                        uint255(stor5.length.field_1) = 9
                                        Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                        idx = 0
                                        while stor5.length + 31 / 32 > idx:
                                            uint256(stor5[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                                stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                            else:
                                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                                    stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                                else:
                                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                        stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                        else:
                                            stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                            bool(stor5.length) = 0
                                            uint255(stor5.length.field_1) = 11
                                            Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                            idx = 0
                                            while stor5.length + 31 / 32 > idx:
                                                uint256(stor5[idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                            require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != address(stor4):
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                    require ext_code.size(address(stor4))
                    call address(stor4).setCustomGasPrice(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args 7 * 10^10
                    require ext_call.success
                else:
                    if arg1 <= 100:
                        if not stor3:
                            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                                stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                                bool(stor5.length) = 0
                                uint255(stor5.length.field_1) = 11
                                Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                                idx = 0
                                while stor5.length + 31 / 32 > idx:
                                    uint256(stor5[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                                    stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 12
                                    Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                        stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                        bool(stor5.length) = 0
                                        uint255(stor5.length.field_1) = 9
                                        Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                        idx = 0
                                        while stor5.length + 31 / 32 > idx:
                                            uint256(stor5[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                                stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                            else:
                                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                                    stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                                else:
                                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                        stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                        else:
                                            stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                            bool(stor5.length) = 0
                                            uint255(stor5.length.field_1) = 11
                                            Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                            idx = 0
                                            while stor5.length + 31 / 32 > idx:
                                                uint256(stor5[idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                            require ext_code.size(stor3)
                        else:
                            if not ext_code.size(stor3):
                                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                                    stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                                    bool(stor5.length) = 0
                                    uint255(stor5.length.field_1) = 11
                                    Mask(248, 0, stor5.length.field_8) = 'eth_mainnet' / 256
                                    idx = 0
                                    while stor5.length + 31 / 32 > idx:
                                        uint256(stor5[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                                        stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                                        bool(stor5.length) = 0
                                        uint255(stor5.length.field_1) = 12
                                        Mask(248, 0, stor5.length.field_8) = 'eth_ropsten3' / 256
                                        idx = 0
                                        while stor5.length + 31 / 32 > idx:
                                            uint256(stor5[idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                                            stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                                            bool(stor5.length) = 0
                                            uint255(stor5.length.field_1) = 9
                                            Mask(248, 0, stor5.length.field_8) = 'eth_kovan' / 256
                                            idx = 0
                                            while stor5.length + 31 / 32 > idx:
                                                uint256(stor5[idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                                    stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                                else:
                                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                                        stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                                    else:
                                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                                            stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                            else:
                                                stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                                bool(stor5.length) = 0
                                                uint255(stor5.length.field_1) = 11
                                                Mask(248, 0, stor5.length.field_8) = 'eth_rinkeby' / 256
                                                idx = 0
                                                while stor5.length + 31 / 32 > idx:
                                                    uint256(stor5[idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != address(stor4):
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                        require ext_code.size(address(stor4))
                        call address(stor4).setCustomGasPrice(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args 10^11
                        require ext_call.success
        stor27[stor14] = 0
        stor27[stor15] = 0
}



}
