contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_309cd450(?)
#  - updatePrice()
#
const name = 'XKING'

const decimals = 18

const sub_3dc8870a(?) = 10000000 * 10^18

const sub_7d7e5a7f(?) = 30000000 * 10^18

const sub_951f7808(?) = 3000000 * 10^18

const symbol = 'XKG'

const TOKEN_THIRD_DISCOUNT_MULTIPLIER = 111111

const TOKEN_FIRST_DISCOUNT_MULTIPLIER = 142857

const TOKEN_MIN = 10^18

const TOKEN_SECOND_DISCOUNT_MULTIPLIER = 125000

const TOKEN_CREATED_MIN = 3000000 * 10^18

const TOKEN_CREATION_CAP = 50000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
address stor4;
mapping of uint256 stor5;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of address holder;
address stor12;
address stor13;
uint256 stor13;
array of uint256 stor14;
uint256 ETH_USD_EXCHANGE_RATE_IN_CENTS;
uint8 stor18;
uint256 stor19;
uint256 fundingStartTime;
uint256 fundingEndTime;
uint256 sub_43f646f8;
uint8 sub_474563da; offset 160
address tokenVendorAddress;
mapping of uint8 stor25;
mapping of uint256 ccLockedUpBalances;
mapping of uint256 stor27;
mapping of uint256 stor28;
uint256 sub_65aebd83;
uint256 allReceivedEth;
uint8 teamTokensDelivered;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function isKycTeam(address arg1) {
    return bool(stor7[arg1])
}

function totalSupply() {
    return totalSupply
}

function fundingStartTime() {
    return fundingStartTime
}

function holders(uint256 arg1) {
    require arg1 < holder.length
    return holder[arg1]
}

function ccLockedUpBalances(address arg1) {
    return ccLockedUpBalances[arg1]
}

function sub_43f646f8(?) {
    return sub_43f646f8
}

function sub_474563da(?) {
    return bool(sub_474563da)
}

function sub_65aebd83(?) {
    return sub_65aebd83
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

function fundingEndTime() {
    return fundingEndTime
}

function getBalanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenVendor() {
    return tokenVendorAddress
}

function kycVerified(address arg1) {
    return bool(stor8[arg1])
}

function ETH_USD_EXCHANGE_RATE_IN_CENTS() {
    return ETH_USD_EXCHANGE_RATE_IN_CENTS
}

function teamTokensDelivered() {
    return bool(teamTokensDelivered)
}

function isHolder(address arg1) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getHolder(uint256 arg1) {
    require arg1 < holder.length
    return holder[arg1]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_424b0cae(?) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        sub_474563da = 0
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function addToKycTeam(address arg1) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        stor7[address(arg1)] = 1
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function removeFromKycTeam(address arg1) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        stor7[address(arg1)] = 0
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function unlockKyc(address arg1) {
    if bool(stor7[msg.sender]) != 1:
        revert with 0, 32, 22, 0xef6f6e6c79204b5943207465616d206d656d6265727321000000000000000000
    if stor8[address(arg1)]:
        revert with 0, 'KYC verification allready done!'
    stor8[address(arg1)] = 1
    if stor28[address(arg1)] > 0:
        stor27[address(arg1)] = stor28[address(arg1)]
        stor28[address(arg1)] = 0
}

function proceed() {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0) != 2:
        revert with 0, 'state is not paused!'
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        require uint8(stor6.field_8) <= 2
        uint8(stor6.field_0) = uint8(stor6.field_8)
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function pause() {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0) == 2:
        revert with 0, 'state is paused!'
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        require uint8(stor6.field_0) <= 2
        Mask(248, 0, stor6.field_8) = uint8(stor6.field_0)
        uint8(stor6.field_0) = 2
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function revokeKyc(address arg1) {
    if bool(stor7[msg.sender]) != 1:
        revert with 0, 32, 22, 0xef6f6e6c79204b5943207465616d206d656d6265727321000000000000000000
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0):
        require uint8(stor6.field_0) <= 2
        if uint8(stor6.field_0) != 2:
            revert with 0, '', mem[164]
        require uint8(stor6.field_8) <= 2
        if uint8(stor6.field_8):
            revert with 0, '', mem[164]
    if bool(stor8[address(arg1)]) != 1:
        revert with 0, 'KYC verification failed!'
    stor8[address(arg1)] = 0
    if stor27[address(arg1)] > 0:
        stor28[address(arg1)] = stor27[address(arg1)]
        stor27[address(arg1)] = 0
}

function setFundingStartTime(uint256 arg1) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        if block.timestamp > fundingStartTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Funding start time has allready been set to an earlyer timestamp.'
        if arg1 < block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The start of the fundraising should happen in the future'
        fundingStartTime = arg1
        fundingEndTime = arg1 + (696 * 24 * 3600)
        sub_43f646f8 = arg1 + (5088 * 24 * 3600)
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function refuseKyc(address arg1) payable {
    if bool(stor7[msg.sender]) != 1:
        revert with 0, 32, 22, 0xef6f6e6c79204b5943207465616d206d656d6265727321000000000000000000
    if stor8[address(arg1)]:
        revert with 0, 'KYC verification failed!'
    if stor28[address(arg1)] <= 0:
        revert with 0, 'KYC verification failed!'
    if stor28[address(arg1)] != msg.value:
        revert with 0, 'KYC verification failed!'
    if balanceOf[address(arg1)] <= 0:
        revert with 0, 'User balance is null!'
    balanceOf[address(arg1)] = ccLockedUpBalances[address(arg1)]
    stor28[address(arg1)] = 0
    require totalSupply >= balanceOf[address(arg1)]
    totalSupply -= balanceOf[address(arg1)]
    emit 0x299ff81a: msg.value, arg1
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a2ace885(?) {
    if bool(stor7[msg.sender]) != 1:
        revert with 0, 32, 22, 0xef6f6e6c79204b5943207465616d206d656d6265727321000000000000000000
    if block.timestamp >= sub_43f646f8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cancel delivery possible until ccReleaseTime!'
    if bool(stor25[Mask(128, 128, arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PurchaseId taken, so it cannot be canceled!'
    if arg2:
        require arg2
        require 10^16 * arg2 / arg2 == 10^16
    require balanceOf[address(arg3)] >= 10^16 * arg2
    balanceOf[address(arg3)] += -1 * 10^16 * arg2
    require ccLockedUpBalances[address(arg3)] >= 10^16 * arg2
    ccLockedUpBalances[address(arg3)] += -1 * 10^16 * arg2
    require totalSupply >= 10^16 * arg2
    totalSupply += -1 * 10^16 * arg2
    emit 0x73ac2009: (10^16 * arg2), arg3, Mask(128, 128, arg1)
}

function retrieveEth(uint256 arg1, address arg2) {
    if 3000000 * 10^18 > totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token total supply has NOT reached the minimum amount!'
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        if uint32(ext_code.size(arg2)):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Should NOT be a contract address!'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Safe address must be a valid address!'
        if arg1 > eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw amount exceeds contract balance'
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function deliverTeamTokens(address arg1) {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0) != 1:
        revert with 0, 'state is not finalized!'
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        if teamTokensDelivered:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TeamTokens have allready been delivered.'
        if not arg1:
            revert with 0, '_to address must be a valid'
        if totalSupply:
            require totalSupply
            require 111111 * totalSupply / totalSupply == 111111
        require 111111 * totalSupply / 100000 >= totalSupply
        balanceOf[address(arg1)] = (111111 * totalSupply / 100000) - totalSupply
        teamTokensDelivered = 1
        totalSupply = 111111 * totalSupply / 100000
        if not stor10[address(arg1)]:
            holder.length++
            stor175B[stor11.length] = arg1
            stor10[address(arg1)] = 1
        emit 0x7c57937e: ((111111 * totalSupply / 100000) - totalSupply), arg1
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0) != 1:
        revert with 0, 'state is not finalized!'
    if 1 == bool(stor9[msg.sender]):
        if bool(stor8[address(msg.sender)]) != 1:
            revert with 0, 'only KYC verified!'
    if 0 < ccLockedUpBalances[msg.sender]:
        if block.timestamp < sub_43f646f8:
            require balanceOf[address(msg.sender)] >= arg2
            if balanceOf[address(msg.sender)] - arg2 < ccLockedUpBalances[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allow to only transfer the not-locked up tokens!'
    if this.address == arg1:
        return 0
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require balanceOf[msg.sender] >= arg2
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if not stor10[address(arg1)]:
        holder.length++
        stor175B[stor11.length] = arg1
        stor10[address(arg1)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0) != 1:
        revert with 0, 'state is not finalized!'
    if 1 == bool(stor9[address(arg1)]):
        if bool(stor8[address(arg1)]) != 1:
            revert with 0, 'only KYC verified!'
    if ccLockedUpBalances[address(arg1)] > 0:
        if block.timestamp < sub_43f646f8:
            require balanceOf[address(arg1)] >= arg3
            if balanceOf[address(arg1)] - arg3 < ccLockedUpBalances[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allow to only transfer the not-locked up tokens!'
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
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
    require allowance[address(arg1)][msg.sender] >= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if not stor10[address(arg2)]:
        holder.length++
        stor175B[stor11.length] = arg2
        stor10[address(arg2)] = 1
    return 1
}

function finalize(address arg1) {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0):
        revert with 0, 'state is not fundraising!'
    if 3000000 * 10^18 > totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token total supply has NOT reached the minimum amount!'
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        if uint32(ext_code.size(arg1)):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Should NOT be a contract address!'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Safe address must be a valid address!'
        if block.timestamp <= fundingEndTime:
            if 3000000 * 10^18 > totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Only allow to finalize the contract before the ending time if we already reached the cap'
        require uint8(stor6.field_0) <= 2
        if uint8(stor6.field_0) == 2:
            revert with 0, 'state is paused!'
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                revert with 0, 'owner must be admin 1 or admin2'
        stor5[msg.sender] = sha3(call.data[0 len calldata.size])
        if stor5[stor4] == stor5[stor3]:
            uint8(stor6.field_0) = 1
            uint8(stor6.field_0) = 1
            uint8(stor6.field_8) = 1
            stor6.field_256 % 1 = 0
            stor5[stor3] = 0
            stor5[stor4] = 0
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function sub_51c951cc(?) {
    if tokenVendorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Message sender is NOT the Token Vendor!'
    if bool(sub_474563da) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens are not deliverable anymore!'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'arrays not of equal length!'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'arrays not of equal length!'
    if ('cd', 100).length != ('cd', 4).length:
        revert with 0, 'arrays not of equal length!'
    idx = 0
    s = 0
    s = 0
    s = 0
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 36).length
        if cd[((32 * uint8(idx)) + cd[36] + 36)] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens to be delivered must exceed 0!'
        require uint8(idx) < ('cd', 68).length
        require uint8(idx) < ('cd', 4).length
        if not address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
            revert with 0, 'buyer is invalid!'
        require uint8(idx) < ('cd', 36).length
        if cd[((32 * uint8(idx)) + cd[36] + 36)]:
            require cd[((32 * uint8(idx)) + cd[36] + 36)]
            require 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)] / cd[((32 * uint8(idx)) + cd[36] + 36)] == 10^16
        require (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + totalSupply >= totalSupply
        require (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + totalSupply >= 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        if (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + totalSupply > 12500 * 10^18 * 3600:
            revert with 0, 'No more tokens can be created!'
        totalSupply += 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        require uint8(idx) < ('cd', 68).length
        if stor25[Mask(128, 128, cd[((32 * uint8(idx)) + cd[68] + 36)])]:
            revert with 0, 'Allready delivered!'
        require uint8(idx) < ('cd', 100).length
        require uint8(idx) < ('cd', 4).length
        if cd[((32 * uint8(idx)) + cd[100] + 36)]:
        else:
            require (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + ccLockedUpBalances[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] >= ccLockedUpBalances[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]
            require (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + ccLockedUpBalances[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] >= 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
            require uint8(idx) < ('cd', 4).length
            ccLockedUpBalances[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] += 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        require (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] >= balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]
        require (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] >= 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        require uint8(idx) < ('cd', 4).length
        balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] += 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        if not stor10[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
            holder.length++
            stor175B[stor11.length] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
            stor10[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] = 1
        require uint8(idx) < ('cd', 4).length
        mem[32] = 9
        stor9[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] = 1
        require uint8(idx) < ('cd', 68).length
        require uint8(idx) < ('cd', 4).length
        emit 0x66d06994: (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]), address(cd[((32 * uint8(idx)) + cd[4] + 36)]), Mask(128, 128, cd[((32 * uint8(idx)) + cd[68] + 36)])
        mem[0] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[96] = 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        emit Transfer((10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]), this.address, address(cd[((32 * uint8(idx)) + cd[4] + 36)]));
        idx = idx + 1
        s = 12500 * 10^18 * 3600
        s = (10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]) + totalSupply
        s = 10^16 * cd[((32 * uint8(idx)) + cd[36] + 36)]
        continue 
}

function sub_9814ccba(?) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            revert with 0, 'owner must be admin 1 or admin2'
    stor5[msg.sender] = sha3(call.data[0 len calldata.size])
    if stor5[stor4] == stor5[stor3]:
        if not stor12:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor12 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor14.length) = 0
                stor14.length.field_1 = 11
                stor14.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor14.length + 31 / 32 > idx:
                    stor14[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor12 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor14.length) = 0
                    stor14.length.field_1 = 12
                    stor14.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor14.length + 31 / 32 > idx:
                        stor14[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor12 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor14.length) = 0
                        stor14.length.field_1 = 9
                        stor14.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor14.length + 31 / 32 > idx:
                            stor14[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor12 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor12 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor12 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor12 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor14.length) = 0
                            stor14.length.field_1 = 11
                            stor14.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor14.length + 31 / 32 > idx:
                                stor14[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor12)
        else:
            if not ext_code.size(stor12):
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor12 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor14.length) = 0
                    stor14.length.field_1 = 11
                    stor14.length.field_8 = 'eth_mainnet' / 256
                    idx = 0
                    while stor14.length + 31 / 32 > idx:
                        stor14[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor12 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor14.length) = 0
                        stor14.length.field_1 = 12
                        stor14.length.field_8 = 'eth_ropsten3' / 256
                        idx = 0
                        while stor14.length + 31 / 32 > idx:
                            stor14[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor12 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            bool(stor14.length) = 0
                            stor14.length.field_1 = 9
                            stor14.length.field_8 = 'eth_kovan' / 256
                            idx = 0
                            while stor14.length + 31 / 32 > idx:
                                stor14[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor12 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor12 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor12 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor12 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                bool(stor14.length) = 0
                                stor14.length.field_1 = 11
                                stor14.length.field_8 = 'eth_rinkeby' / 256
                                idx = 0
                                while stor14.length + 31 / 32 > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                require ext_code.size(stor12)
        call stor12.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != address(stor13):
            require ext_code.size(stor12)
            call stor12.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
        require ext_code.size(address(stor13))
        call address(stor13).setCustomGasPrice(uint256 arg1) with:
             gas gas_remaining wei
            args (10^9 * arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor19 = arg2
        stor5[stor3] = 0
        stor5[stor4] = 0
}

function _fallback() payable {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0):
        revert with 0, 'state is not fundraising!'
    if block.timestamp < fundingStartTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Accept funds only during fundraising'
    if block.timestamp > fundingEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Accept funds only during fundraising'
    if bool(stor18) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Accept funds only if saleThroughContractEnabled = true'
    if msg.value:
        require msg.value
        require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / msg.value == ETH_USD_EXCHANGE_RATE_IN_CENTS
    if 3000000 * 10^18 > totalSupply:
        if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
            require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
            require 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 142857
        if 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
            revert with 0, 'Tokens bellow TOKEN_MIN'
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        if (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
            revert with 0, 'Token supply above TokenCap'
        if stor8[msg.sender]:
            require msg.value + stor27[msg.sender] >= stor27[msg.sender]
            require msg.value + stor27[msg.sender] >= msg.value
            stor27[msg.sender] += msg.value
        else:
            require msg.value + stor28[msg.sender] >= stor28[msg.sender]
            require msg.value + stor28[msg.sender] >= msg.value
            stor28[msg.sender] += msg.value
        require msg.value + allReceivedEth >= allReceivedEth
        require msg.value + allReceivedEth >= msg.value
        allReceivedEth += msg.value
        totalSupply += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        balanceOf[msg.sender] += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        sub_65aebd83 += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        if not stor10[address(msg.sender)]:
            holder.length++
            stor175B[stor11.length] = msg.sender
            stor10[address(msg.sender)] = 1
        stor9[msg.sender] = 1
        emit 0x3add18e9: (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
        emit Transfer((142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
    else:
        if 10000000 * 10^18 > totalSupply:
            if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                require 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 125000
            if 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
                revert with 0, 'Tokens bellow TOKEN_MIN'
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            if (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
                revert with 0, 'Token supply above TokenCap'
            if stor8[msg.sender]:
                require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                require msg.value + stor27[msg.sender] >= msg.value
                stor27[msg.sender] += msg.value
            else:
                require msg.value + stor28[msg.sender] >= stor28[msg.sender]
                require msg.value + stor28[msg.sender] >= msg.value
                stor28[msg.sender] += msg.value
            require msg.value + allReceivedEth >= allReceivedEth
            require msg.value + allReceivedEth >= msg.value
            allReceivedEth += msg.value
            totalSupply += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            balanceOf[msg.sender] += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            sub_65aebd83 += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            if not stor10[address(msg.sender)]:
                holder.length++
                stor175B[stor11.length] = msg.sender
                stor10[address(msg.sender)] = 1
            stor9[msg.sender] = 1
            emit 0x3add18e9: (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
            emit Transfer((125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
        else:
            if 30000000 * 10^18 <= totalSupply:
                if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                    require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                    require 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 100000
                if 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
                    revert with 0, 'Tokens bellow TOKEN_MIN'
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
                    revert with 0, 'Token supply above TokenCap'
                if stor8[msg.sender]:
                    require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                    require msg.value + stor27[msg.sender] >= msg.value
                    stor27[msg.sender] += msg.value
                else:
                    require msg.value + stor28[msg.sender] >= stor28[msg.sender]
                    require msg.value + stor28[msg.sender] >= msg.value
                    stor28[msg.sender] += msg.value
                require msg.value + allReceivedEth >= allReceivedEth
                require msg.value + allReceivedEth >= msg.value
                allReceivedEth += msg.value
                totalSupply += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                balanceOf[msg.sender] += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                sub_65aebd83 += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if not stor10[address(msg.sender)]:
                    holder.length++
                    stor175B[stor11.length] = msg.sender
                    stor10[address(msg.sender)] = 1
                stor9[msg.sender] = 1
                emit 0x3add18e9: (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
                emit Transfer((100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
            else:
                if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                    require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                    require 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 111111
                if 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
                    revert with 0, 'Tokens bellow TOKEN_MIN'
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
                    revert with 0, 'Token supply above TokenCap'
                if stor8[msg.sender]:
                    require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                    require msg.value + stor27[msg.sender] >= msg.value
                    stor27[msg.sender] += msg.value
                else:
                    require msg.value + stor28[msg.sender] >= stor28[msg.sender]
                    require msg.value + stor28[msg.sender] >= msg.value
                    stor28[msg.sender] += msg.value
                require msg.value + allReceivedEth >= allReceivedEth
                require msg.value + allReceivedEth >= msg.value
                allReceivedEth += msg.value
                totalSupply += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                balanceOf[msg.sender] += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                sub_65aebd83 += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if not stor10[address(msg.sender)]:
                    holder.length++
                    stor175B[stor11.length] = msg.sender
                    stor10[address(msg.sender)] = 1
                stor9[msg.sender] = 1
                emit 0x3add18e9: (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
                emit Transfer((111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
}

function createTokens() payable {
    require uint8(stor6.field_0) <= 2
    if uint8(stor6.field_0):
        revert with 0, 'state is not fundraising!'
    if block.timestamp < fundingStartTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Accept funds only during fundraising'
    if block.timestamp > fundingEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Accept funds only during fundraising'
    if bool(stor18) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Accept funds only if saleThroughContractEnabled = true'
    if msg.value:
        require msg.value
        require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / msg.value == ETH_USD_EXCHANGE_RATE_IN_CENTS
    if 3000000 * 10^18 > totalSupply:
        if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
            require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
            require 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 142857
        if 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
            revert with 0, 'Tokens bellow TOKEN_MIN'
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
        require (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        if (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
            revert with 0, 'Token supply above TokenCap'
        if stor8[msg.sender]:
            require msg.value + stor27[msg.sender] >= stor27[msg.sender]
            require msg.value + stor27[msg.sender] >= msg.value
            stor27[msg.sender] += msg.value
        else:
            require msg.value + stor28[msg.sender] >= stor28[msg.sender]
            require msg.value + stor28[msg.sender] >= msg.value
            stor28[msg.sender] += msg.value
        require msg.value + allReceivedEth >= allReceivedEth
        require msg.value + allReceivedEth >= msg.value
        allReceivedEth += msg.value
        totalSupply += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        balanceOf[msg.sender] += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        sub_65aebd83 += 142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
        if not stor10[address(msg.sender)]:
            holder.length++
            stor175B[stor11.length] = msg.sender
            stor10[address(msg.sender)] = 1
        stor9[msg.sender] = 1
        emit 0x3add18e9: (142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
        emit Transfer((142857 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
    else:
        if 10000000 * 10^18 > totalSupply:
            if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                require 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 125000
            if 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
                revert with 0, 'Tokens bellow TOKEN_MIN'
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
            require (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            if (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
                revert with 0, 'Token supply above TokenCap'
            if stor8[msg.sender]:
                require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                require msg.value + stor27[msg.sender] >= msg.value
                stor27[msg.sender] += msg.value
            else:
                require msg.value + stor28[msg.sender] >= stor28[msg.sender]
                require msg.value + stor28[msg.sender] >= msg.value
                stor28[msg.sender] += msg.value
            require msg.value + allReceivedEth >= allReceivedEth
            require msg.value + allReceivedEth >= msg.value
            allReceivedEth += msg.value
            totalSupply += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            balanceOf[msg.sender] += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            sub_65aebd83 += 125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
            if not stor10[address(msg.sender)]:
                holder.length++
                stor175B[stor11.length] = msg.sender
                stor10[address(msg.sender)] = 1
            stor9[msg.sender] = 1
            emit 0x3add18e9: (125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
            emit Transfer((125000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
        else:
            if 30000000 * 10^18 <= totalSupply:
                if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                    require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                    require 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 100000
                if 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
                    revert with 0, 'Tokens bellow TOKEN_MIN'
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
                require (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
                    revert with 0, 'Token supply above TokenCap'
                if stor8[msg.sender]:
                    require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                    require msg.value + stor27[msg.sender] >= msg.value
                    stor27[msg.sender] += msg.value
                else:
                    require msg.value + stor28[msg.sender] >= stor28[msg.sender]
                    require msg.value + stor28[msg.sender] >= msg.value
                    stor28[msg.sender] += msg.value
                require msg.value + allReceivedEth >= allReceivedEth
                require msg.value + allReceivedEth >= msg.value
                allReceivedEth += msg.value
                totalSupply += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                balanceOf[msg.sender] += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                sub_65aebd83 += 100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if not stor10[address(msg.sender)]:
                    holder.length++
                    stor175B[stor11.length] = msg.sender
                    stor10[address(msg.sender)] = 1
                stor9[msg.sender] = 1
                emit 0x3add18e9: (100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
                emit Transfer((100000 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
            else:
                if ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100:
                    require ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100
                    require 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 == 111111
                if 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000 < 10^18:
                    revert with 0, 'Tokens bellow TOKEN_MIN'
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= totalSupply
                require (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply >= 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000) + totalSupply > 12500 * 10^18 * 3600:
                    revert with 0, 'Token supply above TokenCap'
                if stor8[msg.sender]:
                    require msg.value + stor27[msg.sender] >= stor27[msg.sender]
                    require msg.value + stor27[msg.sender] >= msg.value
                    stor27[msg.sender] += msg.value
                else:
                    require msg.value + stor28[msg.sender] >= stor28[msg.sender]
                    require msg.value + stor28[msg.sender] >= msg.value
                    stor28[msg.sender] += msg.value
                require msg.value + allReceivedEth >= allReceivedEth
                require msg.value + allReceivedEth >= msg.value
                allReceivedEth += msg.value
                totalSupply += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                balanceOf[msg.sender] += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                sub_65aebd83 += 111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000
                if not stor10[address(msg.sender)]:
                    holder.length++
                    stor175B[stor11.length] = msg.sender
                    stor10[address(msg.sender)] = 1
                stor9[msg.sender] = 1
                emit 0x3add18e9: (111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), msg.sender
                emit Transfer((111111 * ETH_USD_EXCHANGE_RATE_IN_CENTS * msg.value / 100 / 100000), this.address, msg.sender);
}



}
