contract main {




// =====================  Runtime code  =====================


const name = 'CAP Mica Hybrid'

const decimals = 18

const symbol = 'CAP-MicaH'

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
uint256 sub_cfb551a4;
uint256 roi;
uint256 sub_1843356c;
uint256 sub_57a8cc06;
uint256 sub_0724cc31;
uint256 sub_1ea740b2;
uint256 sub_3af96136;
uint256 wei_raised;
uint256 token_issued;
uint256 sub_b15b93f7;
uint256 sub_d85cfda0;
uint256 nav;
uint256 start_time;
uint256 end_time;
uint256 sub_2689e595;
uint256 sub_9c8a5794;
uint8 sub_f06cba3a;
uint8 tradeable; offset 8
uint8 issuable; offset 16
uint8 sub_49a10a26; offset 24
address operatorAddress; offset 32
address vaultAddress;
address sub_c51955f5Address;
address sub_997dd812Address;
address sub_350da22eAddress;
address whitelistAddress;
array of struct sub_3c35703f;
mapping of struct members;
mapping of struct sub_e446d408;
array of address stor72469383181153217859287470524408136624600596745406682853122032531702882555911;
array of uint256 stor72469383181153217859287470524408136624600596745406682853122032531702882555912;
array of uint256 stor72469383181153217859287470524408136624600596745406682853122032531702882555913;

function sub_0724cc31(?) {
    return sub_0724cc31
}

function members(address arg1) {
    return bool(members[arg1].field_0), bool(members[arg1].field_8)
}

function isPresaled(address arg1) {
    return bool(members[address(arg1)].field_0)
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

function wei_raised() {
    return wei_raised
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
    return bool(sub_49a10a26)
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

function sub_9c8a5794(?) {
    return sub_9c8a5794
}

function sub_b15b93f7(?) {
    return sub_b15b93f7
}

function token_issued() {
    return token_issued
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

function sub_e446d408(?) {
    return sub_e446d408[arg1].field_0, sub_e446d408[arg1].field_256
}

function issuable() {
    return bool(issuable)
}

function period() {
    return period
}

function sub_f06cba3a(?) {
    return bool(sub_f06cba3a)
}

function tradeable() {
    return bool(tradeable)
}

function vault() {
    return vaultAddress
}

function getTokenAmount(uint256 arg1) {
    require arg1 >= minimum
    return arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function enableTrading() {
    require msg.sender == owner
    tradeable = 1
    emit LogTradingEnabled(block.timestamp);
    return 1
}

function disableTrading() {
    require msg.sender == owner
    tradeable = 0
    emit LogTradingDisabled(block.timestamp);
    return 1
}

function isLocked(address arg1) {
    if sub_e446d408[address(arg1)].field_0 + 1 > sub_1ea740b2:
        return 1
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFixed() {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_f06cba3a = 1
    emit LogIsFixedSet(block.timestamp);
    return 1
}

function setROI(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    roi = arg1
    emit LogROISet(arg1, block.timestamp);
    return 1
}

function setVaultAddress(address arg1) {
    require msg.sender == owner
    vaultAddress = arg1
    emit LogVaultAddressSet(address(arg1), block.timestamp);
    return 1
}

function setPeriod(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    period = arg1
    emit LogPeriodSet(arg1, block.timestamp);
    return 1
}

function setMinimum(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    minimum = arg1
    emit LogMinimumSet(arg1, block.timestamp);
    return 1
}

function setHardCap(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    hard_cap = arg1
    emit LogHardCapSet(arg1, block.timestamp);
    return 1
}

function setSoftCap(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    soft_cap = arg1
    emit LogSoftCapSet(arg1, block.timestamp);
    return 1
}

function setOperatorAddress(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
    emit LogOperatorAddressSet(address(arg1), block.timestamp);
    return 1
}

function setWhitelistAddress(address arg1) {
    require msg.sender == owner
    whitelistAddress = arg1
    emit LogWhitelistAddressSet(address(arg1), block.timestamp);
    return 1
}

function setFeeWalletAddress(address arg1) {
    require msg.sender == owner
    sub_c51955f5Address = arg1
    emit LogFeeWalletAddressSet(address(arg1), block.timestamp);
    return 1
}

function setPlatformFee(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_cfb551a4 = arg1
    emit LogPlatformFeeSet(arg1, block.timestamp);
    return 1
}

function setRedeemLevel(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_57a8cc06 = arg1
    emit LogRedeemLevelSet(arg1, block.timestamp);
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

function setLockUpPeriod(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_82080419 = arg1
    emit LogLockUpPeriodSet(arg1, block.timestamp);
    return 1
}

function setRequestLimit(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_1ea740b2 = arg1
    emit LogRequestLimitSet(arg1, block.timestamp);
    return 1
}

function setMaxRequestQuota(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_0724cc31 = arg1
    emit LogMaxRequestQuotaSet(arg1, block.timestamp);
    return 1
}

function setPerformanceBonus(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_1843356c = arg1
    emit LogPerformanceBonusSet(arg1, block.timestamp);
    return 1
}

function setRequestLimitInterval(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    sub_3af96136 = arg1
    emit LogRequestLimitIntervalSet(arg1, block.timestamp);
    return 1
}

function start() {
    require msg.sender == owner
    require not start_time
    issuable = 1
    start_time = block.timestamp
    end_time = block.timestamp + period
    emit LogStart(block.timestamp);
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

function restart(uint256 arg1) {
    require msg.sender == owner
    require not sub_f06cba3a
    issuable = 1
    start_time = block.timestamp
    period = arg1
    end_time = block.timestamp + arg1
    emit LogRestart(block.timestamp, arg1);
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

function canIssue(uint256 arg1) {
    if start_time != 0:
        if end_time > block.timestamp:
            require arg1 + token_issued >= token_issued
            if arg1 + token_issued <= balanceOf[stor3]:
                return 1
    issuable = 0
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
    call whitelistAddress.0xa348c289 with:
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
    require 1 == bool(tradeable)
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
    require 1 == bool(tradeable)
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

function presale(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + token_issued >= token_issued
    require arg2 + token_issued <= balanceOf[stor3]
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require arg2 + token_issued >= token_issued
    token_issued += arg2
    emit LogPresaled(arg2, block.timestamp, arg1);
    return 1
}

function refund() {
    require not issuable
    require not sub_49a10a26
    require balanceOf[msg.sender] > 0
    require not members[address(msg.sender)].field_0
    balanceOf[msg.sender] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require balanceOf[address(msg.sender)] + sub_b15b93f7 >= sub_b15b93f7
    sub_b15b93f7 += balanceOf[address(msg.sender)]
    emit LogRefunded(balanceOf[address(msg.sender)], block.timestamp, msg.sender);
    return 0
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + wei_raised >= wei_raised
    require msg.value + wei_raised < hard_cap
    require issuable
    require msg.value >= minimum
    if 0 == start_time:
        issuable = 0
        revert
    if end_time <= block.timestamp:
        issuable = 0
        revert
    require msg.value + token_issued >= token_issued
    if msg.value + token_issued > balanceOf[stor3]:
        issuable = 0
        revert
    require msg.value + wei_raised >= wei_raised
    wei_raised += msg.value
    require msg.value + token_issued >= token_issued
    token_issued += msg.value
    require msg.value <= balanceOf[stor3]
    balanceOf[stor3] -= msg.value
    require msg.value + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = msg.value + balanceOf[arg1]
    emit LogTokenBought(msg.value, msg.value, block.timestamp, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value >= 0
    require msg.sender
    require msg.value + wei_raised >= wei_raised
    require msg.value + wei_raised < hard_cap
    require issuable
    require msg.value >= minimum
    if 0 == start_time:
        issuable = 0
        revert
    if end_time <= block.timestamp:
        issuable = 0
        revert
    require msg.value + token_issued >= token_issued
    if msg.value + token_issued > balanceOf[stor3]:
        issuable = 0
        revert
    require msg.value + wei_raised >= wei_raised
    wei_raised += msg.value
    require msg.value + token_issued >= token_issued
    token_issued += msg.value
    require msg.value <= balanceOf[stor3]
    balanceOf[stor3] -= msg.value
    require msg.value + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = msg.value + balanceOf[msg.sender]
    emit LogTokenBought(msg.value, msg.value, block.timestamp, msg.sender, msg.sender);
}

function finalize(uint256 arg1) {
    require msg.sender == owner
    require start_time
    require arg1 > 0
    if wei_raised <= soft_cap:
        sub_49a10a26 = 0
    else:
        sub_d85cfda0 = arg1
        nav = arg1
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
    issuable = 0
    emit LogFinalize(block.timestamp);
    emit LogNavUpdated(block.timestamp, 0, nav);
}

function getRedeemValue(uint256 arg1) {
    require arg1 > 0
    if nav < roi:
        if not arg1:
            return 0
        if nav * arg1 / arg1 == nav:
            if 0 <= nav * arg1 / 10000:
                return (nav * arg1 / 10000)
    else:
        if roi <= nav:
            if not arg1:
                if not arg1:
                    return 0
                if nav * arg1 / arg1 == nav:
                    if 0 <= nav * arg1 / 10000:
                        return (nav * arg1 / 10000)
            else:
                if (nav * arg1) - (roi * arg1) / arg1 == nav - roi:
                    if not (nav * arg1) - (roi * arg1) / 10000:
                        if not arg1:
                            return 0
                        if nav * arg1 / arg1 == nav:
                            if 0 <= nav * arg1 / 10000:
                                return (nav * arg1 / 10000)
                    else:
                        if sub_1843356c * (nav * arg1) - (roi * arg1) / 10000 / (nav * arg1) - (roi * arg1) / 10000 == sub_1843356c:
                            if not arg1:
                                if sub_1843356c * (nav * arg1) - (roi * arg1) / 10000 / 10000 <= 0:
                                    return -(sub_1843356c * (nav * arg1) - (roi * arg1) / 10000 / 10000)
                            else:
                                if nav * arg1 / arg1 == nav:
                                    if sub_1843356c * (nav * arg1) - (roi * arg1) / 10000 / 10000 <= nav * arg1 / 10000:
                                        return ((nav * arg1 / 10000) - (sub_1843356c * (nav * arg1) - (roi * arg1) / 10000 / 10000))
    revert
}

function requestRedeem(uint256 arg1) {
    require ext_code.size(whitelistAddress)
    call whitelistAddress.0xa348c289 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_9c8a5794 <= sub_0724cc31
    require sub_2689e595 > 0
    require block.timestamp >= sub_2689e595
    require not issuable
    require sub_49a10a26
    require arg1 > 0
    require not members[msg.sender].field_8
    require balanceOf[msg.sender] >= arg1
    if not sub_e446d408[address(msg.sender)].field_256:
        sub_e446d408[address(msg.sender)].field_256 = block.timestamp
    require sub_e446d408[address(msg.sender)].field_256 <= block.timestamp
    if block.timestamp - sub_e446d408[address(msg.sender)].field_256 > sub_3af96136:
        sub_e446d408[address(msg.sender)].field_256 = block.timestamp
        sub_e446d408[address(msg.sender)].field_0 = 0
    if sub_e446d408[address(msg.sender)].field_0 + 1 > sub_1ea740b2:
        emit LogAddressLocked(block.timestamp, msg.sender);
        return 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[stor3] >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    sub_3c35703f.length++
    storA038[stor31.length] = msg.sender
    storA038[stor31.length] = arg1
    storA038[stor31.length] = block.timestamp
    sub_e446d408[address(msg.sender)].field_0++
    members[address(msg.sender)].field_8 = 1
    sub_9c8a5794++
    emit LogRequestRedeem(arg1, block.timestamp, msg.sender);
    if sub_9c8a5794 == sub_0724cc31:
        emit LogRequestFull(block.timestamp);
    return 1
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
    while idx < sub_9c8a5794:
        require idx < sub_3c35703f.length
        require sub_3c35703f[idx].field_256 > 0
        if nav < roi:
            if not sub_3c35703f[idx].field_256:
                if 0 >= sub_57a8cc06:
                    require ext_code.size(sub_350da22eAddress)
                    call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_3c35703f[idx].field_0, 0
                else:
                    require ext_code.size(sub_997dd812Address)
                    call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_3c35703f[idx].field_0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[0] = sub_3c35703f[idx].field_0
                mem[32] = 32
                members[stor31[idx].field_0].field_8 = 0
                mem[mem[64]] = sub_3c35703f[idx].field_256
                mem[mem[64] + 32] = nav
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = block.timestamp
                emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
            else:
                require nav * sub_3c35703f[idx].field_256 / sub_3c35703f[idx].field_256 == nav
                require 0 <= nav * sub_3c35703f[idx].field_256 / 10000
                if nav * sub_3c35703f[idx].field_256 / 10000 >= sub_57a8cc06:
                    require ext_code.size(sub_350da22eAddress)
                    call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_3c35703f[idx].field_0, nav * sub_3c35703f[idx].field_256 / 10000
                else:
                    require ext_code.size(sub_997dd812Address)
                    call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_3c35703f[idx].field_0, nav * sub_3c35703f[idx].field_256 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[0] = sub_3c35703f[idx].field_0
                mem[32] = 32
                members[stor31[idx].field_0].field_8 = 0
                mem[mem[64]] = sub_3c35703f[idx].field_256
                mem[mem[64] + 32] = nav
                mem[mem[64] + 64] = nav * sub_3c35703f[idx].field_256 / 10000
                mem[mem[64] + 96] = block.timestamp
                emit LogRedeem(sub_3c35703f[idx].field_256, nav, nav * sub_3c35703f[idx].field_256 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
        else:
            require roi <= nav
            if not sub_3c35703f[idx].field_256:
                if not sub_3c35703f[idx].field_256:
                    if 0 >= sub_57a8cc06:
                        require ext_code.size(sub_350da22eAddress)
                        call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, 0
                    else:
                        require ext_code.size(sub_997dd812Address)
                        call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = sub_3c35703f[idx].field_0
                    mem[32] = 32
                    members[stor31[idx].field_0].field_8 = 0
                    mem[mem[64]] = sub_3c35703f[idx].field_256
                    mem[mem[64] + 32] = nav
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = block.timestamp
                    emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
                else:
                    require nav * sub_3c35703f[idx].field_256 / sub_3c35703f[idx].field_256 == nav
                    require 0 <= nav * sub_3c35703f[idx].field_256 / 10000
                    if nav * sub_3c35703f[idx].field_256 / 10000 >= sub_57a8cc06:
                        require ext_code.size(sub_350da22eAddress)
                        call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, nav * sub_3c35703f[idx].field_256 / 10000
                    else:
                        require ext_code.size(sub_997dd812Address)
                        call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_3c35703f[idx].field_0, nav * sub_3c35703f[idx].field_256 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = sub_3c35703f[idx].field_0
                    mem[32] = 32
                    members[stor31[idx].field_0].field_8 = 0
                    mem[mem[64]] = sub_3c35703f[idx].field_256
                    mem[mem[64] + 32] = nav
                    mem[mem[64] + 64] = nav * sub_3c35703f[idx].field_256 / 10000
                    mem[mem[64] + 96] = block.timestamp
                    emit LogRedeem(sub_3c35703f[idx].field_256, nav, nav * sub_3c35703f[idx].field_256 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
            else:
                require (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / sub_3c35703f[idx].field_256 == nav - roi
                if not (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000:
                    if not sub_3c35703f[idx].field_256:
                        if 0 >= sub_57a8cc06:
                            require ext_code.size(sub_350da22eAddress)
                            call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, 0
                        else:
                            require ext_code.size(sub_997dd812Address)
                            call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[0] = sub_3c35703f[idx].field_0
                        mem[32] = 32
                        members[stor31[idx].field_0].field_8 = 0
                        mem[mem[64]] = sub_3c35703f[idx].field_256
                        mem[mem[64] + 32] = nav
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = block.timestamp
                        emit LogRedeem(sub_3c35703f[idx].field_256, nav, 0, block.timestamp, sub_3c35703f[idx].field_0);
                    else:
                        require nav * sub_3c35703f[idx].field_256 / sub_3c35703f[idx].field_256 == nav
                        require 0 <= nav * sub_3c35703f[idx].field_256 / 10000
                        if nav * sub_3c35703f[idx].field_256 / 10000 >= sub_57a8cc06:
                            require ext_code.size(sub_350da22eAddress)
                            call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, nav * sub_3c35703f[idx].field_256 / 10000
                        else:
                            require ext_code.size(sub_997dd812Address)
                            call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, nav * sub_3c35703f[idx].field_256 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[0] = sub_3c35703f[idx].field_0
                        mem[32] = 32
                        members[stor31[idx].field_0].field_8 = 0
                        mem[mem[64]] = sub_3c35703f[idx].field_256
                        mem[mem[64] + 32] = nav
                        mem[mem[64] + 64] = nav * sub_3c35703f[idx].field_256 / 10000
                        mem[mem[64] + 96] = block.timestamp
                        emit LogRedeem(sub_3c35703f[idx].field_256, nav, nav * sub_3c35703f[idx].field_256 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
                else:
                    require sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 == sub_1843356c
                    if not sub_3c35703f[idx].field_256:
                        require sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000 <= 0
                        if -sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000 >= sub_57a8cc06:
                            require ext_code.size(sub_350da22eAddress)
                            call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, -sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000
                        else:
                            require ext_code.size(sub_997dd812Address)
                            call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, -sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[0] = sub_3c35703f[idx].field_0
                        mem[32] = 32
                        members[stor31[idx].field_0].field_8 = 0
                        mem[mem[64]] = sub_3c35703f[idx].field_256
                        mem[mem[64] + 32] = nav
                        mem[mem[64] + 64] = -sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000
                        mem[mem[64] + 96] = block.timestamp
                        emit LogRedeem(sub_3c35703f[idx].field_256, nav, -sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000, block.timestamp, sub_3c35703f[idx].field_0);
                    else:
                        require nav * sub_3c35703f[idx].field_256 / sub_3c35703f[idx].field_256 == nav
                        require sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000 <= nav * sub_3c35703f[idx].field_256 / 10000
                        if (nav * sub_3c35703f[idx].field_256 / 10000) - (sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000) >= sub_57a8cc06:
                            require ext_code.size(sub_350da22eAddress)
                            call sub_350da22eAddress.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, (nav * sub_3c35703f[idx].field_256 / 10000) - (sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000)
                        else:
                            require ext_code.size(sub_997dd812Address)
                            call sub_997dd812Address.redeem(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_3c35703f[idx].field_0, (nav * sub_3c35703f[idx].field_256 / 10000) - (sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[0] = sub_3c35703f[idx].field_0
                        mem[32] = 32
                        members[stor31[idx].field_0].field_8 = 0
                        mem[mem[64]] = sub_3c35703f[idx].field_256
                        mem[mem[64] + 32] = nav
                        mem[mem[64] + 64] = (nav * sub_3c35703f[idx].field_256 / 10000) - (sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000)
                        mem[mem[64] + 96] = block.timestamp
                        emit LogRedeem(sub_3c35703f[idx].field_256, nav, (nav * sub_3c35703f[idx].field_256 / 10000) - (sub_1843356c * (nav * sub_3c35703f[idx].field_256) - (roi * sub_3c35703f[idx].field_256) / 10000 / 10000), block.timestamp, sub_3c35703f[idx].field_0);
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
    sub_9c8a5794 = 0
    emit LogNavUpdated(block.timestamp, nav, nav);
}



}
