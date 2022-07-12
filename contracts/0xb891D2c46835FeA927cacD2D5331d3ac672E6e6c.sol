contract main {




// =====================  Runtime code  =====================


const sub_997160f0(?) = 5

const sub_cf4f2d9a(?) = 34660

const ROLE_WHITELISTED = ''

const REFERRAL_BONUS = 1


address owner;
address pendingOwner;
uint8 stor3; offset 160
address vaultAddress;
uint256 sub_e19dfde1;
uint256 closingBlock;
uint256 winCount;
uint256 winnerCount;
uint256 sub_79085425;
mapping of uint256 sub_69f26798;
mapping of address sub_7c8c8e17;
mapping of uint256 sub_58c1fbdf;
mapping of uint256 sub_c592528a;
mapping of uint8 stor13;
mapping of uint8 stor99;

function closingBlock() {
    return closingBlock
}

function sub_58c1fbdf(?) {
    return sub_58c1fbdf[arg1]
}

function sub_69f26798(?) {
    return sub_69f26798[arg1]
}

function sub_79085425(?) {
    return sub_79085425
}

function sub_7c8c8e17(?) {
    return sub_7c8c8e17[arg1]
}

function getVault() {
    return vaultAddress
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor[sha3(0, 0, 1)][address(arg1)])
}

function sub_a7262781(?) {
    return bool(stor13[arg1])
}

function winCount() {
    return winCount
}

function sub_c592528a(?) {
    return sub_c592528a[arg1]
}

function winnerCount() {
    return winnerCount
}

function sub_e19dfde1(?) {
    return sub_e19dfde1
}

function pendingOwner() {
    return pendingOwner
}

function vault() {
    return vaultAddress
}

function isActive() {
    require stor3 <= 3
    return not stor3
}

function sub_9954f1e1(?) {
    return (winnerCount == sub_79085425)
}

function isClosed() {
    require stor3 <= 3
    return (stor3 == 3)
}

function sub_15772d85(?) {
    require stor3 <= 3
    return (stor3 == 2)
}

function sub_1ee64249(?) {
    require stor3 <= 3
    return (stor3 == 1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function sub_7e539538(?) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    closingBlock = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function setReferral(address arg1, address arg2) {
    require msg.sender == owner
    if not sub_7c8c8e17[address(arg1)]:
        sub_7c8c8e17[address(arg1)] = arg2
}

function coolDown() {
    require msg.sender == owner
    require stor3 <= 3
    if stor3:
        require stor3 <= 3
        if stor3 != 1:
            revert with 0, 'Round must be active'
    stor3 = 1
    emit 0xef554786: winCount
}

function claimRefund() {
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function terminate() {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require ext_code.size(vaultAddress)
    call vaultAddress.terminate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 3
}

function getDevWallet() {
    require ext_code.size(vaultAddress)
    call vaultAddress.getWallet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    stor[sha3(0, 0, 1)][address(arg1)] = 1
    emit RoleAdded(address arg1, string arg2):
                   address(arg1),
                   64,
                   9,
                   0,
    emit WhitelistedAddressAdded(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    stor[sha3(0, 0, 1)][address(arg1)] = 0
    emit RoleRemoved(address arg1, string arg2):
                     address(arg1),
                     64,
                     9,
                     0,
    emit WhitelistedAddressRemoved(arg1);
}

function currentPrize(address arg1) {
    require msg.sender == owner
    require ext_code.size(vaultAddress)
    call vaultAddress.0x7264afe0 with:
         gas gas_remaining wei
        args sub_c592528a[address(arg1)], sub_e19dfde1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function enableRefunds() {
    require msg.sender == owner
    require stor3 <= 3
    if stor3:
        require stor3 <= 3
        if stor3 != 1:
            revert with 0, 'Round must be active'
    require ext_code.size(vaultAddress)
    call vaultAddress.0x8c52dc41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dba88536(?) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require stor3 <= 3
    if stor3 != 1:
        revert with 0, 'Cool it down first'
    require ext_code.size(vaultAddress)
    call vaultAddress.0x116f10d7 with:
         gas gas_remaining wei
        args sub_e19dfde1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 2
}

function finalizeRound() {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require stor3 <= 3
    if stor3 != 2:
        revert with 0, 'The round must be in 'Rewarding' state'
    require ext_code.size(vaultAddress)
    call vaultAddress.close() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 3
    emit Finalize(sub_79085425);
}

function _fallback() payable {
    require ext_code.size(vaultAddress)
    call vaultAddress.getWallet() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function rewardWinner(address arg1) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require stor3 <= 3
    if stor3 != 2:
        revert with 0, 'Round in not in 'Rewarding' state yet'
    if sub_c592528a[address(arg1)] <= 0:
        revert with 0, 'This player hasn't actually won anything'
    if stor13[address(arg1)]:
        revert with 0, 'This player has been rewarded already'
    require ext_code.size(vaultAddress)
    call vaultAddress.reward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), sub_c592528a[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13[address(arg1)] = 1
    sub_79085425++
    emit 0x87638f9e: sub_79085425 + 1, arg1
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 9
        mem[_30 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        _33 = mem[64]
        t = _30 + 32
        u = mem[64]
        s = mem[_30]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_30])] = 256^(-(mem[_30] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_30])] or mem[_30 + floor32(mem[_30]) + 32] and !(256^(-(mem[_30] % 32) + 32) - 1)
        mem[_33 + 9] = 1
        _55 = sha3(mem[mem[64] len _33 + -mem[64] + 41])
        mem[0] = address(_29)
        mem[32] = _55
        stor[_55][address(_29)] = 0
        _58 = mem[64]
        mem[mem[64]] = address(_29)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_30]
        _60 = mem[_30]
        s = 0
        while s < _60:
            mem[s + mem[64] + 96] = mem[s + _30 + 32]
            s = s + 32
            continue 
        if not _60 % 32:
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len _60 + _58 + -mem[64] + 96],
        else:
            mem[floor32(_60) + _58 + 96] = mem[floor32(_60) + _58 + -(_60 % 32) + 128 len _60 % 32]
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len floor32(_60) + _58 + -mem[64] + 128],
        mem[mem[64]] = address(_29)
        emit WhitelistedAddressRemoved(address(_29));
        idx = idx + 1
        continue 
}

function projectedPrizeForPlayer(address arg1, uint256 arg2) {
    require msg.sender == owner
    if 0 >= sub_69f26798[address(arg1)]:
        require ext_code.size(vaultAddress)
        call vaultAddress.0xd00cc20f with:
             gas gas_remaining wei
            args arg2, sub_e19dfde1, arg2
    else:
        if sub_69f26798[address(arg1)] > 10:
            if not arg2:
                require ext_code.size(vaultAddress)
                call vaultAddress.0xd00cc20f with:
                     gas gas_remaining wei
                    args 0, sub_e19dfde1, arg2
            else:
                require 50 * arg2 / arg2 == 50
                require ext_code.size(vaultAddress)
                call vaultAddress.0xd00cc20f with:
                     gas gas_remaining wei
                    args 50 * arg2 / 100, sub_e19dfde1, arg2
        else:
            if not sub_69f26798[address(arg1)]:
                if not arg2:
                    require ext_code.size(vaultAddress)
                    call vaultAddress.0xd00cc20f with:
                         gas gas_remaining wei
                        args 0, sub_e19dfde1, arg2
                else:
                    require 100 * arg2 / arg2 == 100
                    require ext_code.size(vaultAddress)
                    call vaultAddress.0xd00cc20f with:
                         gas gas_remaining wei
                        args 100 * arg2 / 100, sub_e19dfde1, arg2
            else:
                require 5 * sub_69f26798[address(arg1)] / sub_69f26798[address(arg1)] == 5
                if not arg2:
                    require ext_code.size(vaultAddress)
                    call vaultAddress.0xd00cc20f with:
                         gas gas_remaining wei
                        args 0, sub_e19dfde1, arg2
                else:
                    require (100 * arg2) - (5 * sub_69f26798[address(arg1)] * arg2) / arg2 == (-5 * sub_69f26798[address(arg1)]) + 100
                    require ext_code.size(vaultAddress)
                    call vaultAddress.0xd00cc20f with:
                         gas gas_remaining wei
                        args (100 * arg2) - (5 * sub_69f26798[address(arg1)] * arg2) / 100, sub_e19dfde1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _38 = mem[64]
        mem[64] = mem[64] + 64
        mem[_38] = 9
        mem[_38 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        t = _38 + 32
        u = mem[64]
        s = mem[_38]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_38])] = 256^(-(mem[_38] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_38])] or mem[_38 + floor32(mem[_38]) + 32] and !(256^(-(mem[_38] % 32) + 32) - 1)
        _71 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_37)
        mem[32] = _71
        stor[_71][address(_37)] = 1
        mem[mem[64]] = address(_37)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_38]
        _76 = mem[_38]
        if 0 >= mem[_38]:
            if not mem[_38] % 32:
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len mem[_38] + 32],
            else:
                mem[floor32(mem[_38]) + mem[64] + 96] = mem[floor32(mem[_38]) + mem[64] + -(mem[_38] % 32) + 128 len mem[_38] % 32]
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len floor32(_76) + 64],
        else:
            mem[mem[64] + 96] = mem[_38 + 32]
            s = 32
            while s < _76:
                mem[s + mem[64] + 96] = mem[s + _38 + 32]
                s = s + 32
                continue 
            if not _76 % 32:
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len _76 + 32],
            else:
                mem[floor32(_76) + mem[64] + 96] = mem[floor32(_76) + mem[64] + -(_76 % 32) + 128 len _76 % 32]
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len floor32(_76) + 64],
        mem[mem[64]] = address(_37)
        emit WhitelistedAddressAdded(address(_37));
        idx = idx + 1
        continue 
}

function playRound(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require stor3 <= 3
    if stor3:
        revert with 0, 'Not active anymore'
    sub_58c1fbdf[address(arg1)] = arg2
    if not sub_7c8c8e17[address(arg1)]:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.number >= closingBlock:
            require msg.sender == owner
            require stor3 <= 3
            if stor3:
                require stor3 <= 3
                if stor3 != 1:
                    revert with 0, 'Round must be active'
            stor3 = 1
            emit 0xef554786: winCount
        emit 0x96648802: address(arg1), msg.value, sub_7c8c8e17[address(arg1)], this.address
    else:
        if not msg.value:
            if ext_code.size(sub_7c8c8e17[address(arg1)]) <= 0:
                call sub_7c8c8e17[address(arg1)] with:
                     gas 2300 wei
            else:
                require ext_code.size(vaultAddress)
                call vaultAddress.0x7dc43744 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call ext_call.return_data[12 len 20] with:
                     gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 <= msg.value
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address arg1) with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.number >= closingBlock:
                require msg.sender == owner
                require stor3 <= 3
                if stor3:
                    require stor3 <= 3
                    if stor3 != 1:
                        revert with 0, 'Round must be active'
                stor3 = 1
                emit 0xef554786: winCount
            emit 0x96648802: address(arg1), msg.value, sub_7c8c8e17[address(arg1)], this.address
        else:
            require msg.value / msg.value == 1
            if ext_code.size(sub_7c8c8e17[address(arg1)]) <= 0:
                call sub_7c8c8e17[address(arg1)] with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(vaultAddress)
                call vaultAddress.0x7dc43744 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call ext_call.return_data[12 len 20] with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.value / 100 <= msg.value
            require ext_code.size(vaultAddress)
            call vaultAddress.deposit(address arg1) with:
               value msg.value - (msg.value / 100) wei
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.number >= closingBlock:
                require msg.sender == owner
                require stor3 <= 3
                if stor3:
                    require stor3 <= 3
                    if stor3 != 1:
                        revert with 0, 'Round must be active'
                stor3 = 1
                emit 0xef554786: winCount
            emit 0x96648802: address(arg1), msg.value - (msg.value / 100), sub_7c8c8e17[address(arg1)], this.address
}

function win(address arg1) {
    require msg.sender == owner
    require stor3 <= 3
    if stor3:
        require stor3 <= 3
        if stor3 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Round must be active or cooling down'
    if sub_58c1fbdf[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Hmm, did this player call 'play' before?'
    if 0 >= sub_69f26798[address(arg1)]:
        if not sub_c592528a[address(arg1)]:
            winnerCount++
        winCount++
        require sub_58c1fbdf[address(arg1)] + sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
        sub_c592528a[address(arg1)] += sub_58c1fbdf[address(arg1)]
        require sub_58c1fbdf[address(arg1)] + sub_e19dfde1 >= sub_e19dfde1
        sub_e19dfde1 += sub_58c1fbdf[address(arg1)]
    else:
        if sub_69f26798[address(arg1)] > 10:
            if not sub_58c1fbdf[address(arg1)]:
                if not sub_c592528a[address(arg1)]:
                    winnerCount++
                winCount++
                require sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
                require sub_e19dfde1 >= sub_e19dfde1
            else:
                require 50 * sub_58c1fbdf[address(arg1)] / sub_58c1fbdf[address(arg1)] == 50
                if not sub_c592528a[address(arg1)]:
                    winnerCount++
                winCount++
                require (50 * sub_58c1fbdf[address(arg1)] / 100) + sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
                sub_c592528a[address(arg1)] += 50 * sub_58c1fbdf[address(arg1)] / 100
                require (50 * sub_58c1fbdf[address(arg1)] / 100) + sub_e19dfde1 >= sub_e19dfde1
                sub_e19dfde1 += 50 * sub_58c1fbdf[address(arg1)] / 100
        else:
            if not sub_69f26798[address(arg1)]:
                if not sub_58c1fbdf[address(arg1)]:
                    if not sub_c592528a[address(arg1)]:
                        winnerCount++
                    winCount++
                    require sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
                    require sub_e19dfde1 >= sub_e19dfde1
                else:
                    require 100 * sub_58c1fbdf[address(arg1)] / sub_58c1fbdf[address(arg1)] == 100
                    if not sub_c592528a[address(arg1)]:
                        winnerCount++
                    winCount++
                    require (100 * sub_58c1fbdf[address(arg1)] / 100) + sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
                    sub_c592528a[address(arg1)] += 100 * sub_58c1fbdf[address(arg1)] / 100
                    require (100 * sub_58c1fbdf[address(arg1)] / 100) + sub_e19dfde1 >= sub_e19dfde1
                    sub_e19dfde1 += 100 * sub_58c1fbdf[address(arg1)] / 100
            else:
                require 5 * sub_69f26798[address(arg1)] / sub_69f26798[address(arg1)] == 5
                if not sub_58c1fbdf[address(arg1)]:
                    if not sub_c592528a[address(arg1)]:
                        winnerCount++
                    winCount++
                    require sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
                    require sub_e19dfde1 >= sub_e19dfde1
                else:
                    require (100 * sub_58c1fbdf[address(arg1)]) - (5 * sub_69f26798[address(arg1)] * sub_58c1fbdf[address(arg1)]) / sub_58c1fbdf[address(arg1)] == (-5 * sub_69f26798[address(arg1)]) + 100
                    if not sub_c592528a[address(arg1)]:
                        winnerCount++
                    winCount++
                    require ((100 * sub_58c1fbdf[address(arg1)]) - (5 * sub_69f26798[address(arg1)] * sub_58c1fbdf[address(arg1)]) / 100) + sub_c592528a[address(arg1)] >= sub_c592528a[address(arg1)]
                    sub_c592528a[address(arg1)] += (100 * sub_58c1fbdf[address(arg1)]) - (5 * sub_69f26798[address(arg1)] * sub_58c1fbdf[address(arg1)]) / 100
                    require ((100 * sub_58c1fbdf[address(arg1)]) - (5 * sub_69f26798[address(arg1)] * sub_58c1fbdf[address(arg1)]) / 100) + sub_e19dfde1 >= sub_e19dfde1
                    sub_e19dfde1 += (100 * sub_58c1fbdf[address(arg1)]) - (5 * sub_69f26798[address(arg1)] * sub_58c1fbdf[address(arg1)]) / 100
    require sub_69f26798[address(arg1)] + 1 >= sub_69f26798[address(arg1)]
    sub_69f26798[address(arg1)]++
    emit 0xd0180a81: address(arg1), this.address
}



}
