contract main {




// =====================  Runtime code  =====================


const name = 'LinkPool Owners'

const totalSupply = 4000 * 10^18

const decimals = 18

const balanceOf(address arg1) = 0

const symbol = 'LP'

const getOwnerTokens(address arg1) = 0

const getClaimedOwners = 0


address owner;
mapping of struct ownerPercentage;
array of struct owner;
mapping of uint256 allowance;
mapping of uint256 sub_a4e47b66;
mapping of uint256 sub_2f6a2b52;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint256 sub_ec4690de;
uint256 totalContributed;
uint256 precisionMinimum;
uint256 stor11;
uint256 stor12;
uint128 stor13;
uint128 stor13; offset 128
uint256 stor13;
uint8 distributionActive;
uint8 locked; offset 8
uint8 stor14; offset 16
address walletAddress; offset 24
address stor15;

function totalContributed() {
    return totalContributed
}

function getAllowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getOwnerPercentage(address arg1) {
    return ownerPercentage[address(arg1)].field_384
}

function sub_2f6a2b52(?) {
    return sub_2f6a2b52[arg1]
}

function wallet() {
    return walletAddress
}

function getCurrentOwners() {
    return owner.length
}

function tokenWhitelist(address arg1) {
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function distributionActive() {
    return bool(distributionActive)
}

function whitelist(address arg1) {
    return bool(stor7[arg1])
}

function sub_a4e47b66(?) {
    return sub_a4e47b66[arg1][arg2]
}

function locked() {
    return bool(locked)
}

function precisionMinimum() {
    return precisionMinimum
}

function getOwnerAddress(uint256 arg1) {
    if arg1 >= owner.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Index is greater than the map size'
    return owner[arg1].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_ec4690de(?) {
    return sub_ec4690de[arg1]
}

function setDistributionMinimum(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    sub_ec4690de[address(arg1)] = arg2
}

function lockShares() {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    if locked:
        revert with 0, 'Shares already locked'
    locked = 1
}

function startContribution() {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    if stor14:
        revert with 0, 'Contribution has started'
    stor14 = 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function whitelistToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    if stor6[address(arg1)]:
        revert with 0, 'Token is already whitelisted'
    stor6[address(arg1)] = 1
    sub_ec4690de[address(arg1)] = arg2
}

function whitelistWallet(address arg1) {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    if locked:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't whitelist when the contract is locked'
    if not arg1:
        revert with 0, 'Blackhole address'
    stor7[address(arg1)] = 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'tYour amount isn't divisible by he minimum precision amount'
    if arg2 > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The amount to increase allowance by is higher than your balance'
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
}

function sendOwnershipAndCall(address arg1, uint256 arg2, bytes arg3) {
    if not ownerPercentage[msg.sender].field_256:
        revert with 0, 'You are not authorised to call his function'
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0, 'tYour amount isn't divisible by he minimum precision amount'
    if 0x100000000000000000000000000000000 <= arg2:
        revert with 0, 'Amount isn't 128bit or smaller'
    if arg1 == msg.sender:
        revert with 0, 'You can't send to yourself'
    if not arg1:
        revert with 0, 'Ownership cannot be blackholed'
    revert with 0, 'You don't have any ownership'
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'tYour amount isn't divisible by he minimum precision amount'
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The amount to decrease allowance by is higher than the current allowance'
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    if not allowance[msg.sender][address(arg1)] - arg2:
        allowance[msg.sender][address(arg1)] = 0
}

function sendOwnership(address arg1, uint256 arg2) {
    if not ownerPercentage[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorised to call his function'
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'tYour amount isn't divisible by he minimum precision amount'
    if 0x100000000000000000000000000000000 <= arg2:
        revert with 0, 'Amount isn't 128bit or smaller'
    if arg1 == msg.sender:
        revert with 0, 'You can't send to yourself'
    if not arg1:
        revert with 0, 'Ownership cannot be blackholed'
    revert with 0, 'You don't have any ownership'
}

function sub_7b9af5f0(?) {
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0, 'tYour amount isn't divisible by he minimum precision amount'
    require sub_2f6a2b52[msg.sender] <= 0
    if -sub_2f6a2b52[msg.sender] < arg2:
        revert with 0, 'The amount to be staked is higher than your balance'
    require arg2 + sub_2f6a2b52[msg.sender] >= sub_2f6a2b52[msg.sender]
    sub_2f6a2b52[msg.sender] += arg2
    require arg2 + sub_a4e47b66[msg.sender][address(arg1)] >= sub_a4e47b66[msg.sender][address(arg1)]
    sub_a4e47b66[msg.sender][address(arg1)] += arg2
    require ext_code.size(arg1)
    call arg1.0x89c9798f with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe9fee739: arg2, msg.sender, arg1
}

function sendOwnershipFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sender is not approved to send ownership of that amount'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if not allowance[address(arg1)][msg.sender] - arg3:
        allowance[address(arg1)][msg.sender] = 0
    if arg3 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg3 % precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'tYour amount isn't divisible by he minimum precision amount'
    if 0x100000000000000000000000000000000 <= arg3:
        revert with 0, 'Amount isn't 128bit or smaller'
    if arg2 == arg1:
        revert with 0, 'You can't send to yourself'
    if not arg2:
        revert with 0, 'Ownership cannot be blackholed'
    revert with 0, 'You don't have any ownership'
}

function sub_73c3f59b(?) {
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0, 'tYour amount isn't divisible by he minimum precision amount'
    if arg2 > sub_2f6a2b52[msg.sender]:
        revert with 0, 'The stake amount to remove is higher than what's staked'
    if arg2 > sub_a4e47b66[msg.sender][address(arg1)]:
        revert with 0, 'The stake amount to remove is greater than what's staked with the receiver'
    require arg2 <= sub_2f6a2b52[msg.sender]
    sub_2f6a2b52[msg.sender] -= arg2
    require arg2 <= sub_a4e47b66[msg.sender][address(arg1)]
    sub_a4e47b66[msg.sender][address(arg1)] -= arg2
    if not sub_a4e47b66[msg.sender][address(arg1)] - arg2:
        sub_a4e47b66[msg.sender][address(arg1)] = 0
    if not sub_2f6a2b52[msg.sender]:
        sub_2f6a2b52[msg.sender] = 0
    require ext_code.size(arg1)
    call arg1.0xeccce6bf with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xba46c565: arg2, msg.sender, arg1
}

function setOwnerShare(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'tYour amount isn't divisible by he minimum precision amount'
    if locked:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't manually set shares, it's locked'
    if distributionActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set owners share when distribution is active'
    if 0x100000000000000000000000000000000 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution value isn't 128bit or smaller'
    require stor11
    if not ownerPercentage[address(arg1)].field_256:
        ownerPercentage[address(arg1)].field_256 = arg2 or (10^6 * arg2 / stor11) + 5 / 10 << 128
        if 0 < ownerPercentage[address(arg1)].field_0:
            revert with 0, 'Map replacement detected'
        owner.length++
        if owner.length > owner.length + 1:
            idx = owner.length + 1
            while owner.length > idx:
                owner[idx].field_0 = 0
                idx = idx + 1
                continue 
        ownerPercentage[address(arg1)].field_0 = owner.length + 1
        require owner.length < owner.length
        owner[owner.length].field_0 = arg1
        owner[owner.length].field_160 = 0
    require ((10^6 * arg2 / stor11) + 5 / 10) + ownerPercentage[address(arg1)].field_384 >= ownerPercentage[address(arg1)].field_384
    require arg2 >= 0
    ownerPercentage[address(arg1)].field_256 = arg2 or ((10^6 * arg2 / stor11) + 5 / 10) + ownerPercentage[address(arg1)].field_384 << 128
    if 0 < ownerPercentage[address(arg1)].field_0:
    owner.length++
    if owner.length > owner.length + 1:
        idx = owner.length + 1
        while owner.length > idx:
            owner[idx].field_0 = 0
            idx = idx + 1
            continue 
    ownerPercentage[address(arg1)].field_0 = owner.length + 1
    require owner.length < owner.length
    owner[owner.length].field_0 = arg1
    owner[owner.length].field_160 = 0
    revert with 0, 'Sender does not exist in the ma'
}

function distributeTokens(address arg1) {
    if not ownerPercentage[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorised to call his function'
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is not whitelisted to be distributed'
    if distributionActive:
        revert with 0, 'Distribution is already active'
    distributionActive = 1
    if not arg1:
        if 0x100000000000000000000000000000000 <= eth.balance(this.address):
            if 0x100000000000000000000000000000000 <= sub_ec4690de[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Amount in the contract isn't above the minimum distribution limit'
            uint256(stor13.field_0) = 0
            stor15 = arg1
            emit TokenDistributionActive(0x100000000000000000000000000000000, owner.length, arg1);
        else:
            if eth.balance(this.address) <= sub_ec4690de[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Amount in the contract isn't above the minimum distribution limit'
            uint128(stor13.field_0) = 0
            uint128(stor13.field_128) = uint128(eth.balance(this.address))
            stor15 = arg1
            emit TokenDistributionActive(eth.balance(this.address), owner.length, arg1);
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0x100000000000000000000000000000000 <= ext_call.return_data[0]:
            if 0x100000000000000000000000000000000 <= sub_ec4690de[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Amount in the contract isn't above the minimum distribution limit'
            uint256(stor13.field_0) = 0
            stor15 = arg1
            emit TokenDistributionActive(0x100000000000000000000000000000000, owner.length, arg1);
        else:
            if ext_call.return_data[0] <= sub_ec4690de[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Amount in the contract isn't above the minimum distribution limit'
            uint128(stor13.field_0) = 0
            uint128(stor13.field_128) = uint128(ext_call.return_data[0])
            stor15 = arg1
            emit TokenDistributionActive(ext_call.return_data[0], owner.length, arg1);
}

function batchClaim(uint256 arg1) {
    if not ownerPercentage[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authorised to call his function'
    if not distributionActive:
        revert with 0, 'Distribution isn't active'
    require arg1 >= arg1
    uint256(stor13.field_0) = arg1 or uint128(stor13.field_128) << 128
    if arg1 > owner.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'To value is greater than the amount of owners'
    if arg1 == owner.length:
        distributionActive = 0
        emit TokenDistributionComplete(uint128(stor13.field_0), owner.length, stor15);
    idx = 0
    while idx < arg1:
        require idx < owner.length
        mem[0] = owner[idx].field_0
        mem[32] = 1
        if uint128(stor13.field_128):
            require uint128(stor13.field_128)
            require ownerPercentage[stor2[idx].field_0].field_384 * uint128(stor13.field_128) / uint128(stor13.field_128) == ownerPercentage[stor2[idx].field_0].field_384
        if stor15:
            mem[100] = owner[idx].field_0
            mem[132] = ownerPercentage[stor2[idx].field_0].field_384 * uint128(stor13.field_128) / 100000
            require ext_code.size(stor15)
            call stor15.0xa9059cbb with:
                 gas gas_remaining wei
                args owner[idx].field_0, ownerPercentage[stor2[idx].field_0].field_384 * uint128(stor13.field_128) / 100000
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERC20 transfer failed'
        else:
            if ext_code.size(owner[idx].field_0) <= 0:
                call owner[idx].field_0 with:
                   value ownerPercentage[stor2[idx].field_0].field_384 * uint128(stor13.field_128) / 100000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[100] = owner[idx].field_0
                mem[132] = ownerPercentage[stor2[idx].field_0].field_384 * uint128(stor13.field_128) / 100000
                require ext_code.size(stor15)
                call stor15.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner[idx].field_0, ownerPercentage[stor2[idx].field_0].field_384 * uint128(stor13.field_128) / 100000
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC20 transfer failed'
        idx = idx + 1
        continue 
}

function addContribution(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'pSender not authorised.'
    if arg2 <= 0:
        revert with 0, 'Cannot use zero'
    require precisionMinimum
    if arg2 % precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'tYour amount isn't divisible by he minimum precision amount'
    if 0x100000000000000000000000000000000 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution amount isn't 128bit or smaller'
    if locked:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale period over, contribution is locked'
    if distributionActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot contribute when distribution is active'
    if arg2 < precisionMinimum:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount needs to be above the minimum contribution'
    if arg2 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your contribution is greater than the hard cap'
    require arg2 + totalContributed >= totalContributed
    if stor12 < arg2 + totalContributed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your contribution would cause the total to exceed the hardcap'
    require arg2 + totalContributed >= totalContributed
    totalContributed += arg2
    require stor11
    if not ownerPercentage[address(arg1)].field_256:
        ownerPercentage[address(arg1)].field_256 = arg2 or (10^6 * arg2 / stor11) + 5 / 10 << 128
        if 0 < ownerPercentage[address(arg1)].field_0:
            revert with 0, 'Map replacement detected'
        owner.length++
        if owner.length > owner.length + 1:
            idx = owner.length + 1
            while owner.length > idx:
                owner[idx].field_0 = 0
                idx = idx + 1
                continue 
        ownerPercentage[address(arg1)].field_0 = owner.length + 1
        require owner.length < owner.length
        owner[owner.length].field_0 = arg1
        owner[owner.length].field_160 = 0
        emit Contribution((10^6 * arg2 / stor11) + 5 / 10, arg2, arg1);
    require arg2 >= 0
    ownerPercentage[address(arg1)].field_256 = arg2 or ownerPercentage[address(arg1)].field_384 + ((10^6 * arg2 / stor11) + 5 / 10) << 128
    if 0 < ownerPercentage[address(arg1)].field_0:
        emit Contribution(ownerPercentage[address(arg1)].field_384 + ((10^6 * arg2 / stor11) + 5 / 10), arg2, arg1);
    owner.length++
    if owner.length > owner.length + 1:
        idx = owner.length + 1
        while owner.length > idx:
            owner[idx].field_0 = 0
            idx = idx + 1
            continue 
    ownerPercentage[address(arg1)].field_0 = owner.length + 1
    require owner.length < owner.length
    owner[owner.length].field_0 = arg1
    owner[owner.length].field_160 = 0
    revert with 0, 'Sender does not exist in the ma'
}

function _fallback() payable {
    if not locked:
        if not stor14:
            revert with 0, 'Contribution is not active'
        if not stor7[msg.sender]:
            revert with 0, 'You are not whitelisted'
        if msg.value <= 0:
            revert with 0, 'Cannot use zero'
        require precisionMinimum
        if msg.value % precisionMinimum:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'tYour amount isn't divisible by he minimum precision amount'
        if 0x100000000000000000000000000000000 <= msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution amount isn't 128bit or smaller'
        if locked:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale period over, contribution is locked'
        if distributionActive:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot contribute when distribution is active'
        if msg.value < precisionMinimum:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount needs to be above the minimum contribution'
        if msg.value > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your contribution is greater than the hard cap'
        require msg.value + totalContributed >= totalContributed
        if stor12 < msg.value + totalContributed:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Your contribution would cause the total to exceed the hardcap'
        require msg.value + totalContributed >= totalContributed
        totalContributed += msg.value
        require stor11
        if ownerPercentage[address(msg.sender)].field_256:
            require msg.value >= 0
            ownerPercentage[address(msg.sender)].field_256 = msg.value or ownerPercentage[address(msg.sender)].field_384 + ((10^6 * msg.value / stor11) + 5 / 10) << 128
            if 0 < ownerPercentage[address(msg.sender)].field_0:
                emit Contribution(ownerPercentage[address(msg.sender)].field_384 + ((10^6 * msg.value / stor11) + 5 / 10), msg.value, msg.sender);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            owner.length++
            if owner.length > owner.length + 1:
                idx = owner.length + 1
                while owner.length > idx:
                    owner[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            ownerPercentage[address(msg.sender)].field_0 = owner.length + 1
            require owner.length < owner.length
            owner[owner.length].field_0 = msg.sender
            owner[owner.length].field_160 = 0
            revert with 0, 'Sender does not exist in the ma'
        ownerPercentage[address(msg.sender)].field_256 = msg.value or (10^6 * msg.value / stor11) + 5 / 10 << 128
        if 0 < ownerPercentage[address(msg.sender)].field_0:
            revert with 0, 'Map replacement detected'
        owner.length++
        if owner.length > owner.length + 1:
            idx = owner.length + 1
            while owner.length > idx:
                owner[idx].field_0 = 0
                idx = idx + 1
                continue 
        ownerPercentage[address(msg.sender)].field_0 = owner.length + 1
        require owner.length < owner.length
        owner[owner.length].field_0 = msg.sender
        owner[owner.length].field_160 = 0
        emit Contribution((10^6 * msg.value / stor11) + 5 / 10, msg.value, msg.sender);
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
