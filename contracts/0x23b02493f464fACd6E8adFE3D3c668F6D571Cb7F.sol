contract main {




// =====================  Runtime code  =====================


#
#  - getNextStakedNode(address arg1)
#
const ROLE_WHITELISTED = ''


address owner;
mapping of uint256 depositsOf;
address tokenAddress;
uint256 sub_c7d1b098;
mapping of uint8 stor5;
mapping of uint256 sub_1b90b79a;
mapping of struct stor7;
mapping of uint8 stor99;

function sub_1b90b79a(?) {
    return sub_1b90b79a[arg1]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor[sha3(0, 0, 1)][address(arg1)])
}

function sub_b86247d7(?) {
    return bool(stor5[arg1])
}

function sub_c7d1b098(?) {
    return sub_c7d1b098
}

function depositsOf(address arg1) {
    return depositsOf[address(arg1)]
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    return depositsOf[arg1]
}

function _fallback() payable {
    revert
}

function hasEnoughStake(address arg1) {
    return depositsOf[address(arg1)] >= sub_c7d1b098
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMinAuditStake(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    sub_c7d1b098 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getSlashAmount(uint256 arg1) {
    if not sub_c7d1b098:
        return 0
    require arg1 * sub_c7d1b098 / sub_c7d1b098 == arg1
    return (arg1 * sub_c7d1b098 / 100)
}

function withdrawalAllowed(address arg1) {
    if not stor5[address(arg1)]:
        return not bool(stor5[address(arg1)])
    return (block.number > sub_1b90b79a[address(arg1)])
}

function lockFunds(address arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    stor5[address(arg1)] = 1
    sub_1b90b79a[address(arg1)] = arg2
    return 1
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

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
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
        _55 = sha3(mem[mem[64] len 9], 1)
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

function withdraw(address arg1) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    if stor5[address(arg1)]:
        require block.number > sub_1b90b79a[address(arg1)]
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= depositsOf[address(arg1)]
    depositsOf[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), depositsOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdrawn(depositsOf[address(arg1)], arg1);
    if arg1:
        if uint256(stor7[address(arg1)][0].field_0):
            uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
            uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
            uint256(stor7[address(arg1)][0].field_0) = 0
            uint256(stor7[address(arg1)][1].field_0) = 0
            if arg1:
                emit StakedNodeRemoved(arg1);
        else:
            if uint256(stor7[address(arg1)][1].field_0):
                uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                uint256(stor7[address(arg1)][0].field_0) = 0
                uint256(stor7[address(arg1)][1].field_0) = 0
                if arg1:
                    emit StakedNodeRemoved(arg1);
            else:
                if arg1 == uint256(stor7[0][1].field_0):
                    uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                    uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                    uint256(stor7[address(arg1)][0].field_0) = 0
                    uint256(stor7[address(arg1)][1].field_0) = 0
                    if arg1:
                        emit StakedNodeRemoved(arg1);
}

function deposit(address arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require arg2 + depositsOf[address(arg1)] >= depositsOf[address(arg1)]
    depositsOf[address(arg1)] += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deposited(arg2, arg1);
    if arg2 > 0:
        if not uint256(stor7[address(arg1)][0].field_0):
            if not uint256(stor7[address(arg1)][1].field_0):
                if arg1 != uint256(stor7[0][1].field_0):
                    if uint256(stor7[0][0].field_0):
                        uint256(stor7[address(arg1)][1].field_0) = 0
                        address(stor7[0][0].field_0) = arg1
                        Mask(96, 0, stor7[0][0].field_160) = 0
                        address(stor7[uint256(stor7[0][0].field_0)][1].field_0) = arg1
                        Mask(96, 0, stor7[uint256(stor7[0][0].field_0)][1].field_160) = 0
                        uint256(stor7[address(arg1)][0].field_0) = uint256(stor7[0][0].field_0)
                        emit StakedNodeAdded(arg1);
                    else:
                        if uint256(stor7[0][1].field_0):
                            uint256(stor7[address(arg1)][1].field_0) = 0
                            address(stor7[0][0].field_0) = arg1
                            Mask(96, 0, stor7[0][0].field_160) = 0
                            address(stor7[uint256(stor7[0][0].field_0)][1].field_0) = arg1
                            Mask(96, 0, stor7[uint256(stor7[0][0].field_0)][1].field_160) = 0
                            uint256(stor7[address(arg1)][0].field_0) = uint256(stor7[0][0].field_0)
                            emit StakedNodeAdded(arg1);
                        else:
                            if 0 == uint256(stor7[0][1].field_0):
                                uint256(stor7[address(arg1)][1].field_0) = 0
                                address(stor7[0][0].field_0) = arg1
                                Mask(96, 0, stor7[0][0].field_160) = 0
                                address(stor7[uint256(stor7[0][0].field_0)][1].field_0) = arg1
                                Mask(96, 0, stor7[uint256(stor7[0][0].field_0)][1].field_160) = 0
                                uint256(stor7[address(arg1)][0].field_0) = uint256(stor7[0][0].field_0)
                                emit StakedNodeAdded(arg1);
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

function slash(address arg1, uint256 arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    require 0 <= arg2
    require arg2 <= 100
    if not sub_c7d1b098:
        if depositsOf[address(arg1)] >= 0:
            require 0 <= depositsOf[address(arg1)]
            emit Slashed(address(arg1), 0);
            if not depositsOf[address(arg1)]:
                if arg1:
                    if uint256(stor7[address(arg1)][0].field_0):
                        uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                        uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                        uint256(stor7[address(arg1)][0].field_0) = 0
                        uint256(stor7[address(arg1)][1].field_0) = 0
                        if arg1:
                            emit StakedNodeRemoved(arg1);
                    else:
                        if uint256(stor7[address(arg1)][1].field_0):
                            uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                            uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                            uint256(stor7[address(arg1)][0].field_0) = 0
                            uint256(stor7[address(arg1)][1].field_0) = 0
                            if arg1:
                                emit StakedNodeRemoved(arg1);
                        else:
                            if arg1 == uint256(stor7[0][1].field_0):
                                uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                                uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                                uint256(stor7[address(arg1)][0].field_0) = 0
                                uint256(stor7[address(arg1)][1].field_0) = 0
                                if arg1:
                                    emit StakedNodeRemoved(arg1);
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            return 0
    else:
        require arg2 * sub_c7d1b098 / sub_c7d1b098 == arg2
        if depositsOf[address(arg1)] >= arg2 * sub_c7d1b098 / 100:
            require arg2 * sub_c7d1b098 / 100 <= depositsOf[address(arg1)]
            depositsOf[address(arg1)] -= arg2 * sub_c7d1b098 / 100
            emit Slashed(address(arg1), arg2 * sub_c7d1b098 / 100);
            if not depositsOf[address(arg1)]:
                if arg1:
                    if uint256(stor7[address(arg1)][0].field_0):
                        uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                        uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                        uint256(stor7[address(arg1)][0].field_0) = 0
                        uint256(stor7[address(arg1)][1].field_0) = 0
                        if arg1:
                            emit StakedNodeRemoved(arg1);
                    else:
                        if uint256(stor7[address(arg1)][1].field_0):
                            uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                            uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                            uint256(stor7[address(arg1)][0].field_0) = 0
                            uint256(stor7[address(arg1)][1].field_0) = 0
                            if arg1:
                                emit StakedNodeRemoved(arg1);
                        else:
                            if arg1 == uint256(stor7[0][1].field_0):
                                uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                                uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                                uint256(stor7[address(arg1)][0].field_0) = 0
                                uint256(stor7[address(arg1)][1].field_0) = 0
                                if arg1:
                                    emit StakedNodeRemoved(arg1);
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 * sub_c7d1b098 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            return (arg2 * sub_c7d1b098 / 100)
    require depositsOf[address(arg1)] <= depositsOf[address(arg1)]
    depositsOf[address(arg1)] = 0
    emit Slashed(address(arg1), depositsOf[address(arg1)]);
    if not depositsOf[address(arg1)]:
        if arg1:
            if uint256(stor7[address(arg1)][0].field_0):
                uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                uint256(stor7[address(arg1)][0].field_0) = 0
                uint256(stor7[address(arg1)][1].field_0) = 0
                if arg1:
                    emit StakedNodeRemoved(arg1);
            else:
                if uint256(stor7[address(arg1)][1].field_0):
                    uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                    uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                    uint256(stor7[address(arg1)][0].field_0) = 0
                    uint256(stor7[address(arg1)][1].field_0) = 0
                    if arg1:
                        emit StakedNodeRemoved(arg1);
                else:
                    if arg1 == uint256(stor7[0][1].field_0):
                        uint256(stor7[uint256(stor7[address(arg1)][1].field_0)][0].field_0) = uint256(stor7[address(arg1)][0].field_0)
                        uint256(stor7[uint256(stor7[address(arg1)][0].field_0)][1].field_0) = uint256(stor7[address(arg1)][1].field_0)
                        uint256(stor7[address(arg1)][0].field_0) = 0
                        uint256(stor7[address(arg1)][1].field_0) = 0
                        if arg1:
                            emit StakedNodeRemoved(arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, depositsOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return depositsOf[address(arg1)]
}



}
