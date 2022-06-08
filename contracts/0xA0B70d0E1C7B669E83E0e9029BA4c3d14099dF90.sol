contract main {




// =====================  Runtime code  =====================


const name = 'US CAP-ETH'

const decimals = 18

const symbol = 'US CAP-ETH'

const BASE = 10000


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 hard_cap;
uint256 soft_cap;
uint256 period;
uint256 sub_82080419;
uint256 minimum;
uint256 ratio;
uint256 sub_cfb551a4;
uint256 roi;
uint256 sub_1843356c;
uint256 sub_57a8cc06;
uint256 sub_0724cc31;
uint256 sub_1ea740b2;
uint256 sub_3af96136;
uint256 sub_d85cfda0;
uint256 nav;
uint256 start_time;
uint256 end_time;
uint256 sub_2689e595;
uint8 stor22;
uint8 stor22; offset 8
uint8 stor22; offset 16
uint8 stor22; offset 24
address operatorAddress; offset 32
address vaultAddress;
address sub_c51955f5Address;
address sub_997dd812Address;
address sub_350da22eAddress;
address whitelistAddress;
array of struct sub_3c35703f;
mapping of struct members;
array of address stor6454973039698199198119942482240540643982028891330163610098731264865829167633;
array of uint256 stor6454973039698199198119942482240540643982028891330163610098731264865829167634;
array of uint256 stor6454973039698199198119942482240540643982028891330163610098731264865829167635;

function sub_0724cc31(?) {
    return sub_0724cc31
}

function members(address arg1) {
    return bool(members[arg1].field_0), members[arg1].field_256, members[arg1].field_512
}

function end_time() {
    return end_time
}

function totalSupply() {
    return totalSupply
}

function sub_1843356c(?) {
    return sub_1843356c
}

function sub_1ea740b2(?) {
    return sub_1ea740b2
}

function sub_2689e595(?) {
    return sub_2689e595
}

function sub_350da22e(?) {
    return sub_350da22eAddress
}

function sub_3af96136(?) {
    return sub_3af96136
}

function sub_3c35703f(?) {
    require arg1 < sub_3c35703f.length
    return sub_3c35703f[arg1].field_0, sub_3c35703f[arg1].field_256, sub_3c35703f[arg1].field_512
}

function getRedeemRequestsLength() {
    return sub_3c35703f.length
}

function sub_49a10a26(?) {
    return bool(uint8(stor22.field_24))
}

function roi() {
    return roi
}

function minimum() {
    return minimum
}

function operator() {
    return operatorAddress
}

function sub_57a8cc06(?) {
    return sub_57a8cc06
}

function hard_cap() {
    return hard_cap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ratio() {
    return ratio
}

function soft_cap() {
    return soft_cap
}

function sub_82080419(?) {
    return sub_82080419
}

function start_time() {
    return start_time
}

function owner() {
    return owner
}

function whitelist() {
    return whitelistAddress
}

function sub_997dd812(?) {
    return sub_997dd812Address
}

function nav() {
    return nav
}

function sub_c51955f5(?) {
    return sub_c51955f5Address
}

function sub_cfb551a4(?) {
    return sub_cfb551a4
}

function sub_d85cfda0(?) {
    return sub_d85cfda0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function issuable() {
    return bool(uint8(stor22.field_16))
}

function period() {
    return period
}

function sub_f06cba3a(?) {
    return bool(uint8(stor22.field_0))
}

function tradeable() {
    return bool(uint8(stor22.field_8))
}

function vault() {
    return vaultAddress
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function enableTrading() {
    require msg.sender == owner
    uint8(stor22.field_8) = 1
    emit LogTradingEnabled(block.timestamp);
    return 1
}

function disableTrading() {
    require msg.sender == owner
    uint8(stor22.field_8) = 0
    emit LogTradingDisabled(block.timestamp);
    return 1
}

function canIssue() {
    if start_time != 0:
        if end_time > block.timestamp:
            return 1
    uint8(stor22.field_16) = 0
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setVaultAddress(address arg1) {
    require msg.sender == owner
    vaultAddress = arg1
    emit LogVaultAddressSet(address(arg1), block.timestamp);
    return 1
}

function setROI(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    roi = arg1
    emit LogROISet(arg1, block.timestamp);
    return 1
}

function setIsFixed() {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    uint8(stor22.field_0) = 1
    emit LogIsFixedSet(block.timestamp);
    return 1
}

function setOperatorAddress(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
    emit LogOperatorAddressSet(address(arg1), block.timestamp);
    return 1
}

function setPeriod(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    period = arg1
    emit LogPeriodSet(arg1, block.timestamp);
    return 1
}

function setWhitelistAddress(address arg1) {
    require msg.sender == owner
    whitelistAddress = arg1
    emit LogWhitelistAddressSet(address(arg1), block.timestamp);
    return 1
}

function setMinimum(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    minimum = arg1
    emit LogMinimumSet(arg1, block.timestamp);
    return 1
}

function setFeeWalletAddress(address arg1) {
    require msg.sender == owner
    sub_c51955f5Address = arg1
    emit LogFeeWalletAddressSet(address(arg1), block.timestamp);
    return 1
}

function setHardCap(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    hard_cap = arg1
    emit LogHardCapSet(arg1, block.timestamp);
    return 1
}

function setSoftCap(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    soft_cap = arg1
    emit LogSoftCapSet(arg1, block.timestamp);
    return 1
}

function setSmallWalletAddress(address arg1) {
    require msg.sender == owner
    sub_997dd812Address = arg1
    emit LogSmallWalletAddressSet(address(arg1), block.timestamp);
    return 1
}

function setLargeWalletAddress(address arg1) {
    require msg.sender == owner
    sub_350da22eAddress = arg1
    emit LogLargeWalletAddressSet(address(arg1), block.timestamp);
    return 1
}

function setPlatformFee(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_cfb551a4 = arg1
    emit LogPlatformFeeSet(arg1, block.timestamp);
    return 1
}

function setRedeemLevel(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_57a8cc06 = arg1
    emit LogRedeemLevelSet(arg1, block.timestamp);
    return 1
}

function setLockUpPeriod(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_82080419 = arg1
    emit LogLockUpPeriodSet(arg1, block.timestamp);
    return 1
}

function setRequestLimit(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_1ea740b2 = arg1
    emit LogRequestLimitSet(arg1, block.timestamp);
    return 1
}

function setMaxRequestQuota(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_0724cc31 = arg1
    emit LogMaxRequestQuotaSet(arg1, block.timestamp);
    return 1
}

function setPerformanceBonus(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_1843356c = arg1
    emit LogPerformanceBonusSet(arg1, block.timestamp);
    return 1
}

function setRequestLimitInterval(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor22.field_0)
    sub_3af96136 = arg1
    emit LogRequestLimitIntervalSet(arg1, block.timestamp);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    balanceOf[arg1] = balanceOf[stor3]
    balanceOf[stor3] = 0
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function start() {
    require msg.sender == owner
    require not start_time
    uint8(stor22.field_16) = 1
    start_time = block.timestamp
    end_time = block.timestamp + period
    emit LogStart(block.timestamp);
    return 1
}

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit LogTokenBurned(block.timestamp, owner, arg1);
    return 1
}

function getTokenAmount(uint256 arg1) {
    require arg1 >= minimum
    if not arg1:
        if ratio:
            return (0 / ratio)
    else:
        if 10^18 * arg1 / arg1 == 10^18:
            if ratio:
                return (10^18 * arg1 / ratio)
    revert
}

function isLocked(address arg1) {
    if members[address(arg1)].field_256 + 1 > sub_1ea740b2:
        return 1
    if members[address(arg1)].field_256 + 1 == sub_1ea740b2:
        emit LogAddressLocked(block.timestamp, arg1);
        return 0
    else:
        return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function isWhitelist(address arg1) {
    require ext_code.size(whitelistAddress)
    call whitelistAddress.isWhite(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require 1 == bool(uint8(stor22.field_8))
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(uint8(stor22.field_8))
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require not uint8(stor22.field_16)
    require not uint8(stor22.field_24)
    require balanceOf[msg.sender] > 0
    if not balanceOf[address(msg.sender)]:
        balanceOf[msg.sender] = 0
        call msg.sender with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LogRefunded(0, block.timestamp, msg.sender);
    else:
        require ratio * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] == ratio
        balanceOf[msg.sender] = 0
        call msg.sender with:
           value ratio * balanceOf[address(msg.sender)] / 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LogRefunded(ratio * balanceOf[address(msg.sender)] / 10^18, block.timestamp, msg.sender);
    return 0
}

function buyTokens(address arg1) payable {
    require arg1
    require uint8(stor22.field_16)
    require eth.balance(this.address) < hard_cap
    require msg.value >= minimum
    if not msg.value:
        require ratio
        if 0 == start_time:
            uint8(stor22.field_16) = 0
            revert
        if end_time <= block.timestamp:
            uint8(stor22.field_16) = 0
            revert
        require 0 / ratio <= balanceOf[stor3]
        balanceOf[stor3] -= 0 / ratio
        require (0 / ratio) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = (0 / ratio) + balanceOf[arg1]
        emit LogTokenBought(msg.value, 0 / ratio, block.timestamp, msg.sender, arg1);
    else:
        require 10^18 * msg.value / msg.value == 10^18
        require ratio
        if 0 == start_time:
            uint8(stor22.field_16) = 0
            revert
        if end_time <= block.timestamp:
            uint8(stor22.field_16) = 0
            revert
        require 10^18 * msg.value / ratio <= balanceOf[stor3]
        balanceOf[stor3] -= 10^18 * msg.value / ratio
        require (10^18 * msg.value / ratio) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = (10^18 * msg.value / ratio) + balanceOf[arg1]
        emit LogTokenBought(msg.value, 10^18 * msg.value / ratio, block.timestamp, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value >= 0
    require msg.sender
    require uint8(stor22.field_16)
    require eth.balance(this.address) < hard_cap
    require msg.value >= minimum
    if not msg.value:
        require ratio
        if 0 == start_time:
            uint8(stor22.field_16) = 0
            revert
        if end_time <= block.timestamp:
            uint8(stor22.field_16) = 0
            revert
        require 0 / ratio <= balanceOf[stor3]
        balanceOf[stor3] -= 0 / ratio
        require (0 / ratio) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (0 / ratio) + balanceOf[msg.sender]
        emit LogTokenBought(msg.value, 0 / ratio, block.timestamp, msg.sender, msg.sender);
    else:
        require 10^18 * msg.value / msg.value == 10^18
        require ratio
        if 0 == start_time:
            uint8(stor22.field_16) = 0
            revert
        if end_time <= block.timestamp:
            uint8(stor22.field_16) = 0
            revert
        require 10^18 * msg.value / ratio <= balanceOf[stor3]
        balanceOf[stor3] -= 10^18 * msg.value / ratio
        require (10^18 * msg.value / ratio) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (10^18 * msg.value / ratio) + balanceOf[msg.sender]
        emit LogTokenBought(msg.value, 10^18 * msg.value / ratio, block.timestamp, msg.sender, msg.sender);
}

function finalize(uint256 arg1) {
    require msg.sender == owner
    require start_time
    require arg1 > 0
    if eth.balance(this.address) <= soft_cap:
        uint8(stor22.field_24) = 0
    else:
        sub_d85cfda0 = arg1
        sub_2689e595 = block.timestamp + sub_82080419
        if not eth.balance(this.address):
            require 0 <= eth.balance(this.address)
            call vaultAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_c51955f5Address with:
                 gas 2300 wei
        else:
            require sub_cfb551a4 * eth.balance(this.address) / eth.balance(this.address) == sub_cfb551a4
            require sub_cfb551a4 * eth.balance(this.address) / 10000 <= eth.balance(this.address)
            call vaultAddress with:
               value eth.balance(this.address) - (sub_cfb551a4 * eth.balance(this.address) / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_c51955f5Address with:
               value sub_cfb551a4 * eth.balance(this.address) / 10000 wei
                 gas 2300 * is_zero(value) wei
    uint8(stor22.field_16) = 0
    emit LogFinalize(block.timestamp);
}

function requestRedeem(uint256 arg1) {
    require ext_code.size(whitelistAddress)
    call whitelistAddress.isWhite(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_3c35703f.length + 1 <= sub_0724cc31
    require sub_2689e595 > 0
    require block.timestamp >= sub_2689e595
    require not uint8(stor22.field_16)
    require uint8(stor22.field_24)
    require arg1 > 0
    require not members[msg.sender].field_0
    require balanceOf[msg.sender] >= arg1
    if not members[address(msg.sender)].field_512:
        members[address(msg.sender)].field_512 = block.timestamp
    require members[address(msg.sender)].field_512 <= block.timestamp
    if block.timestamp - members[address(msg.sender)].field_512 > sub_3af96136:
        members[address(msg.sender)].field_512 = block.timestamp
        members[address(msg.sender)].field_256 = 0
    require members[address(msg.sender)].field_256 + 1 <= sub_1ea740b2
    if members[address(msg.sender)].field_256 + 1 == sub_1ea740b2:
        emit LogAddressLocked(block.timestamp, msg.sender);
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[stor3] >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    sub_3c35703f.length++
    storE456[stor28.length] = msg.sender
    storE456[stor28.length] = arg1
    storE456[stor28.length] = block.timestamp
    members[address(msg.sender)].field_256++
    members[address(msg.sender)].field_0 = 1
    emit LogRequestRedeem(arg1, block.timestamp, msg.sender);
    if sub_3c35703f.length == sub_0724cc31:
        emit LogRequestFull(block.timestamp);
    return 1
}

function getRedeemValue(uint256 arg1) {
    require arg1 > 0
    if not arg1:
        if nav < roi:
            return 0
        if roi <= nav:
            return 0
    else:
        if ratio * arg1 / arg1 == ratio:
            if nav < roi:
                if not ratio * arg1 / 10^18:
                    return 0
                if nav * ratio * arg1 / 10^18 / ratio * arg1 / 10^18 == nav:
                    if 0 <= nav * ratio * arg1 / 10^18 / 10000:
                        return (nav * ratio * arg1 / 10^18 / 10000)
            else:
                if roi <= nav:
                    if not ratio * arg1 / 10^18:
                        if not ratio * arg1 / 10^18:
                            return 0
                        if nav * ratio * arg1 / 10^18 / ratio * arg1 / 10^18 == nav:
                            if 0 <= nav * ratio * arg1 / 10^18 / 10000:
                                return (nav * ratio * arg1 / 10^18 / 10000)
                    else:
                        if (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / ratio * arg1 / 10^18 == nav - roi:
                            if not (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000:
                                if not ratio * arg1 / 10^18:
                                    return 0
                                if nav * ratio * arg1 / 10^18 / ratio * arg1 / 10^18 == nav:
                                    if 0 <= nav * ratio * arg1 / 10^18 / 10000:
                                        return (nav * ratio * arg1 / 10^18 / 10000)
                            else:
                                if sub_1843356c * (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000 / (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000 == sub_1843356c:
                                    if not ratio * arg1 / 10^18:
                                        if sub_1843356c * (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000 / 10000 <= 0:
                                            return -(sub_1843356c * (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000 / 10000)
                                    else:
                                        if nav * ratio * arg1 / 10^18 / ratio * arg1 / 10^18 == nav:
                                            if sub_1843356c * (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000 / 10000 <= nav * ratio * arg1 / 10^18 / 10000:
                                                return ((nav * ratio * arg1 / 10^18 / 10000) - (sub_1843356c * (nav * ratio * arg1 / 10^18) - (roi * ratio * arg1 / 10^18) / 10000 / 10000))
    revert
}

function updateNAV(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == operatorAddress
    require arg1 > 0
    nav = arg1
    s = 0
    s = 0
    idx = 0
    while idx < sub_3c35703f.length:
        require sub_3c35703f[idx].field_256 > 0
        if not sub_3c35703f[idx].field_256:
            if nav >= roi:
                require roi <= nav
            if 0 >= sub_57a8cc06:
                require ext_code.size(sub_350da22eAddress)
                call sub_350da22eAddress.0x1e9a6950 with:
                     gas gas_remaining wei
                    args sub_3c35703f[idx].field_0, 0
            else:
                require ext_code.size(sub_997dd812Address)
                call sub_997dd812Address.0x1e9a6950 with:
                     gas gas_remaining wei
                    args sub_3c35703f[idx].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[0] = sub_3c35703f[idx].field_0
            mem[32] = 29
            members[stor28[idx].field_0].field_0 = 0
            mem[mem[64]] = sub_3c35703f[idx].field_256
            mem[mem[64] + 32] = nav
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = block.timestamp
            emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
        else:
            require ratio * sub_3c35703f[idx].field_256 / sub_3c35703f[idx].field_256 == ratio
            if nav < roi:
                if not ratio * sub_3c35703f[idx].field_256 / 10^18:
                    if 0 >= sub_57a8cc06:
                        require ext_code.size(sub_350da22eAddress)
                        call sub_350da22eAddress.0x1e9a6950 with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, 0
                    else:
                        require ext_code.size(sub_997dd812Address)
                        call sub_997dd812Address.0x1e9a6950 with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = sub_3c35703f[idx].field_0
                    mem[32] = 29
                    members[stor28[idx].field_0].field_0 = 0
                    mem[mem[64]] = sub_3c35703f[idx].field_256
                    mem[mem[64] + 32] = nav
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = block.timestamp
                    emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
                else:
                    require nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / ratio * sub_3c35703f[idx].field_256 / 10^18 == nav
                    require 0 <= nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                    if nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000 >= sub_57a8cc06:
                        require ext_code.size(sub_350da22eAddress)
                        call sub_350da22eAddress.0x1e9a6950 with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                    else:
                        require ext_code.size(sub_997dd812Address)
                        call sub_997dd812Address.0x1e9a6950 with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = sub_3c35703f[idx].field_0
                    mem[32] = 29
                    members[stor28[idx].field_0].field_0 = 0
                    mem[mem[64]] = sub_3c35703f[idx].field_256
                    mem[mem[64] + 32] = nav
                    mem[mem[64] + 64] = nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                    mem[mem[64] + 96] = block.timestamp
                    emit LogRedeem(sub_3c35703f[idx].field_256, nav, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
            else:
                require roi <= nav
                if not ratio * sub_3c35703f[idx].field_256 / 10^18:
                    if not ratio * sub_3c35703f[idx].field_256 / 10^18:
                        if 0 >= sub_57a8cc06:
                            require ext_code.size(sub_350da22eAddress)
                            call sub_350da22eAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, 0
                        else:
                            require ext_code.size(sub_997dd812Address)
                            call sub_997dd812Address.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[0] = sub_3c35703f[idx].field_0
                        mem[32] = 29
                        members[stor28[idx].field_0].field_0 = 0
                        mem[mem[64]] = sub_3c35703f[idx].field_256
                        mem[mem[64] + 32] = nav
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = block.timestamp
                        emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
                    else:
                        require nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / ratio * sub_3c35703f[idx].field_256 / 10^18 == nav
                        require 0 <= nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                        if nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000 >= sub_57a8cc06:
                            require ext_code.size(sub_350da22eAddress)
                            call sub_350da22eAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                        else:
                            require ext_code.size(sub_997dd812Address)
                            call sub_997dd812Address.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[0] = sub_3c35703f[idx].field_0
                        mem[32] = 29
                        members[stor28[idx].field_0].field_0 = 0
                        mem[mem[64]] = sub_3c35703f[idx].field_256
                        mem[mem[64] + 32] = nav
                        mem[mem[64] + 64] = nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                        mem[mem[64] + 96] = block.timestamp
                        emit LogRedeem(sub_3c35703f[idx].field_256, nav, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
                else:
                    require (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / ratio * sub_3c35703f[idx].field_256 / 10^18 == nav - roi
                    if not (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000:
                        if not ratio * sub_3c35703f[idx].field_256 / 10^18:
                            if 0 >= sub_57a8cc06:
                                require ext_code.size(sub_350da22eAddress)
                                call sub_350da22eAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, 0
                            else:
                                require ext_code.size(sub_997dd812Address)
                                call sub_997dd812Address.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            mem[0] = sub_3c35703f[idx].field_0
                            mem[32] = 29
                            members[stor28[idx].field_0].field_0 = 0
                            mem[mem[64]] = sub_3c35703f[idx].field_256
                            mem[mem[64] + 32] = nav
                            mem[mem[64] + 64] = 0
                            mem[mem[64] + 96] = block.timestamp
                            emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
                        else:
                            require nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / ratio * sub_3c35703f[idx].field_256 / 10^18 == nav
                            require 0 <= nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                            if nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000 >= sub_57a8cc06:
                                require ext_code.size(sub_350da22eAddress)
                                call sub_350da22eAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                            else:
                                require ext_code.size(sub_997dd812Address)
                                call sub_997dd812Address.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            mem[0] = sub_3c35703f[idx].field_0
                            mem[32] = 29
                            members[stor28[idx].field_0].field_0 = 0
                            mem[mem[64]] = sub_3c35703f[idx].field_256
                            mem[mem[64] + 32] = nav
                            mem[mem[64] + 64] = nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                            mem[mem[64] + 96] = block.timestamp
                            emit LogRedeem(sub_3c35703f[idx].field_256, nav, nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
                    else:
                        require sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 == sub_1843356c
                        if not ratio * sub_3c35703f[idx].field_256 / 10^18:
                            require sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000 <= 0
                            if -sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000 >= sub_57a8cc06:
                                require ext_code.size(sub_350da22eAddress)
                                call sub_350da22eAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, -sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000
                            else:
                                require ext_code.size(sub_997dd812Address)
                                call sub_997dd812Address.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, -sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            mem[0] = sub_3c35703f[idx].field_0
                            mem[32] = 29
                            members[stor28[idx].field_0].field_0 = 0
                            mem[mem[64]] = sub_3c35703f[idx].field_256
                            mem[mem[64] + 32] = nav
                            mem[mem[64] + 64] = -sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000
                            mem[mem[64] + 96] = block.timestamp
                            emit LogRedeem(sub_3c35703f[idx].field_256, nav, -sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
                        else:
                            require nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / ratio * sub_3c35703f[idx].field_256 / 10^18 == nav
                            require sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000 <= nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000
                            if (nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000) - (sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000) >= sub_57a8cc06:
                                require ext_code.size(sub_350da22eAddress)
                                call sub_350da22eAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, (nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000) - (sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000)
                            else:
                                require ext_code.size(sub_997dd812Address)
                                call sub_997dd812Address.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args sub_3c35703f[idx].field_0, (nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000) - (sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            mem[0] = sub_3c35703f[idx].field_0
                            mem[32] = 29
                            members[stor28[idx].field_0].field_0 = 0
                            mem[mem[64]] = sub_3c35703f[idx].field_256
                            mem[mem[64] + 32] = nav
                            mem[mem[64] + 64] = (nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000) - (sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000)
                            mem[mem[64] + 96] = block.timestamp
                            emit LogRedeem(sub_3c35703f[idx].field_256, nav, (nav * ratio * sub_3c35703f[idx].field_256 / 10^18 / 10000) - (sub_1843356c * (nav * ratio * sub_3c35703f[idx].field_256 / 10^18) - (roi * ratio * sub_3c35703f[idx].field_256 / 10^18) / 10000 / 10000), block.timestamp, sub_3c35703f[idx].field_0);
        s = sub_3c35703f[idx].field_256
        s = sub_3c35703f[idx].field_0
        idx = idx + 1
        continue 
    sub_3c35703f.length = 0
    idx = 0
    while 3 * sub_3c35703f.length > idx:
        sub_3c35703f[idx].field_0 = 0
        sub_3c35703f[idx].field_256 = 0
        sub_3c35703f[idx].field_512 = 0
        idx = idx + 3
        continue 
    emit LogNavUpdated(block.timestamp, nav, nav);
}



}
