contract main {




// =====================  Runtime code  =====================


#
#  - claimNextReward(address arg1, uint256 arg2)
#  - getNextAvailableReward(address arg1, uint256 arg2)
#  - submitPoliceReport(address arg1, address arg2, uint256 arg3, bytes arg4, bool arg5)
#  - getNextPoliceAssignment(address arg1)
#  - clearExpiredAssignments(address arg1, uint256 arg2)
#
const ROLE_WHITELISTED = ''


address owner;
mapping of struct stor2;
uint256 sub_928c97eb;
uint256 sub_de66eaec;
uint256 sub_7e06ee13;
uint256 sub_bd58199a;
uint256 sub_0ea36345;
address stor8;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 sub_9766b69f;
array of uint256 sub_2db1469d;
mapping of uint8 sub_3c1c5e04;
mapping of uint8 sub_b8a26260;
mapping of uint8 stor16;
mapping of uint256 sub_160abdd5;
mapping of uint256 sub_b9779787;
mapping of uint256 collectedFees;
address auditDataAddress;
address tokenEscrowAddress;
mapping of uint8 stor99;

function sub_0ea36345(?) {
    return sub_0ea36345
}

function sub_160abdd5(?) {
    return sub_160abdd5[arg1]
}

function sub_2db1469d(?) {
    return sub_2db1469d[arg1][arg2][0 len sub_2db1469d[arg1][arg2].length]
}

function collectedFees(uint256 arg1) {
    return collectedFees[arg1]
}

function sub_3c1c5e04(?) {
    require sub_3c1c5e04[arg1][arg2] <= 3
    return sub_3c1c5e04[arg1][arg2]
}

function sub_4f5b7fba(?) {
    return bool(stor16[arg1])
}

function auditData() {
    return auditDataAddress
}

function sub_7e06ee13(?) {
    return sub_7e06ee13
}

function getPoliceReportResult(uint256 arg1, address arg2) {
    require sub_3c1c5e04[arg1][address(arg2)] <= 3
    return sub_3c1c5e04[arg1][address(arg2)]
}

function owner() {
    return owner
}

function sub_928c97eb(?) {
    return sub_928c97eb
}

function sub_9766b69f(?) {
    return sub_9766b69f[arg1]
}

function whitelist(address arg1) {
    return bool(stor[sha3(0, 0, 1)][address(arg1)])
}

function tokenEscrow() {
    return tokenEscrowAddress
}

function getPoliceReport(uint256 arg1, address arg2) {
    return sub_2db1469d[arg1][address(arg2)][0 len sub_2db1469d[arg1][address(arg2)].length]
}

function sub_b8a26260(?) {
    require sub_b8a26260[arg1] <= 3
    return sub_b8a26260[arg1]
}

function sub_b9779787(?) {
    return sub_b9779787[arg1]
}

function sub_bd58199a(?) {
    return sub_bd58199a
}

function sub_de66eaec(?) {
    return sub_de66eaec
}

function _fallback() payable {
    revert
}

function setPoliceNodesPerReport(uint256 arg1) {
    require msg.sender == owner
    sub_de66eaec = arg1
}

function setPoliceTimeoutInBlocks(uint256 arg1) {
    require msg.sender == owner
    sub_7e06ee13 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setReportProcessingFeePercentage(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 100
    sub_0ea36345 = arg1
}

function setSlashPercentage(uint256 arg1) {
    require msg.sender == owner
    require 0 <= arg1
    require arg1 <= 100
    sub_bd58199a = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPoliceFee(uint256 arg1) {
    if not arg1:
        return 0
    require sub_0ea36345 * arg1 / arg1 == sub_0ea36345
    return (sub_0ea36345 * arg1 / 100)
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

function isPoliceNode(address arg1) {
    require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
    delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0xf593633c with:
         gas gas_remaining wei
        args 2, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getNextPoliceNode(address arg1) {
    require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
    delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
         gas gas_remaining wei
        args 2, address(arg1), 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[44 len 20]
}

function isAssigned(uint256 arg1, address arg2) {
    require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
    delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0xf593633c with:
         gas gas_remaining wei
        args sha3(address(arg2), 9), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getNextAssignedPolice(uint256 arg1, address arg2) {
    require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
    delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
         gas gas_remaining wei
        args sha3(arg1, 10), address(arg2), 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if delegate.return_data[32]:
        return bool(delegate.return_data[0]), address(delegate.return_data[32])
    else:
        return 0
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function canClaimAuditReward(address arg1, uint256 arg2) {
    require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
    delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0xf593633c with:
         gas gas_remaining wei
        args sha3(address(arg1), 11), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        return bool(delegate.return_data[0])
    if block.number <= sub_9766b69f[arg2]:
        return (block.number > sub_9766b69f[arg2])
    require sub_b8a26260[arg2] <= 3
    if sub_b8a26260[arg2] == 1:
        return sub_b8a26260[arg2] != 1
    if stor16[arg2]:
        return not bool(stor16[arg2])
    return (0 < arg2)
}

function collectFee(uint256 arg1) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        collectedFees[arg1] = 0
        emit PoliceFeesCollected(arg1, 0);
        return 0
    require sub_0ea36345 * ext_call.return_data[0] / ext_call.return_data[0] == sub_0ea36345
    collectedFees[arg1] = sub_0ea36345 * ext_call.return_data[0] / 100
    emit PoliceFeesCollected(arg1, sub_0ea36345 * ext_call.return_data[0] / 100);
    return (sub_0ea36345 * ext_call.return_data[0] / 100)
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

function addPoliceNode(address arg1) {
    require msg.sender == owner
    if uint256(stor2[address(arg1)][0].field_0):
        return 0
    if uint256(stor2[address(arg1)][1].field_0):
        return 0
    if arg1 == uint256(stor2[0][1].field_0):
        return 0
    if not uint256(stor2[0][0].field_0):
        if not uint256(stor2[0][1].field_0):
            if uint256(stor2[0][1].field_0) != 0:
                return 0
    uint256(stor2[address(arg1)][1].field_0) = 0
    address(stor2[0][0].field_0) = arg1
    Mask(96, 0, stor2[0][0].field_160) = 0
    address(stor2[uint256(stor2[0][0].field_0)][1].field_0) = arg1
    Mask(96, 0, stor2[uint256(stor2[0][0].field_0)][1].field_160) = 0
    uint256(stor2[address(arg1)][0].field_0) = uint256(stor2[0][0].field_0)
    require sub_928c97eb + 1 >= sub_928c97eb
    sub_928c97eb++
    emit PoliceNodeAdded(arg1);
    return 1
}

function removePoliceNode(address arg1) {
    require msg.sender == owner
    if address(stor8) == arg1:
        require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
        delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
             gas gas_remaining wei
            args 2, address(arg1), 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        uint256(stor8) = delegate.return_data[44 len 20] or Mask(96, 160, uint256(stor8))
    if not arg1:
        return 0
    if not uint256(stor2[address(arg1)][0].field_0):
        if not uint256(stor2[address(arg1)][1].field_0):
            if arg1 != uint256(stor2[0][1].field_0):
                return 0
    uint256(stor2[uint256(stor2[address(arg1)][1].field_0)][0].field_0) = uint256(stor2[address(arg1)][0].field_0)
    uint256(stor2[uint256(stor2[address(arg1)][0].field_0)][1].field_0) = uint256(stor2[address(arg1)][1].field_0)
    uint256(stor2[address(arg1)][0].field_0) = 0
    uint256(stor2[address(arg1)][1].field_0) = 0
    if not arg1:
        return 0
    require 1 <= sub_928c97eb
    sub_928c97eb--
    emit PoliceNodeRemoved(arg1);
    return 1
}

function addPendingPayment(address arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    if not stor11[address(arg1)][arg2][0]:
        if not stor11[address(arg1)][arg2][1]:
            if arg2 != stor11[address(arg1)][0][1]:
                if stor11[address(arg1)][0][0]:
                    stor11[address(arg1)][arg2][1] = 0
                    stor11[address(arg1)][0][0] = arg2
                    stor11[address(arg1)][stor11[address(arg1)][0][0]][1] = arg2
                    stor11[address(arg1)][arg2][0] = stor11[address(arg1)][0][0]
                else:
                    if stor11[address(arg1)][0][1]:
                        stor11[address(arg1)][arg2][1] = 0
                        stor11[address(arg1)][0][0] = arg2
                        stor11[address(arg1)][stor11[address(arg1)][0][0]][1] = arg2
                        stor11[address(arg1)][arg2][0] = stor11[address(arg1)][0][0]
                    else:
                        if 0 == stor11[address(arg1)][0][1]:
                            stor11[address(arg1)][arg2][1] = 0
                            stor11[address(arg1)][0][0] = arg2
                            stor11[address(arg1)][stor11[address(arg1)][0][0]][1] = arg2
                            stor11[address(arg1)][arg2][0] = stor11[address(arg1)][0][0]
}

function setRewardClaimed(address arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    stor16[arg2] = 1
    if arg2:
        if stor11[address(arg1)][arg2][0]:
            stor11[address(arg1)][stor11[address(arg1)][arg2][1]][0] = stor11[address(arg1)][arg2][0]
            stor11[address(arg1)][stor11[address(arg1)][arg2][0]][1] = stor11[address(arg1)][arg2][1]
            stor11[address(arg1)][arg2][0] = 0
            stor11[address(arg1)][arg2][1] = 0
        else:
            if stor11[address(arg1)][arg2][1]:
                stor11[address(arg1)][stor11[address(arg1)][arg2][1]][0] = stor11[address(arg1)][arg2][0]
                stor11[address(arg1)][stor11[address(arg1)][arg2][0]][1] = stor11[address(arg1)][arg2][1]
                stor11[address(arg1)][arg2][0] = 0
                stor11[address(arg1)][arg2][1] = 0
            else:
                if arg2 == stor11[address(arg1)][0][1]:
                    stor11[address(arg1)][stor11[address(arg1)][arg2][1]][0] = stor11[address(arg1)][arg2][0]
                    stor11[address(arg1)][stor11[address(arg1)][arg2][0]][1] = stor11[address(arg1)][arg2][1]
                    stor11[address(arg1)][arg2][0] = 0
                    stor11[address(arg1)][arg2][1] = 0
    require sub_b8a26260[arg2] <= 3
    if not sub_b8a26260[arg2]:
        sub_b8a26260[arg2] = 3
    return 1
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
        _41 = mem[64]
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
        mem[_41 + 9] = 1
        _71 = sha3(mem[mem[64] len _41 + -mem[64] + 41])
        mem[0] = address(_37)
        mem[32] = _71
        stor[_71][address(_37)] = 1
        _74 = mem[64]
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
                               mem[mem[64] len _76 + _74 + -mem[64] + 96],
            else:
                mem[floor32(_76) + _74 + 96] = mem[floor32(_76) + _74 + -(_76 % 32) + 128 len _76 % 32]
                emit RoleAdded(address arg1, string arg2):
                               mem[mem[64] len floor32(_76) + _74 + -mem[64] + 128],
        mem[mem[64]] = address(_37)
        emit WhitelistedAddressAdded(address(_37));
        idx = idx + 1
        continue 
}

function splitPayment(uint256 arg1) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require sub_928c97eb
    require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
    delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
         gas gas_remaining wei
        args 2, 0, 1
    mem[160 len 64] = delegate.return_data[0 len 64]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require sub_928c97eb
    require (arg1 % sub_928c97eb) + (arg1 / sub_928c97eb) >= arg1 / sub_928c97eb
    s = 0
    idx = mem[192]
    while address(idx):
        if s:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.0xfc0c546a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(idx), arg1 / sub_928c97eb
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit PoliceFeesClaimed(address(idx), arg1 / sub_928c97eb);
            mem[196] = address(idx)
            mem[228] = 1
            require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
            delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
                 gas gas_remaining wei
                args 2, address(idx), 1
            mem[160 len 64] = delegate.return_data[0 len 64]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            s = s
            idx = delegate.return_data[32]
            continue 
        if address(stor8) != address(idx):
            if address(stor8):
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0xfc0c546a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(idx), arg1 / sub_928c97eb
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit PoliceFeesClaimed(address(idx), arg1 / sub_928c97eb);
                mem[196] = address(idx)
                mem[228] = 1
                require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
                delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
                     gas gas_remaining wei
                    args 2, address(idx), 1
                mem[160 len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                s = s
                idx = delegate.return_data[32]
                continue 
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(idx), (arg1 % sub_928c97eb) + (arg1 / sub_928c97eb)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit PoliceFeesClaimed(address(idx), (arg1 % sub_928c97eb) + (arg1 / sub_928c97eb));
        mem[196] = address(idx)
        mem[228] = 1
        require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
        delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
             gas gas_remaining wei
            args 2, address(idx), 1
        mem[160 len 64] = delegate.return_data[0 len 64]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        s = 1
        idx = delegate.return_data[32]
        continue 
}

function assignPoliceToReport(uint256 arg1) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require not sub_9766b69f[arg1]
    sub_9766b69f[arg1] = sub_7e06ee13 + block.number
    if sub_de66eaec <= sub_928c97eb:
        idx = sub_de66eaec
        while idx > 0:
            mem[196] = address(stor8)
            mem[228] = 1
            require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
            delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
                 gas gas_remaining wei
                args 2, address(stor8), 1
            mem[160 len 64] = delegate.return_data[0 len 64]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            address(stor8) = address(delegate.return_data[32])
            if not address(delegate.return_data[32]):
                idx = idx
                continue 
            if not stor9[address(stor8)][arg1][0]:
                if not stor9[address(stor8)][arg1][1]:
                    if arg1 != stor9[address(stor8)][0][1]:
                        if stor9[address(stor8)][0][0]:
                            stor9[address(stor8)][arg1][1] = 0
                            stor9[address(stor8)][0][0] = arg1
                            stor9[address(stor8)][stor9[address(stor8)][0][0]][1] = arg1
                            stor9[address(stor8)][arg1][0] = stor9[address(stor8)][0][0]
                        else:
                            if stor9[address(stor8)][0][1]:
                                stor9[address(stor8)][arg1][1] = 0
                                stor9[address(stor8)][0][0] = arg1
                                stor9[address(stor8)][stor9[address(stor8)][0][0]][1] = arg1
                                stor9[address(stor8)][arg1][0] = stor9[address(stor8)][0][0]
                            else:
                                if 0 == stor9[address(stor8)][0][1]:
                                    stor9[address(stor8)][arg1][1] = 0
                                    stor9[address(stor8)][0][0] = arg1
                                    stor9[address(stor8)][stor9[address(stor8)][0][0]][1] = arg1
                                    stor9[address(stor8)][arg1][0] = stor9[address(stor8)][0][0]
            if not stor10[arg1][address(stor8)][0]:
                if not stor10[arg1][address(stor8)][1]:
                    if address(stor8) != stor10[arg1][0][1]:
                        if stor10[arg1][0][0]:
                            stor10[arg1][address(stor8)][1] = 0
                            stor10[arg1][0][0] = address(stor8)
                            stor10[arg1][stor10[arg1][0][0]][1] = address(stor8)
                            stor10[arg1][address(stor8)][0] = stor10[arg1][0][0]
                        else:
                            if stor10[arg1][0][1]:
                                stor10[arg1][address(stor8)][1] = 0
                                stor10[arg1][0][0] = address(stor8)
                                stor10[arg1][stor10[arg1][0][0]][1] = address(stor8)
                                stor10[arg1][address(stor8)][0] = stor10[arg1][0][0]
                            else:
                                if 0 == stor10[arg1][0][1]:
                                    stor10[arg1][address(stor8)][1] = 0
                                    stor10[arg1][0][0] = address(stor8)
                                    stor10[arg1][stor10[arg1][0][0]][1] = address(stor8)
                                    stor10[arg1][address(stor8)][0] = stor10[arg1][0][0]
            mem[160] = address(stor8)
            mem[192] = arg1
            emit PoliceNodeAssignedToReport(address(stor8), arg1);
            require sub_160abdd5[address(stor8)] + 1 >= sub_160abdd5[address(stor8)]
            mem[0] = address(stor8)
            mem[32] = 17
            sub_160abdd5[address(stor8)]++
            require 1 <= idx
            idx = idx - 1
            continue 
    else:
        idx = sub_928c97eb
        while idx > 0:
            mem[196] = address(stor8)
            mem[228] = 1
            require ext_code.size(0xde4a5dcc0215b17d62f19e0c217a70f31c9a449)
            delegate 0xde4a5dcc0215b17d62f19e0c217a70f31c9a449.0x574047ac with:
                 gas gas_remaining wei
                args 2, address(stor8), 1
            mem[160 len 64] = delegate.return_data[0 len 64]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            address(stor8) = address(delegate.return_data[32])
            if not address(delegate.return_data[32]):
                idx = idx
                continue 
            if not stor9[address(stor8)][arg1][0]:
                if not stor9[address(stor8)][arg1][1]:
                    if arg1 != stor9[address(stor8)][0][1]:
                        if stor9[address(stor8)][0][0]:
                            stor9[address(stor8)][arg1][1] = 0
                            stor9[address(stor8)][0][0] = arg1
                            stor9[address(stor8)][stor9[address(stor8)][0][0]][1] = arg1
                            stor9[address(stor8)][arg1][0] = stor9[address(stor8)][0][0]
                        else:
                            if stor9[address(stor8)][0][1]:
                                stor9[address(stor8)][arg1][1] = 0
                                stor9[address(stor8)][0][0] = arg1
                                stor9[address(stor8)][stor9[address(stor8)][0][0]][1] = arg1
                                stor9[address(stor8)][arg1][0] = stor9[address(stor8)][0][0]
                            else:
                                if 0 == stor9[address(stor8)][0][1]:
                                    stor9[address(stor8)][arg1][1] = 0
                                    stor9[address(stor8)][0][0] = arg1
                                    stor9[address(stor8)][stor9[address(stor8)][0][0]][1] = arg1
                                    stor9[address(stor8)][arg1][0] = stor9[address(stor8)][0][0]
            if not stor10[arg1][address(stor8)][0]:
                if not stor10[arg1][address(stor8)][1]:
                    if address(stor8) != stor10[arg1][0][1]:
                        if stor10[arg1][0][0]:
                            stor10[arg1][address(stor8)][1] = 0
                            stor10[arg1][0][0] = address(stor8)
                            stor10[arg1][stor10[arg1][0][0]][1] = address(stor8)
                            stor10[arg1][address(stor8)][0] = stor10[arg1][0][0]
                        else:
                            if stor10[arg1][0][1]:
                                stor10[arg1][address(stor8)][1] = 0
                                stor10[arg1][0][0] = address(stor8)
                                stor10[arg1][stor10[arg1][0][0]][1] = address(stor8)
                                stor10[arg1][address(stor8)][0] = stor10[arg1][0][0]
                            else:
                                if 0 == stor10[arg1][0][1]:
                                    stor10[arg1][address(stor8)][1] = 0
                                    stor10[arg1][0][0] = address(stor8)
                                    stor10[arg1][stor10[arg1][0][0]][1] = address(stor8)
                                    stor10[arg1][address(stor8)][0] = stor10[arg1][0][0]
            mem[160] = address(stor8)
            mem[192] = arg1
            emit PoliceNodeAssignedToReport(address(stor8), arg1);
            require sub_160abdd5[address(stor8)] + 1 >= sub_160abdd5[address(stor8)]
            mem[0] = address(stor8)
            mem[32] = 17
            sub_160abdd5[address(stor8)]++
            require 1 <= idx
            idx = idx - 1
            continue 
}



}
