contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor6;
array of struct stor7;
address stor8;

function _fallback() {
    mem[96 len -7342] = code.data[8343 len -7342]
    mem[64] = -7246
    require mem[mem[96] + 96] != 0
    require mem[128] > 0
    require mem[224] > 0
    require mem[128] <= mem[mem[96] + 96]
    require mem[224] <= mem[mem[96] + 96]
    stor7.length = mem[mem[96] + 96] + 1
    if not stor7.length > mem[mem[96] + 96] + 1:
        idx = 0
        while idx < mem[mem[96] + 96]:
            require idx < mem[mem[96] + 96]
            require not stor6[mem[mem[96] + (32 * idx) + 140 len 20]]
            require idx < mem[mem[96] + 96]
            require idx + 1 < stor7.length
            address(stor7[idx].field_256) = mem[(32 * idx) + mem[96] + 140 len 20]
            require idx < mem[mem[96] + 96]
            mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 1
            idx = idx + 1
            continue 
        stor3 = mem[128]
        stor4 = mem[224]
        stor2 = mem[172 len 20]
        mem[-6269] = mem[mem[192] + 96]
        _50 = mem[mem[192] + 96]
        if not Mask(251, 0, mem[mem[192] + 96]):
            create contract with 0 wei
                            code: code.data[7398 len 945], 32, mem[-6269 len (32 * mem[mem[192] + 96]) + 32]
        else:
            mem[-6237] = mem[mem[192] + 128]
            mem[-6205 len floor32((32 * mem[mem[192] + 96]) - 1)] = mem[mem[192] + 160 len floor32((32 * mem[mem[192] + 96]) - 1)]
            create contract with 0 wei
                            code: code.data[7398 len 945], 32, mem[-6269 len (32 * _50) + 32]
    else:
        mem[0] = 7
        idx = mem[mem[96] + 96] + 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[mem[96] + 96]:
            require idx < mem[mem[96] + 96]
            require not stor6[mem[mem[96] + (32 * idx) + 140 len 20]]
            require idx < mem[mem[96] + 96]
            require idx + 1 < stor7.length
            address(stor7[idx].field_256) = mem[(32 * idx) + mem[96] + 140 len 20]
            require idx < mem[mem[96] + 96]
            mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 1
            idx = idx + 1
            continue 
        stor3 = mem[128]
        stor4 = mem[224]
        stor2 = mem[172 len 20]
        mem[-6269] = mem[mem[192] + 96]
        _85 = mem[mem[192] + 96]
        if not Mask(251, 0, mem[mem[192] + 96]):
            create contract with 0 wei
                            code: code.data[7398 len 945], 32, mem[-6269 len (32 * mem[mem[192] + 96]) + 32]
        else:
            mem[-6237] = mem[mem[192] + 128]
            mem[-6205 len floor32((32 * mem[mem[192] + 96]) - 1)] = mem[mem[192] + 160 len floor32((32 * mem[mem[192] + 96]) - 1)]
            create contract with 0 wei
                            code: code.data[7398 len 945], 32, mem[-6269 len (32 * _85) + 32]
    require create.new_address
    stor8 = address(create.new_address)
    stor1 = 1
    if not stor1 <= 1:
        mem[0] = 1
        idx = 3
        while sha3(1) + (3 * stor1) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 3
            continue 
    return code.data[1001 len 6397]
}



// =====================  Runtime code  =====================


#
#  - sub_0a3f8297(?)
#  - multiAccessRemoveOwner(address arg1)
#
mapping of uint256 stor0;
array of struct stor1;
array of uint256 stor2;
uint256 multiAccessRequired;
uint256 sub_f134b351;
mapping of uint256 sub_494177ba;
mapping of struct stor6;
array of address multiAccessOwners;
address whitelistAddress;

function multiAccessRecipient() {
    return address(stor2.length)
}

function sub_494177ba(?) {
    return sub_494177ba[Mask(32, 224, arg1)]
}

function whitelist() {
    return whitelistAddress
}

function multiAccessOwners(uint256 arg1) {
    require arg1 < multiAccessOwners.length
    return address(multiAccessOwners[arg1])
}

function multiAccessRequired() {
    return multiAccessRequired
}

function sub_f134b351(?) {
    return sub_f134b351
}

function assert(bool arg1) {
    require arg1
}

function multiAccessIsOwner(address arg1) {
    return (stor6[address(arg1)].field_0 > 0)
}

function multiAccessHasConfirmed(bytes32 arg1, address arg2) {
    if stor0[arg1]:
        require stor0[arg1] < stor1.length
        if stor6[address(arg2)].field_0 < stor1[stor0[arg1]].field_0:
            return bool(stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg2')), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(arg2)].field_0 % 32])
        else:
            return 0
    else:
        return 0
}

function multiAccessRevoke(bytes32 arg1) {
    if stor6[address(msg.sender)].field_0 > 0:
        if stor0[arg1]:
            require stor0[arg1] < stor1.length
            if stor6[address(msg.sender)].field_0 < stor1[stor0[arg1]].field_0:
                if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    require stor0[arg1] < stor1.length
                    require stor6[address(msg.sender)].field_0 < stor1[stor0[arg1]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('param', 'arg1'), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 0
                    stor1[stor0[arg1]].field_256++
                    emit Revoke(msg.sender, arg1);
}

function multiAccessSetRecipient(address arg1) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 <= 0:
        return 0
    mem[ceil32(calldata.size) + 128] = address(this.address)
    mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
    mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
        if stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                return 0
    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
        if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
            return 0
        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
            require stor1.length - 1 < stor1.length
            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
            if not stor1[stor1.length].field_0:
                idx = 0
                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor1[stor1.length].field_0 + 31 / 32
                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
    else:
        require 3 < calldata.size
        require 2 < calldata.size
        require 1 < calldata.size
        require 0 < calldata.size
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            mem[0] = 1
            idx = (3 * stor1.length) + 3
            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor[idx + sha3(mem[0]) + 1] = 0
                stor[idx + sha3(mem[0]) + 2] = 0
                idx = idx + 3
                continue 
        if this.address == this.address:
            require stor1.length < stor1.length
            stor1[stor1.length].field_256 = multiAccessRequired
        else:
            if address(stor2.length) == this.address:
                require stor1.length < stor1.length
                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                    stor1[stor1.length].field_256 = sub_f134b351
                else:
                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
            else:
                require ext_code.size(whitelistAddress)
                call whitelistAddress.isWhitelisted(address rg1) with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require stor1.length < stor1.length
                if not ext_call.return_data[0]:
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                        stor1[stor1.length].field_256 = sub_f134b351
                    else:
                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
        if stor1[stor1.length].field_256 > 1:
            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
            stor1[stor1.length].field_256--
            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                        stor1[(3 * stor1.length) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
            return 0
        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
        if stor1.length < stor1.length - 1:
            require stor1.length - 1 < stor1.length
            require stor1.length < stor1.length
            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
            if not stor1[stor1.length].field_0:
                idx = 0
                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor1[stor1.length].field_0 + 31 / 32
                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
            stor0[stor1[stor1.length].field_0] = stor1.length
    stor1.length--
    if not stor1.length <= stor1.length - 1:
        mem[0] = 1
        idx = (3 * stor1.length) - 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 3
            continue 
    mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
    if address(stor2.length) != arg1:
        address(stor2.length) = arg1
        if stor1.length:
            idx = stor1.length - 1
            while idx > 0:
                require idx < stor1.length
                mem[0] = stor1[idx].field_512
                mem[32] = 0
                stor0[stor1[idx].field_512] = 0
                stor1.length--
                if not stor1.length <= stor1.length - 1:
                    mem[0] = 1
                    s = sha3(mem[0]) + (3 * stor1.length) - 3
                    while sha3(1) + (3 * stor1.length) > s:
                        stor[s] = 0
                        mem[0] = s
                        t = sha3(s)
                        while sha3(s) + (stor[s] + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        stor1[s].field_0 = 0
                        uint256(stor2[s]) = 0
                        s = s + 3
                        continue 
                idx = idx - 1
                continue 
    return 1
}

function execute(address arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if stor6[address(msg.sender)].field_0 <= 0:
        return 0
    mem[ceil32(arg2.length) + 128] = address(arg1)
    mem[ceil32(arg2.length) + 148 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 180 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    _4312 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
    if not stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]:
        if stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]:
            require stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] < stor1.length
            if stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_256 > 1:
                emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_256--
                if stor6[address(msg.sender)].field_0 >= stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0:
                    stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                    if not stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                        while stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 + 31 / 32 > idx:
                            stor1[(3 * stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]) + idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor6[address(msg.sender)].field_0 < stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0
                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                return 0
            mem[ceil32(arg2.length) + 128] = 1
            emit Confirmation(1, msg.sender, _4312);
            if stor0[_4312] < stor1.length - 1:
                require stor1.length - 1 < stor1.length
                require stor0[_4312] < stor1.length
                stor1[stor0[_4312]].field_0 = stor1[stor1.length].field_0
                if not stor1[stor1.length].field_0:
                    idx = 0
                    while stor1[stor0[_4312]].field_0 + 31 / 32 > idx:
                        uint8(stor1[(3 * stor0[_4312]) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                        stor1[(3 * stor0[_4312]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[stor1.length].field_0 + 31 / 32
                    while stor1[stor0[_4312]].field_0 + 31 / 32 > idx:
                        uint8(stor1[(3 * stor0[_4312]) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor1[stor0[_4312]].field_256 = stor1[stor1.length].field_0
                stor1[stor0[_4312]].field_512 = stor1[stor1.length].field_0
                stor0[stor1[stor1.length].field_0] = stor0[_4312]
        else:
            require 3 < arg2.length
            _4322 = mem[131]
            require 2 < arg2.length
            _4325 = mem[130]
            require 1 < arg2.length
            _4332 = mem[129]
            require 0 < arg2.length
            _4338 = mem[128]
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                mem[0] = 1
                idx = (3 * stor1.length) + 3
                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    idx = idx + 3
                    continue 
            if arg1 == this.address:
                require stor1.length < stor1.length
                stor1[stor1.length].field_256 = multiAccessRequired
                stor1[stor1.length].field_512 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
                stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    return 0
            else:
                if address(stor2.length) == arg1:
                    require stor1.length < stor1.length
                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + mem[131 len 1] << 224] <= 0:
                        stor1[stor1.length].field_256 = sub_f134b351
                    else:
                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + mem[131 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
                    stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        return 0
                else:
                    mem[ceil32(arg2.length) + 160] = 0
                    mem[ceil32(arg2.length) + 132] = arg1
                    require ext_code.size(whitelistAddress)
                    call whitelistAddress.isWhitelisted(address rg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    require stor1.length < stor1.length
                    if not ext_call.return_data[0]:
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if sub_494177ba[(Mask(8, 248, _4338) >> 224) + (Mask(8, 248, _4332) >> 232) + (Mask(8, 248, _4325) >> 240) + (Mask(8, 248, _4322) >> 248) << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, _4338) >> 224) + (Mask(8, 248, _4332) >> 232) + (Mask(8, 248, _4325) >> 240) + (Mask(8, 248, _4322) >> 248) << 224]
                    stor1[stor1.length].field_512 = _4312
                    stor0[_4312] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, _4312);
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        return 0
            ('le', ('field', 256, ('stor', ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1)))), 1)
            mem[ceil32(arg2.length) + 128] = 1
            emit Confirmation(1, msg.sender, _4312);
            if stor1.length < stor1.length - 1:
                require stor1.length - 1 < stor1.length
                require stor1.length < stor1.length
                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                if not stor1[stor1.length].field_0:
                    idx = 0
                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[stor1.length].field_0 + 31 / 32
                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                        idx = idx + 1
                        continue 
                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                stor0[stor1[stor1.length].field_0] = stor1.length
    else:
        require stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] < stor1.length
        if stor6[address(msg.sender)].field_0 >= stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0:
            if stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]:
                require stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] < stor1.length
                if stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                    stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0:
                        stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    return 0
                mem[ceil32(arg2.length) + 128] = 1
                emit Confirmation(1, msg.sender, _4312);
                if stor0[_4312] < stor1.length - 1:
                    require stor1.length - 1 < stor1.length
                    require stor0[_4312] < stor1.length
                    stor1[stor0[_4312]].field_0 = stor1[stor1.length].field_0
                    if not stor1[stor1.length].field_0:
                        idx = 0
                        while stor1[stor0[_4312]].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor0[_4312]) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            stor1[(3 * stor0[_4312]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor1[stor1.length].field_0 + 31 / 32
                        while stor1[stor0[_4312]].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor0[_4312]) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    stor1[stor0[_4312]].field_256 = stor1[stor1.length].field_0
                    stor1[stor0[_4312]].field_512 = stor1[stor1.length].field_0
                    stor0[stor1[stor1.length].field_0] = stor0[_4312]
            else:
                require 3 < arg2.length
                _4336 = mem[131]
                require 2 < arg2.length
                _4340 = mem[130]
                require 1 < arg2.length
                _4351 = mem[129]
                require 0 < arg2.length
                _4358 = mem[128]
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if arg1 == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                    stor1[stor1.length].field_512 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
                    stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        return 0
                else:
                    if address(stor2.length) == arg1:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + mem[131 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + mem[131 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
                        stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                            return 0
                    else:
                        mem[ceil32(arg2.length) + 160] = 0
                        mem[ceil32(arg2.length) + 132] = arg1
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, _4358) >> 224) + (Mask(8, 248, _4351) >> 232) + (Mask(8, 248, _4340) >> 240) + (Mask(8, 248, _4336) >> 248) << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, _4358) >> 224) + (Mask(8, 248, _4351) >> 232) + (Mask(8, 248, _4340) >> 240) + (Mask(8, 248, _4336) >> 248) << 224]
                        stor1[stor1.length].field_512 = _4312
                        stor0[_4312] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, _4312);
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                            return 0
                ('le', ('field', 256, ('stor', ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1)))), 1)
                mem[ceil32(arg2.length) + 128] = 1
                emit Confirmation(1, msg.sender, _4312);
                if stor1.length < stor1.length - 1:
                    require stor1.length - 1 < stor1.length
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                    if not stor1[stor1.length].field_0:
                        idx = 0
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor1[stor1.length].field_0 + 31 / 32
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                    stor0[stor1[stor1.length].field_0] = stor1.length
        else:
            if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                return 0
            if stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]:
                require stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] < stor1.length
                if stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                    stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0:
                        stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('param', 'arg1'), ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    return 0
                mem[ceil32(arg2.length) + 128] = 1
                emit Confirmation(1, msg.sender, _4312);
                if stor0[_4312] < stor1.length - 1:
                    require stor1.length - 1 < stor1.length
                    require stor0[_4312] < stor1.length
                    stor1[stor0[_4312]].field_0 = stor1[stor1.length].field_0
                    if not stor1[stor1.length].field_0:
                        idx = 0
                        while stor1[stor0[_4312]].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor0[_4312]) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            stor1[(3 * stor0[_4312]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor1[stor1.length].field_0 + 31 / 32
                        while stor1[stor0[_4312]].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor0[_4312]) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    stor1[stor0[_4312]].field_256 = stor1[stor1.length].field_0
                    stor1[stor0[_4312]].field_512 = stor1[stor1.length].field_0
                    stor0[stor1[stor1.length].field_0] = stor0[_4312]
            else:
                require 3 < arg2.length
                _4345 = mem[131]
                require 2 < arg2.length
                _4356 = mem[130]
                require 1 < arg2.length
                _4364 = mem[129]
                require 0 < arg2.length
                _4368 = mem[128]
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if arg1 == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                    stor1[stor1.length].field_512 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
                    stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        return 0
                else:
                    if address(stor2.length) == arg1:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + mem[131 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + mem[131 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32])
                        stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 148 len arg2.length % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                            return 0
                    else:
                        mem[ceil32(arg2.length) + 160] = 0
                        mem[ceil32(arg2.length) + 132] = arg1
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, _4368) >> 224) + (Mask(8, 248, _4364) >> 232) + (Mask(8, 248, _4356) >> 240) + (Mask(8, 248, _4345) >> 248) << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, _4368) >> 224) + (Mask(8, 248, _4364) >> 232) + (Mask(8, 248, _4356) >> 240) + (Mask(8, 248, _4345) >> 248) << 224]
                        stor1[stor1.length].field_512 = _4312
                        stor0[_4312] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, _4312);
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                            return 0
                ('le', ('field', 256, ('stor', ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1)))), 1)
                mem[ceil32(arg2.length) + 128] = 1
                emit Confirmation(1, msg.sender, _4312);
                if stor1.length < stor1.length - 1:
                    require stor1.length - 1 < stor1.length
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                    if not stor1[stor1.length].field_0:
                        idx = 0
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor1[stor1.length].field_0 + 31 / 32
                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                    stor0[stor1[stor1.length].field_0] = stor1.length
    stor1.length--
    if not stor1.length <= stor1.length - 1:
        mem[0] = 1
        idx = (3 * stor1.length) - 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 3
            continue 
    stor0[_4312] = 0
    if arg2.length <= 0:
        return 0
    if not arg2.length:
        if not arg2.length % 32:
            call arg1 with:
                 gas gas_remaining - 25710 wei
                args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call arg1 with:
                 gas gas_remaining - 25710 wei
                args 1, mem[ceil32(arg2.length) + 160 len floor32(arg2.length)]
    else:
        mem[ceil32(arg2.length) + 128] = mem[128]
        mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
                 gas gas_remaining - 25710 wei
                args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
                 gas gas_remaining - 25710 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    return bool(ext_call.success)
}

function _fallback() {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 > 0:
        mem[ceil32(calldata.size) + 128] = address(stor2.length)
        mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        if not stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                if stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('type', 160, ('stor', ('length', ('name', 'stor2', 2)))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('type', 160, ('stor', ('length', ('name', 'stor2', 2)))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                        stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if calldata.size > 0:
                        call address(stor2.length) with:
                           funct call.data[0 len 4]
                             gas gas_remaining - 25710 wei
                            args call.data[4 len calldata.size - 4]
                        if not ext_call.success:
                            emit Error(1);
            else:
                require 3 < calldata.size
                require 2 < calldata.size
                require 1 < calldata.size
                require 0 < calldata.size
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if address(stor2.length) == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if address(stor2.length) == address(stor2.length):
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    else:
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args address(stor2.length)
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                stor1[stor1.length].field_512 = sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor1.length < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor1.length
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if calldata.size > 0:
                        call address(stor2.length) with:
                           funct call.data[0 len 4]
                             gas gas_remaining - 25710 wei
                            args call.data[4 len calldata.size - 4]
                        if not ext_call.success:
                            emit Error(1);
        else:
            require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                    require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                    if stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('type', 160, ('stor', ('length', ('name', 'stor2', 2)))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('type', 160, ('stor', ('length', ('name', 'stor2', 2)))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                            stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if calldata.size > 0:
                            call address(stor2.length) with:
                               funct call.data[0 len 4]
                                 gas gas_remaining - 25710 wei
                                args call.data[4 len calldata.size - 4]
                            if not ext_call.success:
                                emit Error(1);
                else:
                    require 3 < calldata.size
                    require 2 < calldata.size
                    require 1 < calldata.size
                    require 0 < calldata.size
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) + 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    if address(stor2.length) == this.address:
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if address(stor2.length) == address(stor2.length):
                            require stor1.length < stor1.length
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        else:
                            require ext_code.size(whitelistAddress)
                            call whitelistAddress.isWhitelisted(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args address(stor2.length)
                            require ext_call.success
                            require stor1.length < stor1.length
                            if not ext_call.return_data[0]:
                                stor1[stor1.length].field_256 = multiAccessRequired
                            else:
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor1.length < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor1.length
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if calldata.size > 0:
                            call address(stor2.length) with:
                               funct call.data[0 len 4]
                                 gas gas_remaining - 25710 wei
                                args call.data[4 len calldata.size - 4]
                            if not ext_call.success:
                                emit Error(1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('stor', 160, 0, ('length', ('name', 'stor2', 2))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    if stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                        require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        if stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                                stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('type', 160, ('stor', ('length', ('name', 'stor2', 2)))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', ('type', 160, ('stor', ('length', ('name', 'stor2', 2)))), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                                stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if calldata.size > 0:
                                call address(stor2.length) with:
                                   funct call.data[0 len 4]
                                     gas gas_remaining - 25710 wei
                                    args call.data[4 len calldata.size - 4]
                                if not ext_call.success:
                                    emit Error(1);
                    else:
                        require 3 < calldata.size
                        require 2 < calldata.size
                        require 1 < calldata.size
                        require 0 < calldata.size
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) + 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        if address(stor2.length) == this.address:
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if address(stor2.length) == address(stor2.length):
                                require stor1.length < stor1.length
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                            else:
                                require ext_code.size(whitelistAddress)
                                call whitelistAddress.isWhitelisted(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args address(stor2.length)
                                require ext_call.success
                                require stor1.length < stor1.length
                                if not ext_call.return_data[0]:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                else:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        stor1[stor1.length].field_256 = sub_f134b351
                                    else:
                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(address(stor2.length), call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor1.length < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor1.length < stor1.length
                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor1.length
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[address(stor2.length)][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if calldata.size > 0:
                                call address(stor2.length) with:
                                   funct call.data[0 len 4]
                                     gas gas_remaining - 25710 wei
                                    args call.data[4 len calldata.size - 4]
                                if not ext_call.success:
                                    emit Error(1);
}

function multiAccessAddOwner(address arg1) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 > 0:
        mem[ceil32(calldata.size) + 128] = address(this.address)
        mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if stor6[address(arg1)].field_0 <= 0:
                        multiAccessOwners.length++
                        if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                            idx = multiAccessOwners.length + 1
                            while multiAccessOwners.length > idx:
                                uint256(multiAccessOwners[idx]) = 0
                                idx = idx + 1
                                continue 
                        require multiAccessOwners.length < multiAccessOwners.length
                        address(multiAccessOwners[multiAccessOwners.length]) = arg1
                        stor6[address(arg1)].field_0 = multiAccessOwners.length
                        emit OwnerAdded(arg1);
            else:
                require 3 < calldata.size
                require 2 < calldata.size
                require 1 < calldata.size
                require 0 < calldata.size
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if this.address == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if address(stor2.length) == this.address:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    else:
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor1.length < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor1.length
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if stor6[address(arg1)].field_0 <= 0:
                        multiAccessOwners.length++
                        if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                            idx = multiAccessOwners.length + 1
                            while multiAccessOwners.length > idx:
                                uint256(multiAccessOwners[idx]) = 0
                                idx = idx + 1
                                continue 
                        require multiAccessOwners.length < multiAccessOwners.length
                        address(multiAccessOwners[multiAccessOwners.length]) = arg1
                        stor6[address(arg1)].field_0 = multiAccessOwners.length
                        emit OwnerAdded(arg1);
        else:
            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                    require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if stor6[address(arg1)].field_0 <= 0:
                            multiAccessOwners.length++
                            if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                idx = multiAccessOwners.length + 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            require multiAccessOwners.length < multiAccessOwners.length
                            address(multiAccessOwners[multiAccessOwners.length]) = arg1
                            stor6[address(arg1)].field_0 = multiAccessOwners.length
                            emit OwnerAdded(arg1);
                else:
                    require 3 < calldata.size
                    require 2 < calldata.size
                    require 1 < calldata.size
                    require 0 < calldata.size
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) + 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    if this.address == this.address:
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if address(stor2.length) == this.address:
                            require stor1.length < stor1.length
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        else:
                            require ext_code.size(whitelistAddress)
                            call whitelistAddress.isWhitelisted(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require stor1.length < stor1.length
                            if not ext_call.return_data[0]:
                                stor1[stor1.length].field_256 = multiAccessRequired
                            else:
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor1.length < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor1.length
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if stor6[address(arg1)].field_0 <= 0:
                            multiAccessOwners.length++
                            if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                idx = multiAccessOwners.length + 1
                                while multiAccessOwners.length > idx:
                                    uint256(multiAccessOwners[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            require multiAccessOwners.length < multiAccessOwners.length
                            address(multiAccessOwners[multiAccessOwners.length]) = arg1
                            stor6[address(arg1)].field_0 = multiAccessOwners.length
                            emit OwnerAdded(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if stor6[address(arg1)].field_0 <= 0:
                                multiAccessOwners.length++
                                if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                    idx = multiAccessOwners.length + 1
                                    while multiAccessOwners.length > idx:
                                        uint256(multiAccessOwners[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                require multiAccessOwners.length < multiAccessOwners.length
                                address(multiAccessOwners[multiAccessOwners.length]) = arg1
                                stor6[address(arg1)].field_0 = multiAccessOwners.length
                                emit OwnerAdded(arg1);
                    else:
                        require 3 < calldata.size
                        require 2 < calldata.size
                        require 1 < calldata.size
                        require 0 < calldata.size
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) + 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        if this.address == this.address:
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if address(stor2.length) == this.address:
                                require stor1.length < stor1.length
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                            else:
                                require ext_code.size(whitelistAddress)
                                call whitelistAddress.isWhitelisted(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require stor1.length < stor1.length
                                if not ext_call.return_data[0]:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                else:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        stor1[stor1.length].field_256 = sub_f134b351
                                    else:
                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor1.length < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor1.length < stor1.length
                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor1.length
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if stor6[address(arg1)].field_0 <= 0:
                                multiAccessOwners.length++
                                if not multiAccessOwners.length <= multiAccessOwners.length + 1:
                                    idx = multiAccessOwners.length + 1
                                    while multiAccessOwners.length > idx:
                                        uint256(multiAccessOwners[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                require multiAccessOwners.length < multiAccessOwners.length
                                address(multiAccessOwners[multiAccessOwners.length]) = arg1
                                stor6[address(arg1)].field_0 = multiAccessOwners.length
                                emit OwnerAdded(arg1);
}

function sub_3555a448(?) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 > 0:
        mem[ceil32(calldata.size) + 128] = address(this.address)
        mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    require sub_494177ba[Mask(32, 224, sha3(arg1[all]))]
                    mem[0] = Mask(32, 224, sha3(arg1[all]))
                    sub_494177ba[Mask(32, 224, sha3(arg1[all]))] = 0
                    if stor1.length:
                        idx = stor1.length - 1
                        while idx > 0:
                            require idx < stor1.length
                            mem[0] = stor1[idx].field_512
                            mem[32] = 0
                            stor0[stor1[idx].field_512] = 0
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > s:
                                    stor[s] = 0
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                                    stor1[s].field_0 = 0
                                    uint256(stor2[s]) = 0
                                    s = s + 3
                                    continue 
                            idx = idx - 1
                            continue 
                    emit 0x5adc7cfd: Array(len=arg1.length, data=arg1[all])
            else:
                require 3 < calldata.size
                require 2 < calldata.size
                require 1 < calldata.size
                require 0 < calldata.size
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if this.address == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if address(stor2.length) == this.address:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    else:
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor1.length < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor1.length
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    require sub_494177ba[Mask(32, 224, sha3(arg1[all]))]
                    mem[0] = Mask(32, 224, sha3(arg1[all]))
                    sub_494177ba[Mask(32, 224, sha3(arg1[all]))] = 0
                    if stor1.length:
                        idx = stor1.length - 1
                        while idx > 0:
                            require idx < stor1.length
                            mem[0] = stor1[idx].field_512
                            mem[32] = 0
                            stor0[stor1[idx].field_512] = 0
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > s:
                                    stor[s] = 0
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                        stor[t] = 0
                                        t = t + 1
                                        continue 
                                    stor1[s].field_0 = 0
                                    uint256(stor2[s]) = 0
                                    s = s + 3
                                    continue 
                            idx = idx - 1
                            continue 
                    emit 0x5adc7cfd: Array(len=arg1.length, data=arg1[all])
        else:
            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                    require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        require sub_494177ba[Mask(32, 224, sha3(arg1[all]))]
                        mem[0] = Mask(32, 224, sha3(arg1[all]))
                        sub_494177ba[Mask(32, 224, sha3(arg1[all]))] = 0
                        if stor1.length:
                            idx = stor1.length - 1
                            while idx > 0:
                                require idx < stor1.length
                                mem[0] = stor1[idx].field_512
                                mem[32] = 0
                                stor0[stor1[idx].field_512] = 0
                                stor1.length--
                                if not stor1.length <= stor1.length - 1:
                                    mem[0] = 1
                                    s = sha3(mem[0]) + (3 * stor1.length) - 3
                                    while sha3(1) + (3 * stor1.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s].field_0 = 0
                                        uint256(stor2[s]) = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                        emit 0x5adc7cfd: Array(len=arg1.length, data=arg1[all])
                else:
                    require 3 < calldata.size
                    require 2 < calldata.size
                    require 1 < calldata.size
                    require 0 < calldata.size
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) + 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    if this.address == this.address:
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if address(stor2.length) == this.address:
                            require stor1.length < stor1.length
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        else:
                            require ext_code.size(whitelistAddress)
                            call whitelistAddress.isWhitelisted(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require stor1.length < stor1.length
                            if not ext_call.return_data[0]:
                                stor1[stor1.length].field_256 = multiAccessRequired
                            else:
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor1.length < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor1.length
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        require sub_494177ba[Mask(32, 224, sha3(arg1[all]))]
                        mem[0] = Mask(32, 224, sha3(arg1[all]))
                        sub_494177ba[Mask(32, 224, sha3(arg1[all]))] = 0
                        if stor1.length:
                            idx = stor1.length - 1
                            while idx > 0:
                                require idx < stor1.length
                                mem[0] = stor1[idx].field_512
                                mem[32] = 0
                                stor0[stor1[idx].field_512] = 0
                                stor1.length--
                                if not stor1.length <= stor1.length - 1:
                                    mem[0] = 1
                                    s = sha3(mem[0]) + (3 * stor1.length) - 3
                                    while sha3(1) + (3 * stor1.length) > s:
                                        stor[s] = 0
                                        mem[0] = s
                                        t = sha3(s)
                                        while sha3(s) + (stor[s] + 31 / 32) > t:
                                            stor[t] = 0
                                            t = t + 1
                                            continue 
                                        stor1[s].field_0 = 0
                                        uint256(stor2[s]) = 0
                                        s = s + 3
                                        continue 
                                idx = idx - 1
                                continue 
                        emit 0x5adc7cfd: Array(len=arg1.length, data=arg1[all])
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            require sub_494177ba[Mask(32, 224, sha3(arg1[all]))]
                            mem[0] = Mask(32, 224, sha3(arg1[all]))
                            sub_494177ba[Mask(32, 224, sha3(arg1[all]))] = 0
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            emit 0x5adc7cfd: Array(len=arg1.length, data=arg1[all])
                    else:
                        require 3 < calldata.size
                        require 2 < calldata.size
                        require 1 < calldata.size
                        require 0 < calldata.size
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) + 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        if this.address == this.address:
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if address(stor2.length) == this.address:
                                require stor1.length < stor1.length
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                            else:
                                require ext_code.size(whitelistAddress)
                                call whitelistAddress.isWhitelisted(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require stor1.length < stor1.length
                                if not ext_call.return_data[0]:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                else:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        stor1[stor1.length].field_256 = sub_f134b351
                                    else:
                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor1.length < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor1.length < stor1.length
                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor1.length
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            require sub_494177ba[Mask(32, 224, sha3(arg1[all]))]
                            mem[0] = Mask(32, 224, sha3(arg1[all]))
                            sub_494177ba[Mask(32, 224, sha3(arg1[all]))] = 0
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            emit 0x5adc7cfd: Array(len=arg1.length, data=arg1[all])
}

function sub_4ee66449(?) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 > 0:
        mem[ceil32(calldata.size) + 128] = address(this.address)
        mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if arg1 > 0:
                        if arg1 < multiAccessOwners.length:
                            sub_f134b351 = arg1
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            emit 0xaf73276e: arg1
            else:
                require 3 < calldata.size
                require 2 < calldata.size
                require 1 < calldata.size
                require 0 < calldata.size
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if this.address == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if address(stor2.length) == this.address:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    else:
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor1.length < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor1.length
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if arg1 > 0:
                        if arg1 < multiAccessOwners.length:
                            sub_f134b351 = arg1
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            emit 0xaf73276e: arg1
        else:
            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                    require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if arg1 > 0:
                            if arg1 < multiAccessOwners.length:
                                sub_f134b351 = arg1
                                if stor1.length:
                                    idx = stor1.length - 1
                                    while idx > 0:
                                        require idx < stor1.length
                                        mem[0] = stor1[idx].field_512
                                        mem[32] = 0
                                        stor0[stor1[idx].field_512] = 0
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            s = sha3(mem[0]) + (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s].field_0 = 0
                                                uint256(stor2[s]) = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                emit 0xaf73276e: arg1
                else:
                    require 3 < calldata.size
                    require 2 < calldata.size
                    require 1 < calldata.size
                    require 0 < calldata.size
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) + 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    if this.address == this.address:
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if address(stor2.length) == this.address:
                            require stor1.length < stor1.length
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        else:
                            require ext_code.size(whitelistAddress)
                            call whitelistAddress.isWhitelisted(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require stor1.length < stor1.length
                            if not ext_call.return_data[0]:
                                stor1[stor1.length].field_256 = multiAccessRequired
                            else:
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor1.length < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor1.length
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if arg1 > 0:
                            if arg1 < multiAccessOwners.length:
                                sub_f134b351 = arg1
                                if stor1.length:
                                    idx = stor1.length - 1
                                    while idx > 0:
                                        require idx < stor1.length
                                        mem[0] = stor1[idx].field_512
                                        mem[32] = 0
                                        stor0[stor1[idx].field_512] = 0
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            s = sha3(mem[0]) + (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s].field_0 = 0
                                                uint256(stor2[s]) = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                emit 0xaf73276e: arg1
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if arg1 > 0:
                                if arg1 < multiAccessOwners.length:
                                    sub_f134b351 = arg1
                                    if stor1.length:
                                        idx = stor1.length - 1
                                        while idx > 0:
                                            require idx < stor1.length
                                            mem[0] = stor1[idx].field_512
                                            mem[32] = 0
                                            stor0[stor1[idx].field_512] = 0
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > s:
                                                    stor[s] = 0
                                                    mem[0] = s
                                                    t = sha3(s)
                                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                                        stor[t] = 0
                                                        t = t + 1
                                                        continue 
                                                    stor1[s].field_0 = 0
                                                    uint256(stor2[s]) = 0
                                                    s = s + 3
                                                    continue 
                                            idx = idx - 1
                                            continue 
                                    emit 0xaf73276e: arg1
                    else:
                        require 3 < calldata.size
                        require 2 < calldata.size
                        require 1 < calldata.size
                        require 0 < calldata.size
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) + 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        if this.address == this.address:
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if address(stor2.length) == this.address:
                                require stor1.length < stor1.length
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                            else:
                                require ext_code.size(whitelistAddress)
                                call whitelistAddress.isWhitelisted(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require stor1.length < stor1.length
                                if not ext_call.return_data[0]:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                else:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        stor1[stor1.length].field_256 = sub_f134b351
                                    else:
                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor1.length < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor1.length < stor1.length
                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor1.length
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if arg1 > 0:
                                if arg1 < multiAccessOwners.length:
                                    sub_f134b351 = arg1
                                    if stor1.length:
                                        idx = stor1.length - 1
                                        while idx > 0:
                                            require idx < stor1.length
                                            mem[0] = stor1[idx].field_512
                                            mem[32] = 0
                                            stor0[stor1[idx].field_512] = 0
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > s:
                                                    stor[s] = 0
                                                    mem[0] = s
                                                    t = sha3(s)
                                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                                        stor[t] = 0
                                                        t = t + 1
                                                        continue 
                                                    stor1[s].field_0 = 0
                                                    uint256(stor2[s]) = 0
                                                    s = s + 3
                                                    continue 
                                            idx = idx - 1
                                            continue 
                                    emit 0xaf73276e: arg1
}

function multiAccessChangeRequirement(uint256 arg1) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 > 0:
        mem[ceil32(calldata.size) + 128] = address(this.address)
        mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if arg1 > 0:
                        if arg1 < multiAccessOwners.length:
                            multiAccessRequired = arg1
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            emit RequirementChanged(arg1);
            else:
                require 3 < calldata.size
                require 2 < calldata.size
                require 1 < calldata.size
                require 0 < calldata.size
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if this.address == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if address(stor2.length) == this.address:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    else:
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor1.length < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor1.length
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if arg1 > 0:
                        if arg1 < multiAccessOwners.length:
                            multiAccessRequired = arg1
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            emit RequirementChanged(arg1);
        else:
            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                    require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if arg1 > 0:
                            if arg1 < multiAccessOwners.length:
                                multiAccessRequired = arg1
                                if stor1.length:
                                    idx = stor1.length - 1
                                    while idx > 0:
                                        require idx < stor1.length
                                        mem[0] = stor1[idx].field_512
                                        mem[32] = 0
                                        stor0[stor1[idx].field_512] = 0
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            s = sha3(mem[0]) + (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s].field_0 = 0
                                                uint256(stor2[s]) = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                emit RequirementChanged(arg1);
                else:
                    require 3 < calldata.size
                    require 2 < calldata.size
                    require 1 < calldata.size
                    require 0 < calldata.size
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) + 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    if this.address == this.address:
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if address(stor2.length) == this.address:
                            require stor1.length < stor1.length
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        else:
                            require ext_code.size(whitelistAddress)
                            call whitelistAddress.isWhitelisted(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require stor1.length < stor1.length
                            if not ext_call.return_data[0]:
                                stor1[stor1.length].field_256 = multiAccessRequired
                            else:
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor1.length < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor1.length
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if arg1 > 0:
                            if arg1 < multiAccessOwners.length:
                                multiAccessRequired = arg1
                                if stor1.length:
                                    idx = stor1.length - 1
                                    while idx > 0:
                                        require idx < stor1.length
                                        mem[0] = stor1[idx].field_512
                                        mem[32] = 0
                                        stor0[stor1[idx].field_512] = 0
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            s = sha3(mem[0]) + (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s].field_0 = 0
                                                uint256(stor2[s]) = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                emit RequirementChanged(arg1);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if arg1 > 0:
                                if arg1 < multiAccessOwners.length:
                                    multiAccessRequired = arg1
                                    if stor1.length:
                                        idx = stor1.length - 1
                                        while idx > 0:
                                            require idx < stor1.length
                                            mem[0] = stor1[idx].field_512
                                            mem[32] = 0
                                            stor0[stor1[idx].field_512] = 0
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > s:
                                                    stor[s] = 0
                                                    mem[0] = s
                                                    t = sha3(s)
                                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                                        stor[t] = 0
                                                        t = t + 1
                                                        continue 
                                                    stor1[s].field_0 = 0
                                                    uint256(stor2[s]) = 0
                                                    s = s + 3
                                                    continue 
                                            idx = idx - 1
                                            continue 
                                    emit RequirementChanged(arg1);
                    else:
                        require 3 < calldata.size
                        require 2 < calldata.size
                        require 1 < calldata.size
                        require 0 < calldata.size
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) + 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        if this.address == this.address:
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if address(stor2.length) == this.address:
                                require stor1.length < stor1.length
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                            else:
                                require ext_code.size(whitelistAddress)
                                call whitelistAddress.isWhitelisted(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require stor1.length < stor1.length
                                if not ext_call.return_data[0]:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                else:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        stor1[stor1.length].field_256 = sub_f134b351
                                    else:
                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor1.length < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor1.length < stor1.length
                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor1.length
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            mem[0] = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if arg1 > 0:
                                if arg1 < multiAccessOwners.length:
                                    multiAccessRequired = arg1
                                    if stor1.length:
                                        idx = stor1.length - 1
                                        while idx > 0:
                                            require idx < stor1.length
                                            mem[0] = stor1[idx].field_512
                                            mem[32] = 0
                                            stor0[stor1[idx].field_512] = 0
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > s:
                                                    stor[s] = 0
                                                    mem[0] = s
                                                    t = sha3(s)
                                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                                        stor[t] = 0
                                                        t = t + 1
                                                        continue 
                                                    stor1[s].field_0 = 0
                                                    uint256(stor2[s]) = 0
                                                    s = s + 3
                                                    continue 
                                            idx = idx - 1
                                            continue 
                                    emit RequirementChanged(arg1);
}

function multiAccessChangeOwner(address arg1, address arg2) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 > 0:
        mem[ceil32(calldata.size) + 128] = address(this.address)
        mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if stor6[address(arg2)].field_0 <= 0:
                        mem[0] = arg1
                        if stor6[address(arg1)].field_0:
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            require stor6[address(arg1)].field_0 < multiAccessOwners.length
                            address(multiAccessOwners[stor6[address(arg1)].field_0]) = arg2
                            stor6[address(arg1)].field_0 = 0
                            stor6[arg2].field_0 = stor6[address(arg1)].field_0
                            emit OwnerChanged(address(arg1), arg2);
            else:
                require 3 < calldata.size
                require 2 < calldata.size
                require 1 < calldata.size
                require 0 < calldata.size
                stor1.length++
                if not stor1.length <= stor1.length + 1:
                    mem[0] = 1
                    idx = (3 * stor1.length) + 3
                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                        stor[idx + sha3(mem[0])] = 0
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor[idx + sha3(mem[0]) + 1] = 0
                        stor[idx + sha3(mem[0]) + 2] = 0
                        idx = idx + 3
                        continue 
                if this.address == this.address:
                    require stor1.length < stor1.length
                    stor1[stor1.length].field_256 = multiAccessRequired
                else:
                    if address(stor2.length) == this.address:
                        require stor1.length < stor1.length
                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                            stor1[stor1.length].field_256 = sub_f134b351
                        else:
                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    else:
                        require ext_code.size(whitelistAddress)
                        call whitelistAddress.isWhitelisted(address rg1) with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require stor1.length < stor1.length
                        if not ext_call.return_data[0]:
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                if stor1[stor1.length].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor1.length].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                else:
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor1.length < stor1.length - 1:
                        require stor1.length - 1 < stor1.length
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                        if not stor1[stor1.length].field_0:
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[stor1.length].field_0 + 31 / 32
                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                        stor0[stor1[stor1.length].field_0] = stor1.length
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if stor6[address(arg2)].field_0 <= 0:
                        mem[0] = arg1
                        if stor6[address(arg1)].field_0:
                            if stor1.length:
                                idx = stor1.length - 1
                                while idx > 0:
                                    require idx < stor1.length
                                    mem[0] = stor1[idx].field_512
                                    mem[32] = 0
                                    stor0[stor1[idx].field_512] = 0
                                    stor1.length--
                                    if not stor1.length <= stor1.length - 1:
                                        mem[0] = 1
                                        s = sha3(mem[0]) + (3 * stor1.length) - 3
                                        while sha3(1) + (3 * stor1.length) > s:
                                            stor[s] = 0
                                            mem[0] = s
                                            t = sha3(s)
                                            while sha3(s) + (stor[s] + 31 / 32) > t:
                                                stor[t] = 0
                                                t = t + 1
                                                continue 
                                            stor1[s].field_0 = 0
                                            uint256(stor2[s]) = 0
                                            s = s + 3
                                            continue 
                                    idx = idx - 1
                                    continue 
                            require stor6[address(arg1)].field_0 < multiAccessOwners.length
                            address(multiAccessOwners[stor6[address(arg1)].field_0]) = arg2
                            stor6[address(arg1)].field_0 = 0
                            stor6[arg2].field_0 = stor6[address(arg1)].field_0
                            emit OwnerChanged(address(arg1), arg2);
        else:
            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                    require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if stor6[address(arg2)].field_0 <= 0:
                            mem[0] = arg1
                            if stor6[address(arg1)].field_0:
                                if stor1.length:
                                    idx = stor1.length - 1
                                    while idx > 0:
                                        require idx < stor1.length
                                        mem[0] = stor1[idx].field_512
                                        mem[32] = 0
                                        stor0[stor1[idx].field_512] = 0
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            s = sha3(mem[0]) + (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s].field_0 = 0
                                                uint256(stor2[s]) = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                require stor6[address(arg1)].field_0 < multiAccessOwners.length
                                address(multiAccessOwners[stor6[address(arg1)].field_0]) = arg2
                                stor6[address(arg1)].field_0 = 0
                                stor6[arg2].field_0 = stor6[address(arg1)].field_0
                                emit OwnerChanged(address(arg1), arg2);
                else:
                    require 3 < calldata.size
                    require 2 < calldata.size
                    require 1 < calldata.size
                    require 0 < calldata.size
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) + 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    if this.address == this.address:
                        require stor1.length < stor1.length
                        stor1[stor1.length].field_256 = multiAccessRequired
                    else:
                        if address(stor2.length) == this.address:
                            require stor1.length < stor1.length
                            if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                stor1[stor1.length].field_256 = sub_f134b351
                            else:
                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        else:
                            require ext_code.size(whitelistAddress)
                            call whitelistAddress.isWhitelisted(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require stor1.length < stor1.length
                            if not ext_call.return_data[0]:
                                stor1[stor1.length].field_256 = multiAccessRequired
                            else:
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                    if stor1[stor1.length].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor1.length].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                    else:
                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        if stor1.length < stor1.length - 1:
                            require stor1.length - 1 < stor1.length
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor1.length
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if stor6[address(arg2)].field_0 <= 0:
                            mem[0] = arg1
                            if stor6[address(arg1)].field_0:
                                if stor1.length:
                                    idx = stor1.length - 1
                                    while idx > 0:
                                        require idx < stor1.length
                                        mem[0] = stor1[idx].field_512
                                        mem[32] = 0
                                        stor0[stor1[idx].field_512] = 0
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            s = sha3(mem[0]) + (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > s:
                                                stor[s] = 0
                                                mem[0] = s
                                                t = sha3(s)
                                                while sha3(s) + (stor[s] + 31 / 32) > t:
                                                    stor[t] = 0
                                                    t = t + 1
                                                    continue 
                                                stor1[s].field_0 = 0
                                                uint256(stor2[s]) = 0
                                                s = s + 3
                                                continue 
                                        idx = idx - 1
                                        continue 
                                require stor6[address(arg1)].field_0 < multiAccessOwners.length
                                address(multiAccessOwners[stor6[address(arg1)].field_0]) = arg2
                                stor6[address(arg1)].field_0 = 0
                                stor6[arg2].field_0 = stor6[address(arg1)].field_0
                                emit OwnerChanged(address(arg1), arg2);
            else:
                if not stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                        require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                        if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if stor6[address(arg2)].field_0 <= 0:
                                mem[0] = arg1
                                if stor6[address(arg1)].field_0:
                                    if stor1.length:
                                        idx = stor1.length - 1
                                        while idx > 0:
                                            require idx < stor1.length
                                            mem[0] = stor1[idx].field_512
                                            mem[32] = 0
                                            stor0[stor1[idx].field_512] = 0
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > s:
                                                    stor[s] = 0
                                                    mem[0] = s
                                                    t = sha3(s)
                                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                                        stor[t] = 0
                                                        t = t + 1
                                                        continue 
                                                    stor1[s].field_0 = 0
                                                    uint256(stor2[s]) = 0
                                                    s = s + 3
                                                    continue 
                                            idx = idx - 1
                                            continue 
                                    require stor6[address(arg1)].field_0 < multiAccessOwners.length
                                    address(multiAccessOwners[stor6[address(arg1)].field_0]) = arg2
                                    stor6[address(arg1)].field_0 = 0
                                    stor6[arg2].field_0 = stor6[address(arg1)].field_0
                                    emit OwnerChanged(address(arg1), arg2);
                    else:
                        require 3 < calldata.size
                        require 2 < calldata.size
                        require 1 < calldata.size
                        require 0 < calldata.size
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) + 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        if this.address == this.address:
                            require stor1.length < stor1.length
                            stor1[stor1.length].field_256 = multiAccessRequired
                        else:
                            if address(stor2.length) == this.address:
                                require stor1.length < stor1.length
                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                    stor1[stor1.length].field_256 = sub_f134b351
                                else:
                                    stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                            else:
                                require ext_code.size(whitelistAddress)
                                call whitelistAddress.isWhitelisted(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require stor1.length < stor1.length
                                if not ext_call.return_data[0]:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                else:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        stor1[stor1.length].field_256 = sub_f134b351
                                    else:
                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                        if stor1[stor1.length].field_256 > 1:
                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            stor1[stor1.length].field_256--
                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                        else:
                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                            if stor1.length < stor1.length - 1:
                                require stor1.length - 1 < stor1.length
                                require stor1.length < stor1.length
                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor1.length
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if stor6[address(arg2)].field_0 <= 0:
                                mem[0] = arg1
                                if stor6[address(arg1)].field_0:
                                    if stor1.length:
                                        idx = stor1.length - 1
                                        while idx > 0:
                                            require idx < stor1.length
                                            mem[0] = stor1[idx].field_512
                                            mem[32] = 0
                                            stor0[stor1[idx].field_512] = 0
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                s = sha3(mem[0]) + (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > s:
                                                    stor[s] = 0
                                                    mem[0] = s
                                                    t = sha3(s)
                                                    while sha3(s) + (stor[s] + 31 / 32) > t:
                                                        stor[t] = 0
                                                        t = t + 1
                                                        continue 
                                                    stor1[s].field_0 = 0
                                                    uint256(stor2[s]) = 0
                                                    s = s + 3
                                                    continue 
                                            idx = idx - 1
                                            continue 
                                    require stor6[address(arg1)].field_0 < multiAccessOwners.length
                                    address(multiAccessOwners[stor6[address(arg1)].field_0]) = arg2
                                    stor6[address(arg1)].field_0 = 0
                                    stor6[arg2].field_0 = stor6[address(arg1)].field_0
                                    emit OwnerChanged(address(arg1), arg2);
}

function sub_7b8e8de3(?) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 <= 0:
    mem[ceil32(calldata.size) + 128] = address(this.address)
    mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
    mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
    if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] >= stor1.length - 1:
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if ext_code.size(whitelistAddress):
                        call whitelistAddress.'
;
O' with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
                else:
                    if stor1.length - 1 < stor1.length:
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if ext_code.size(whitelistAddress):
                                call whitelistAddress.'
;
O' with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                if ext_call.success:
        else:
            if 3 < calldata.size:
                if 2 < calldata.size:
                    if 1 < calldata.size:
                        if 0 < calldata.size:
                            stor1.length++
                            if not stor1.length <= stor1.length + 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) + 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            if this.address == this.address:
                                if stor1.length < stor1.length:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                    if stor1[stor1.length].field_256 > 1:
                                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                        stor1[stor1.length].field_256--
                                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                    if stor1.length >= stor1.length - 1:
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            idx = (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                stor[idx + sha3(mem[0])] = 0
                                                mem[0] = idx + sha3(mem[0])
                                                s = sha3(idx + sha3(mem[0]))
                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                idx = idx + 3
                                                continue 
                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                        if ext_code.size(whitelistAddress):
                                            call whitelistAddress.'
;
O' with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            if ext_call.success:
                                    else:
                                        if stor1.length - 1 < stor1.length:
                                            if stor1.length < stor1.length:
                                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                if not stor1[stor1.length].field_0:
                                                    idx = 0
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 0
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                        s = s + 1
                                                        idx = idx + 1
                                                        continue 
                                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                stor0[stor1[stor1.length].field_0] = stor1.length
                                                stor1.length--
                                                if not stor1.length <= stor1.length - 1:
                                                    mem[0] = 1
                                                    idx = (3 * stor1.length) - 3
                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                        stor[idx + sha3(mem[0])] = 0
                                                        mem[0] = idx + sha3(mem[0])
                                                        s = sha3(idx + sha3(mem[0]))
                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                        idx = idx + 3
                                                        continue 
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                if ext_code.size(whitelistAddress):
                                                    call whitelistAddress.'
;
O' with:
                                                         gas gas_remaining - 710 wei
                                                        args arg1
                                                    if ext_call.success:
                            else:
                                if address(stor2.length) == this.address:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        if stor1.length < stor1.length:
                                            stor1[stor1.length].field_256 = sub_f134b351
                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                            if stor1[stor1.length].field_256 > 1:
                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                stor1[stor1.length].field_256--
                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                            if stor1.length >= stor1.length - 1:
                                                stor1.length--
                                                if not stor1.length <= stor1.length - 1:
                                                    mem[0] = 1
                                                    idx = (3 * stor1.length) - 3
                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                        stor[idx + sha3(mem[0])] = 0
                                                        mem[0] = idx + sha3(mem[0])
                                                        s = sha3(idx + sha3(mem[0]))
                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                        idx = idx + 3
                                                        continue 
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                if ext_code.size(whitelistAddress):
                                                    call whitelistAddress.'
;
O' with:
                                                         gas gas_remaining - 710 wei
                                                        args arg1
                                                    if ext_call.success:
                                            else:
                                                if stor1.length - 1 < stor1.length:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                        if not stor1[stor1.length].field_0:
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = 0
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                s = s + 1
                                                                idx = idx + 1
                                                                continue 
                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                        stor1.length--
                                                        if not stor1.length <= stor1.length - 1:
                                                            mem[0] = 1
                                                            idx = (3 * stor1.length) - 3
                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                stor[idx + sha3(mem[0])] = 0
                                                                mem[0] = idx + sha3(mem[0])
                                                                s = sha3(idx + sha3(mem[0]))
                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                    stor[s] = 0
                                                                    s = s + 1
                                                                    continue 
                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                idx = idx + 3
                                                                continue 
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                        if ext_code.size(whitelistAddress):
                                                            call whitelistAddress.'
;
O' with:
                                                                 gas gas_remaining - 710 wei
                                                                args arg1
                                                            if ext_call.success:
                                    else:
                                        if stor1.length < stor1.length:
                                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                            if stor1[stor1.length].field_256 > 1:
                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                stor1[stor1.length].field_256--
                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                            if stor1.length >= stor1.length - 1:
                                                stor1.length--
                                                if not stor1.length <= stor1.length - 1:
                                                    mem[0] = 1
                                                    idx = (3 * stor1.length) - 3
                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                        stor[idx + sha3(mem[0])] = 0
                                                        mem[0] = idx + sha3(mem[0])
                                                        s = sha3(idx + sha3(mem[0]))
                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                        idx = idx + 3
                                                        continue 
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                if ext_code.size(whitelistAddress):
                                                    call whitelistAddress.'
;
O' with:
                                                         gas gas_remaining - 710 wei
                                                        args arg1
                                                    if ext_call.success:
                                            else:
                                                if stor1.length - 1 < stor1.length:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                        if not stor1[stor1.length].field_0:
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = 0
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                s = s + 1
                                                                idx = idx + 1
                                                                continue 
                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                        stor1.length--
                                                        if not stor1.length <= stor1.length - 1:
                                                            mem[0] = 1
                                                            idx = (3 * stor1.length) - 3
                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                stor[idx + sha3(mem[0])] = 0
                                                                mem[0] = idx + sha3(mem[0])
                                                                s = sha3(idx + sha3(mem[0]))
                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                    stor[s] = 0
                                                                    s = s + 1
                                                                    continue 
                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                idx = idx + 3
                                                                continue 
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                        if ext_code.size(whitelistAddress):
                                                            call whitelistAddress.'
;
O' with:
                                                                 gas gas_remaining - 710 wei
                                                                args arg1
                                                            if ext_call.success:
                                else:
                                    if ext_code.size(whitelistAddress):
                                        call whitelistAddress.isWhitelisted(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if not ext_call.return_data[0]:
                                                if stor1.length < stor1.length:
                                                    stor1[stor1.length].field_256 = multiAccessRequired
                                                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                    if stor1[stor1.length].field_256 > 1:
                                                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        stor1[stor1.length].field_256--
                                                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                    if stor1.length >= stor1.length - 1:
                                                        stor1.length--
                                                        if not stor1.length <= stor1.length - 1:
                                                            mem[0] = 1
                                                            idx = (3 * stor1.length) - 3
                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                stor[idx + sha3(mem[0])] = 0
                                                                mem[0] = idx + sha3(mem[0])
                                                                s = sha3(idx + sha3(mem[0]))
                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                    stor[s] = 0
                                                                    s = s + 1
                                                                    continue 
                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                idx = idx + 3
                                                                continue 
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                        if ext_code.size(whitelistAddress):
                                                            call whitelistAddress.'
;
O' with:
                                                                 gas gas_remaining - 710 wei
                                                                args arg1
                                                            if ext_call.success:
                                                    else:
                                                        if stor1.length - 1 < stor1.length:
                                                            if stor1.length < stor1.length:
                                                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                if not stor1[stor1.length].field_0:
                                                                    idx = 0
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    s = 0
                                                                    idx = 0
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                        s = s + 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                stor0[stor1[stor1.length].field_0] = stor1.length
                                                                stor1.length--
                                                                if not stor1.length <= stor1.length - 1:
                                                                    mem[0] = 1
                                                                    idx = (3 * stor1.length) - 3
                                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                        stor[idx + sha3(mem[0])] = 0
                                                                        mem[0] = idx + sha3(mem[0])
                                                                        s = sha3(idx + sha3(mem[0]))
                                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                            stor[s] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                                        idx = idx + 3
                                                                        continue 
                                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                if ext_code.size(whitelistAddress):
                                                                    call whitelistAddress.'
;
O' with:
                                                                         gas gas_remaining - 710 wei
                                                                        args arg1
                                                                    if ext_call.success:
                                            else:
                                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_256 = sub_f134b351
                                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                        if stor1[stor1.length].field_256 > 1:
                                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            stor1[stor1.length].field_256--
                                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        if stor1.length >= stor1.length - 1:
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.'
;
O' with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                                        else:
                                                            if stor1.length - 1 < stor1.length:
                                                                if stor1.length < stor1.length:
                                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                    if not stor1[stor1.length].field_0:
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                                    stor1.length--
                                                                    if not stor1.length <= stor1.length - 1:
                                                                        mem[0] = 1
                                                                        idx = (3 * stor1.length) - 3
                                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                            stor[idx + sha3(mem[0])] = 0
                                                                            mem[0] = idx + sha3(mem[0])
                                                                            s = sha3(idx + sha3(mem[0]))
                                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                stor[s] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                                            idx = idx + 3
                                                                            continue 
                                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                    if ext_code.size(whitelistAddress):
                                                                        call whitelistAddress.'
;
O' with:
                                                                             gas gas_remaining - 710 wei
                                                                            args arg1
                                                                        if ext_call.success:
                                                else:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                        if stor1[stor1.length].field_256 > 1:
                                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            stor1[stor1.length].field_256--
                                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        if stor1.length >= stor1.length - 1:
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.'
;
O' with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                                        else:
                                                            if stor1.length - 1 < stor1.length:
                                                                if stor1.length < stor1.length:
                                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                    if not stor1[stor1.length].field_0:
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                                    stor1.length--
                                                                    if not stor1.length <= stor1.length - 1:
                                                                        mem[0] = 1
                                                                        idx = (3 * stor1.length) - 3
                                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                            stor[idx + sha3(mem[0])] = 0
                                                                            mem[0] = idx + sha3(mem[0])
                                                                            s = sha3(idx + sha3(mem[0]))
                                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                stor[s] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                                            idx = idx + 3
                                                                            continue 
                                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                    if ext_code.size(whitelistAddress):
                                                                        call whitelistAddress.'
;
O' with:
                                                                             gas gas_remaining - 710 wei
                                                                            args arg1
                                                                        if ext_call.success:
    else:
        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
            if stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] >= stor1.length - 1:
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if ext_code.size(whitelistAddress):
                            call whitelistAddress.'
;
O' with:
                                 gas gas_remaining - 710 wei
                                args arg1
                            if ext_call.success:
                    else:
                        if stor1.length - 1 < stor1.length:
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                                stor1.length--
                                if not stor1.length <= stor1.length - 1:
                                    mem[0] = 1
                                    idx = (3 * stor1.length) - 3
                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                        stor[idx + sha3(mem[0])] = 0
                                        mem[0] = idx + sha3(mem[0])
                                        s = sha3(idx + sha3(mem[0]))
                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        stor[idx + sha3(mem[0]) + 1] = 0
                                        stor[idx + sha3(mem[0]) + 2] = 0
                                        idx = idx + 3
                                        continue 
                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                if ext_code.size(whitelistAddress):
                                    call whitelistAddress.'
;
O' with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    if ext_call.success:
            else:
                if 3 < calldata.size:
                    if 2 < calldata.size:
                        if 1 < calldata.size:
                            if 0 < calldata.size:
                                stor1.length++
                                if not stor1.length <= stor1.length + 1:
                                    mem[0] = 1
                                    idx = (3 * stor1.length) + 3
                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                        stor[idx + sha3(mem[0])] = 0
                                        mem[0] = idx + sha3(mem[0])
                                        s = sha3(idx + sha3(mem[0]))
                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        stor[idx + sha3(mem[0]) + 1] = 0
                                        stor[idx + sha3(mem[0]) + 2] = 0
                                        idx = idx + 3
                                        continue 
                                if this.address == this.address:
                                    if stor1.length < stor1.length:
                                        stor1[stor1.length].field_256 = multiAccessRequired
                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                        if stor1[stor1.length].field_256 > 1:
                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                            stor1[stor1.length].field_256--
                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                        if stor1.length >= stor1.length - 1:
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                idx = (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                    stor[idx + sha3(mem[0])] = 0
                                                    mem[0] = idx + sha3(mem[0])
                                                    s = sha3(idx + sha3(mem[0]))
                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                    idx = idx + 3
                                                    continue 
                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                            if ext_code.size(whitelistAddress):
                                                call whitelistAddress.'
;
O' with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                if ext_call.success:
                                        else:
                                            if stor1.length - 1 < stor1.length:
                                                if stor1.length < stor1.length:
                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                    if not stor1[stor1.length].field_0:
                                                        idx = 0
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = 0
                                                        idx = 0
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                            s = s + 1
                                                            idx = idx + 1
                                                            continue 
                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                    stor1.length--
                                                    if not stor1.length <= stor1.length - 1:
                                                        mem[0] = 1
                                                        idx = (3 * stor1.length) - 3
                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                            stor[idx + sha3(mem[0])] = 0
                                                            mem[0] = idx + sha3(mem[0])
                                                            s = sha3(idx + sha3(mem[0]))
                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                stor[s] = 0
                                                                s = s + 1
                                                                continue 
                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                            idx = idx + 3
                                                            continue 
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                    if ext_code.size(whitelistAddress):
                                                        call whitelistAddress.'
;
O' with:
                                                             gas gas_remaining - 710 wei
                                                            args arg1
                                                        if ext_call.success:
                                else:
                                    if address(stor2.length) == this.address:
                                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                            if stor1.length < stor1.length:
                                                stor1[stor1.length].field_256 = sub_f134b351
                                                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                if stor1[stor1.length].field_256 > 1:
                                                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                    stor1[stor1.length].field_256--
                                                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                idx = idx + 1
                                                                continue 
                                                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                if stor1.length >= stor1.length - 1:
                                                    stor1.length--
                                                    if not stor1.length <= stor1.length - 1:
                                                        mem[0] = 1
                                                        idx = (3 * stor1.length) - 3
                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                            stor[idx + sha3(mem[0])] = 0
                                                            mem[0] = idx + sha3(mem[0])
                                                            s = sha3(idx + sha3(mem[0]))
                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                stor[s] = 0
                                                                s = s + 1
                                                                continue 
                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                            idx = idx + 3
                                                            continue 
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                    if ext_code.size(whitelistAddress):
                                                        call whitelistAddress.'
;
O' with:
                                                             gas gas_remaining - 710 wei
                                                            args arg1
                                                        if ext_call.success:
                                                else:
                                                    if stor1.length - 1 < stor1.length:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                            if not stor1[stor1.length].field_0:
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = 0
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                    s = s + 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                idx = stor1[stor1.length].field_0 + 31 / 32
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                            stor0[stor1[stor1.length].field_0] = stor1.length
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.'
;
O' with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                        else:
                                            if stor1.length < stor1.length:
                                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                if stor1[stor1.length].field_256 > 1:
                                                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                    stor1[stor1.length].field_256--
                                                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                idx = idx + 1
                                                                continue 
                                                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                if stor1.length >= stor1.length - 1:
                                                    stor1.length--
                                                    if not stor1.length <= stor1.length - 1:
                                                        mem[0] = 1
                                                        idx = (3 * stor1.length) - 3
                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                            stor[idx + sha3(mem[0])] = 0
                                                            mem[0] = idx + sha3(mem[0])
                                                            s = sha3(idx + sha3(mem[0]))
                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                stor[s] = 0
                                                                s = s + 1
                                                                continue 
                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                            idx = idx + 3
                                                            continue 
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                    if ext_code.size(whitelistAddress):
                                                        call whitelistAddress.'
;
O' with:
                                                             gas gas_remaining - 710 wei
                                                            args arg1
                                                        if ext_call.success:
                                                else:
                                                    if stor1.length - 1 < stor1.length:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                            if not stor1[stor1.length].field_0:
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = 0
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                    s = s + 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                idx = stor1[stor1.length].field_0 + 31 / 32
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                            stor0[stor1[stor1.length].field_0] = stor1.length
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.'
;
O' with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                    else:
                                        if ext_code.size(whitelistAddress):
                                            call whitelistAddress.isWhitelisted(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if not ext_call.return_data[0]:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_256 = multiAccessRequired
                                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                        if stor1[stor1.length].field_256 > 1:
                                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            stor1[stor1.length].field_256--
                                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        if stor1.length >= stor1.length - 1:
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.'
;
O' with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                                        else:
                                                            if stor1.length - 1 < stor1.length:
                                                                if stor1.length < stor1.length:
                                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                    if not stor1[stor1.length].field_0:
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                                    stor1.length--
                                                                    if not stor1.length <= stor1.length - 1:
                                                                        mem[0] = 1
                                                                        idx = (3 * stor1.length) - 3
                                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                            stor[idx + sha3(mem[0])] = 0
                                                                            mem[0] = idx + sha3(mem[0])
                                                                            s = sha3(idx + sha3(mem[0]))
                                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                stor[s] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                                            idx = idx + 3
                                                                            continue 
                                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                    if ext_code.size(whitelistAddress):
                                                                        call whitelistAddress.'
;
O' with:
                                                                             gas gas_remaining - 710 wei
                                                                            args arg1
                                                                        if ext_call.success:
                                                else:
                                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_256 = sub_f134b351
                                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                            if stor1[stor1.length].field_256 > 1:
                                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                                stor1[stor1.length].field_256--
                                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            if stor1.length >= stor1.length - 1:
                                                                stor1.length--
                                                                if not stor1.length <= stor1.length - 1:
                                                                    mem[0] = 1
                                                                    idx = (3 * stor1.length) - 3
                                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                        stor[idx + sha3(mem[0])] = 0
                                                                        mem[0] = idx + sha3(mem[0])
                                                                        s = sha3(idx + sha3(mem[0]))
                                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                            stor[s] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                                        idx = idx + 3
                                                                        continue 
                                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                if ext_code.size(whitelistAddress):
                                                                    call whitelistAddress.'
;
O' with:
                                                                         gas gas_remaining - 710 wei
                                                                        args arg1
                                                                    if ext_call.success:
                                                            else:
                                                                if stor1.length - 1 < stor1.length:
                                                                    if stor1.length < stor1.length:
                                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                        if not stor1[stor1.length].field_0:
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            s = 0
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                                s = s + 1
                                                                                idx = idx + 1
                                                                                continue 
                                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                                        stor1.length--
                                                                        if not stor1.length <= stor1.length - 1:
                                                                            mem[0] = 1
                                                                            idx = (3 * stor1.length) - 3
                                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                                stor[idx + sha3(mem[0])] = 0
                                                                                mem[0] = idx + sha3(mem[0])
                                                                                s = sha3(idx + sha3(mem[0]))
                                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                    stor[s] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                                idx = idx + 3
                                                                                continue 
                                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                        if ext_code.size(whitelistAddress):
                                                                            call whitelistAddress.'
;
O' with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args arg1
                                                                            if ext_call.success:
                                                    else:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                            if stor1[stor1.length].field_256 > 1:
                                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                                stor1[stor1.length].field_256--
                                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            if stor1.length >= stor1.length - 1:
                                                                stor1.length--
                                                                if not stor1.length <= stor1.length - 1:
                                                                    mem[0] = 1
                                                                    idx = (3 * stor1.length) - 3
                                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                        stor[idx + sha3(mem[0])] = 0
                                                                        mem[0] = idx + sha3(mem[0])
                                                                        s = sha3(idx + sha3(mem[0]))
                                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                            stor[s] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                                        idx = idx + 3
                                                                        continue 
                                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                if ext_code.size(whitelistAddress):
                                                                    call whitelistAddress.'
;
O' with:
                                                                         gas gas_remaining - 710 wei
                                                                        args arg1
                                                                    if ext_call.success:
                                                            else:
                                                                if stor1.length - 1 < stor1.length:
                                                                    if stor1.length < stor1.length:
                                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                        if not stor1[stor1.length].field_0:
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            s = 0
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                                s = s + 1
                                                                                idx = idx + 1
                                                                                continue 
                                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                                        stor1.length--
                                                                        if not stor1.length <= stor1.length - 1:
                                                                            mem[0] = 1
                                                                            idx = (3 * stor1.length) - 3
                                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                                stor[idx + sha3(mem[0])] = 0
                                                                                mem[0] = idx + sha3(mem[0])
                                                                                s = sha3(idx + sha3(mem[0]))
                                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                    stor[s] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                                idx = idx + 3
                                                                                continue 
                                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                        if ext_code.size(whitelistAddress):
                                                                            call whitelistAddress.'
;
O' with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args arg1
                                                                            if ext_call.success:
    revert
}

function sub_6ab25004(?) {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor6[address(msg.sender)].field_0 <= 0:
    mem[ceil32(calldata.size) + 128] = address(this.address)
    mem[ceil32(calldata.size) + 148 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
    mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 180 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
    if not stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                    if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                        if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                            while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] >= stor1.length - 1:
                    stor1.length--
                    if not stor1.length <= stor1.length - 1:
                        mem[0] = 1
                        idx = (3 * stor1.length) - 3
                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                            stor[idx + sha3(mem[0])] = 0
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor[idx + sha3(mem[0]) + 1] = 0
                            stor[idx + sha3(mem[0]) + 2] = 0
                            idx = idx + 3
                            continue 
                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                    if ext_code.size(whitelistAddress):
                        call whitelistAddress.remove(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
                else:
                    if stor1.length - 1 < stor1.length:
                        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                            if not stor1[stor1.length].field_0:
                                idx = 0
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor1[stor1.length].field_0 + 31 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                            stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) - 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                            if ext_code.size(whitelistAddress):
                                call whitelistAddress.remove(address rg1) with:
                                     gas gas_remaining - 710 wei
                                    args arg1
                                if ext_call.success:
        else:
            if 3 < calldata.size:
                if 2 < calldata.size:
                    if 1 < calldata.size:
                        if 0 < calldata.size:
                            stor1.length++
                            if not stor1.length <= stor1.length + 1:
                                mem[0] = 1
                                idx = (3 * stor1.length) + 3
                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                    stor[idx + sha3(mem[0])] = 0
                                    mem[0] = idx + sha3(mem[0])
                                    s = sha3(idx + sha3(mem[0]))
                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor[idx + sha3(mem[0]) + 1] = 0
                                    stor[idx + sha3(mem[0]) + 2] = 0
                                    idx = idx + 3
                                    continue 
                            if this.address == this.address:
                                if stor1.length < stor1.length:
                                    stor1[stor1.length].field_256 = multiAccessRequired
                                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                    if stor1[stor1.length].field_256 > 1:
                                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                        stor1[stor1.length].field_256--
                                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                    if stor1.length >= stor1.length - 1:
                                        stor1.length--
                                        if not stor1.length <= stor1.length - 1:
                                            mem[0] = 1
                                            idx = (3 * stor1.length) - 3
                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                stor[idx + sha3(mem[0])] = 0
                                                mem[0] = idx + sha3(mem[0])
                                                s = sha3(idx + sha3(mem[0]))
                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                idx = idx + 3
                                                continue 
                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                        if ext_code.size(whitelistAddress):
                                            call whitelistAddress.remove(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args arg1
                                            if ext_call.success:
                                    else:
                                        if stor1.length - 1 < stor1.length:
                                            if stor1.length < stor1.length:
                                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                if not stor1[stor1.length].field_0:
                                                    idx = 0
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 0
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                        s = s + 1
                                                        idx = idx + 1
                                                        continue 
                                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                stor0[stor1[stor1.length].field_0] = stor1.length
                                                stor1.length--
                                                if not stor1.length <= stor1.length - 1:
                                                    mem[0] = 1
                                                    idx = (3 * stor1.length) - 3
                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                        stor[idx + sha3(mem[0])] = 0
                                                        mem[0] = idx + sha3(mem[0])
                                                        s = sha3(idx + sha3(mem[0]))
                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                        idx = idx + 3
                                                        continue 
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                if ext_code.size(whitelistAddress):
                                                    call whitelistAddress.remove(address rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args arg1
                                                    if ext_call.success:
                            else:
                                if address(stor2.length) == this.address:
                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                        if stor1.length < stor1.length:
                                            stor1[stor1.length].field_256 = sub_f134b351
                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                            if stor1[stor1.length].field_256 > 1:
                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                stor1[stor1.length].field_256--
                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                            if stor1.length >= stor1.length - 1:
                                                stor1.length--
                                                if not stor1.length <= stor1.length - 1:
                                                    mem[0] = 1
                                                    idx = (3 * stor1.length) - 3
                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                        stor[idx + sha3(mem[0])] = 0
                                                        mem[0] = idx + sha3(mem[0])
                                                        s = sha3(idx + sha3(mem[0]))
                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                        idx = idx + 3
                                                        continue 
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                if ext_code.size(whitelistAddress):
                                                    call whitelistAddress.remove(address rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args arg1
                                                    if ext_call.success:
                                            else:
                                                if stor1.length - 1 < stor1.length:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                        if not stor1[stor1.length].field_0:
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = 0
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                s = s + 1
                                                                idx = idx + 1
                                                                continue 
                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                        stor1.length--
                                                        if not stor1.length <= stor1.length - 1:
                                                            mem[0] = 1
                                                            idx = (3 * stor1.length) - 3
                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                stor[idx + sha3(mem[0])] = 0
                                                                mem[0] = idx + sha3(mem[0])
                                                                s = sha3(idx + sha3(mem[0]))
                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                    stor[s] = 0
                                                                    s = s + 1
                                                                    continue 
                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                idx = idx + 3
                                                                continue 
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                        if ext_code.size(whitelistAddress):
                                                            call whitelistAddress.remove(address rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args arg1
                                                            if ext_call.success:
                                    else:
                                        if stor1.length < stor1.length:
                                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                            if stor1[stor1.length].field_256 > 1:
                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                stor1[stor1.length].field_256--
                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                            if stor1.length >= stor1.length - 1:
                                                stor1.length--
                                                if not stor1.length <= stor1.length - 1:
                                                    mem[0] = 1
                                                    idx = (3 * stor1.length) - 3
                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                        stor[idx + sha3(mem[0])] = 0
                                                        mem[0] = idx + sha3(mem[0])
                                                        s = sha3(idx + sha3(mem[0]))
                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                            stor[s] = 0
                                                            s = s + 1
                                                            continue 
                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                        idx = idx + 3
                                                        continue 
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                if ext_code.size(whitelistAddress):
                                                    call whitelistAddress.remove(address rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args arg1
                                                    if ext_call.success:
                                            else:
                                                if stor1.length - 1 < stor1.length:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                        if not stor1[stor1.length].field_0:
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = 0
                                                            idx = 0
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                s = s + 1
                                                                idx = idx + 1
                                                                continue 
                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                        stor1.length--
                                                        if not stor1.length <= stor1.length - 1:
                                                            mem[0] = 1
                                                            idx = (3 * stor1.length) - 3
                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                stor[idx + sha3(mem[0])] = 0
                                                                mem[0] = idx + sha3(mem[0])
                                                                s = sha3(idx + sha3(mem[0]))
                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                    stor[s] = 0
                                                                    s = s + 1
                                                                    continue 
                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                idx = idx + 3
                                                                continue 
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                        if ext_code.size(whitelistAddress):
                                                            call whitelistAddress.remove(address rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args arg1
                                                            if ext_call.success:
                                else:
                                    if ext_code.size(whitelistAddress):
                                        call whitelistAddress.isWhitelisted(address rg1) with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        if ext_call.success:
                                            if not ext_call.return_data[0]:
                                                if stor1.length < stor1.length:
                                                    stor1[stor1.length].field_256 = multiAccessRequired
                                                    stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                    if stor1[stor1.length].field_256 > 1:
                                                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        stor1[stor1.length].field_256--
                                                        if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                            stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                            if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                    if stor1.length >= stor1.length - 1:
                                                        stor1.length--
                                                        if not stor1.length <= stor1.length - 1:
                                                            mem[0] = 1
                                                            idx = (3 * stor1.length) - 3
                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                stor[idx + sha3(mem[0])] = 0
                                                                mem[0] = idx + sha3(mem[0])
                                                                s = sha3(idx + sha3(mem[0]))
                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                    stor[s] = 0
                                                                    s = s + 1
                                                                    continue 
                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                idx = idx + 3
                                                                continue 
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                        if ext_code.size(whitelistAddress):
                                                            call whitelistAddress.remove(address rg1) with:
                                                                 gas gas_remaining - 710 wei
                                                                args arg1
                                                            if ext_call.success:
                                                    else:
                                                        if stor1.length - 1 < stor1.length:
                                                            if stor1.length < stor1.length:
                                                                stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                if not stor1[stor1.length].field_0:
                                                                    idx = 0
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    s = 0
                                                                    idx = 0
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                        s = s + 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                stor0[stor1[stor1.length].field_0] = stor1.length
                                                                stor1.length--
                                                                if not stor1.length <= stor1.length - 1:
                                                                    mem[0] = 1
                                                                    idx = (3 * stor1.length) - 3
                                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                        stor[idx + sha3(mem[0])] = 0
                                                                        mem[0] = idx + sha3(mem[0])
                                                                        s = sha3(idx + sha3(mem[0]))
                                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                            stor[s] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                                        idx = idx + 3
                                                                        continue 
                                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                if ext_code.size(whitelistAddress):
                                                                    call whitelistAddress.remove(address rg1) with:
                                                                         gas gas_remaining - 710 wei
                                                                        args arg1
                                                                    if ext_call.success:
                                            else:
                                                if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_256 = sub_f134b351
                                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                        if stor1[stor1.length].field_256 > 1:
                                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            stor1[stor1.length].field_256--
                                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        if stor1.length >= stor1.length - 1:
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.remove(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                                        else:
                                                            if stor1.length - 1 < stor1.length:
                                                                if stor1.length < stor1.length:
                                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                    if not stor1[stor1.length].field_0:
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                                    stor1.length--
                                                                    if not stor1.length <= stor1.length - 1:
                                                                        mem[0] = 1
                                                                        idx = (3 * stor1.length) - 3
                                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                            stor[idx + sha3(mem[0])] = 0
                                                                            mem[0] = idx + sha3(mem[0])
                                                                            s = sha3(idx + sha3(mem[0]))
                                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                stor[s] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                                            idx = idx + 3
                                                                            continue 
                                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                    if ext_code.size(whitelistAddress):
                                                                        call whitelistAddress.remove(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args arg1
                                                                        if ext_call.success:
                                                else:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                        if stor1[stor1.length].field_256 > 1:
                                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            stor1[stor1.length].field_256--
                                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        if stor1.length >= stor1.length - 1:
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.remove(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                                        else:
                                                            if stor1.length - 1 < stor1.length:
                                                                if stor1.length < stor1.length:
                                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                    if not stor1[stor1.length].field_0:
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                                    stor1.length--
                                                                    if not stor1.length <= stor1.length - 1:
                                                                        mem[0] = 1
                                                                        idx = (3 * stor1.length) - 3
                                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                            stor[idx + sha3(mem[0])] = 0
                                                                            mem[0] = idx + sha3(mem[0])
                                                                            s = sha3(idx + sha3(mem[0]))
                                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                stor[s] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                                            idx = idx + 3
                                                                            continue 
                                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                    if ext_code.size(whitelistAddress):
                                                                        call whitelistAddress.remove(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args arg1
                                                                        if ext_call.success:
    else:
        if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
            if stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                if stor(floor32(stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor6', 6))]) + ('array', ('mul', 3, ('stor', 256, 0, ('map', ('data', ('mask_shl', 160, 0, 0, 'address'), ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1)))[stor6[address(msg.sender)].field_0 % 32]:
            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]:
                if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                    if stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 > 1:
                        emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                        stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256--
                        if stor6[address(msg.sender)].field_0 >= stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0:
                            stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor6[address(msg.sender)].field_0 + 1
                            if not stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                    stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor6[address(msg.sender)].field_0 < stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0
                        stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('map', ('data', 'address', ('call.data', 0, ('mask_shl', 251, 5, 0, 'calldatasize')), ('mem', ('range', ('add', 148, ('mask_shl', 251, 5, 0, ('add', 31, 'calldatasize')), ('mask_shl', 251, 5, 0, 'calldatasize')), ('mask_shl', 5, 0, 0, 'calldatasize')))), ('name', 'stor0', 0)))), ('name', 'stor1', 1))].field_0
                    emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                    if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] >= stor1.length - 1:
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            mem[0] = 1
                            idx = (3 * stor1.length) - 3
                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                stor[idx + sha3(mem[0])] = 0
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor[idx + sha3(mem[0]) + 1] = 0
                                stor[idx + sha3(mem[0]) + 2] = 0
                                idx = idx + 3
                                continue 
                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                        if ext_code.size(whitelistAddress):
                            call whitelistAddress.remove(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args arg1
                            if ext_call.success:
                    else:
                        if stor1.length - 1 < stor1.length:
                            if stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] < stor1.length:
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 = stor1[stor1.length].field_0
                                if not stor1[stor1.length].field_0:
                                    idx = 0
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 0
                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                        stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor1[stor1.length].field_0 + 31 / 32
                                    while stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_0 + 31 / 32 > idx:
                                        uint8(stor1[(3 * stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]) + idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_256 = stor1[stor1.length].field_0
                                stor1[stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]].field_512 = stor1[stor1.length].field_0
                                stor0[stor1[stor1.length].field_0] = stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]]
                                stor1.length--
                                if not stor1.length <= stor1.length - 1:
                                    mem[0] = 1
                                    idx = (3 * stor1.length) - 3
                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                        stor[idx + sha3(mem[0])] = 0
                                        mem[0] = idx + sha3(mem[0])
                                        s = sha3(idx + sha3(mem[0]))
                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        stor[idx + sha3(mem[0]) + 1] = 0
                                        stor[idx + sha3(mem[0]) + 2] = 0
                                        idx = idx + 3
                                        continue 
                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                if ext_code.size(whitelistAddress):
                                    call whitelistAddress.remove(address rg1) with:
                                         gas gas_remaining - 710 wei
                                        args arg1
                                    if ext_call.success:
            else:
                if 3 < calldata.size:
                    if 2 < calldata.size:
                        if 1 < calldata.size:
                            if 0 < calldata.size:
                                stor1.length++
                                if not stor1.length <= stor1.length + 1:
                                    mem[0] = 1
                                    idx = (3 * stor1.length) + 3
                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                        stor[idx + sha3(mem[0])] = 0
                                        mem[0] = idx + sha3(mem[0])
                                        s = sha3(idx + sha3(mem[0]))
                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        stor[idx + sha3(mem[0]) + 1] = 0
                                        stor[idx + sha3(mem[0]) + 2] = 0
                                        idx = idx + 3
                                        continue 
                                if this.address == this.address:
                                    if stor1.length < stor1.length:
                                        stor1[stor1.length].field_256 = multiAccessRequired
                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                        if stor1[stor1.length].field_256 > 1:
                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                            stor1[stor1.length].field_256--
                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                        if stor1.length >= stor1.length - 1:
                                            stor1.length--
                                            if not stor1.length <= stor1.length - 1:
                                                mem[0] = 1
                                                idx = (3 * stor1.length) - 3
                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                    stor[idx + sha3(mem[0])] = 0
                                                    mem[0] = idx + sha3(mem[0])
                                                    s = sha3(idx + sha3(mem[0]))
                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                    idx = idx + 3
                                                    continue 
                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                            if ext_code.size(whitelistAddress):
                                                call whitelistAddress.remove(address rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args arg1
                                                if ext_call.success:
                                        else:
                                            if stor1.length - 1 < stor1.length:
                                                if stor1.length < stor1.length:
                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                    if not stor1[stor1.length].field_0:
                                                        idx = 0
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = 0
                                                        idx = 0
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                            s = s + 1
                                                            idx = idx + 1
                                                            continue 
                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                    stor1.length--
                                                    if not stor1.length <= stor1.length - 1:
                                                        mem[0] = 1
                                                        idx = (3 * stor1.length) - 3
                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                            stor[idx + sha3(mem[0])] = 0
                                                            mem[0] = idx + sha3(mem[0])
                                                            s = sha3(idx + sha3(mem[0]))
                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                stor[s] = 0
                                                                s = s + 1
                                                                continue 
                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                            idx = idx + 3
                                                            continue 
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                    if ext_code.size(whitelistAddress):
                                                        call whitelistAddress.remove(address rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args arg1
                                                        if ext_call.success:
                                else:
                                    if address(stor2.length) == this.address:
                                        if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                            if stor1.length < stor1.length:
                                                stor1[stor1.length].field_256 = sub_f134b351
                                                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                if stor1[stor1.length].field_256 > 1:
                                                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                    stor1[stor1.length].field_256--
                                                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                idx = idx + 1
                                                                continue 
                                                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                if stor1.length >= stor1.length - 1:
                                                    stor1.length--
                                                    if not stor1.length <= stor1.length - 1:
                                                        mem[0] = 1
                                                        idx = (3 * stor1.length) - 3
                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                            stor[idx + sha3(mem[0])] = 0
                                                            mem[0] = idx + sha3(mem[0])
                                                            s = sha3(idx + sha3(mem[0]))
                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                stor[s] = 0
                                                                s = s + 1
                                                                continue 
                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                            idx = idx + 3
                                                            continue 
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                    if ext_code.size(whitelistAddress):
                                                        call whitelistAddress.remove(address rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args arg1
                                                        if ext_call.success:
                                                else:
                                                    if stor1.length - 1 < stor1.length:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                            if not stor1[stor1.length].field_0:
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = 0
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                    s = s + 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                idx = stor1[stor1.length].field_0 + 31 / 32
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                            stor0[stor1[stor1.length].field_0] = stor1.length
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.remove(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                        else:
                                            if stor1.length < stor1.length:
                                                stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                                stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                if stor1[stor1.length].field_256 > 1:
                                                    emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                    stor1[stor1.length].field_256--
                                                    if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                        stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                        if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                            idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                idx = idx + 1
                                                                continue 
                                                        require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                    stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                if stor1.length >= stor1.length - 1:
                                                    stor1.length--
                                                    if not stor1.length <= stor1.length - 1:
                                                        mem[0] = 1
                                                        idx = (3 * stor1.length) - 3
                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                            stor[idx + sha3(mem[0])] = 0
                                                            mem[0] = idx + sha3(mem[0])
                                                            s = sha3(idx + sha3(mem[0]))
                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                stor[s] = 0
                                                                s = s + 1
                                                                continue 
                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                            idx = idx + 3
                                                            continue 
                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                    if ext_code.size(whitelistAddress):
                                                        call whitelistAddress.remove(address rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args arg1
                                                        if ext_call.success:
                                                else:
                                                    if stor1.length - 1 < stor1.length:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                            if not stor1[stor1.length].field_0:
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = 0
                                                                idx = 0
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                    s = s + 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                idx = stor1[stor1.length].field_0 + 31 / 32
                                                                while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                    uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                            stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                            stor0[stor1[stor1.length].field_0] = stor1.length
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.remove(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                    else:
                                        if ext_code.size(whitelistAddress):
                                            call whitelistAddress.isWhitelisted(address rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            if ext_call.success:
                                                if not ext_call.return_data[0]:
                                                    if stor1.length < stor1.length:
                                                        stor1[stor1.length].field_256 = multiAccessRequired
                                                        stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                        if stor1[stor1.length].field_256 > 1:
                                                            emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            stor1[stor1.length].field_256--
                                                            if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                    idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                    while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                        stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                        idx = idx + 1
                                                                        continue 
                                                                require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                            stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                        emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                        if stor1.length >= stor1.length - 1:
                                                            stor1.length--
                                                            if not stor1.length <= stor1.length - 1:
                                                                mem[0] = 1
                                                                idx = (3 * stor1.length) - 3
                                                                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                    stor[idx + sha3(mem[0])] = 0
                                                                    mem[0] = idx + sha3(mem[0])
                                                                    s = sha3(idx + sha3(mem[0]))
                                                                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                        stor[s] = 0
                                                                        s = s + 1
                                                                        continue 
                                                                    stor[idx + sha3(mem[0]) + 1] = 0
                                                                    stor[idx + sha3(mem[0]) + 2] = 0
                                                                    idx = idx + 3
                                                                    continue 
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                            if ext_code.size(whitelistAddress):
                                                                call whitelistAddress.remove(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args arg1
                                                                if ext_call.success:
                                                        else:
                                                            if stor1.length - 1 < stor1.length:
                                                                if stor1.length < stor1.length:
                                                                    stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                    if not stor1[stor1.length].field_0:
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length].field_0 + 31 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                    stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                    stor0[stor1[stor1.length].field_0] = stor1.length
                                                                    stor1.length--
                                                                    if not stor1.length <= stor1.length - 1:
                                                                        mem[0] = 1
                                                                        idx = (3 * stor1.length) - 3
                                                                        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                            stor[idx + sha3(mem[0])] = 0
                                                                            mem[0] = idx + sha3(mem[0])
                                                                            s = sha3(idx + sha3(mem[0]))
                                                                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                stor[s] = 0
                                                                                s = s + 1
                                                                                continue 
                                                                            stor[idx + sha3(mem[0]) + 1] = 0
                                                                            stor[idx + sha3(mem[0]) + 2] = 0
                                                                            idx = idx + 3
                                                                            continue 
                                                                    stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                    if ext_code.size(whitelistAddress):
                                                                        call whitelistAddress.remove(address rg1) with:
                                                                             gas gas_remaining - 710 wei
                                                                            args arg1
                                                                        if ext_call.success:
                                                else:
                                                    if sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224] <= 0:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_256 = sub_f134b351
                                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                            if stor1[stor1.length].field_256 > 1:
                                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                                stor1[stor1.length].field_256--
                                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            if stor1.length >= stor1.length - 1:
                                                                stor1.length--
                                                                if not stor1.length <= stor1.length - 1:
                                                                    mem[0] = 1
                                                                    idx = (3 * stor1.length) - 3
                                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                        stor[idx + sha3(mem[0])] = 0
                                                                        mem[0] = idx + sha3(mem[0])
                                                                        s = sha3(idx + sha3(mem[0]))
                                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                            stor[s] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                                        idx = idx + 3
                                                                        continue 
                                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                if ext_code.size(whitelistAddress):
                                                                    call whitelistAddress.remove(address rg1) with:
                                                                         gas gas_remaining - 710 wei
                                                                        args arg1
                                                                    if ext_call.success:
                                                            else:
                                                                if stor1.length - 1 < stor1.length:
                                                                    if stor1.length < stor1.length:
                                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                        if not stor1[stor1.length].field_0:
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            s = 0
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                                s = s + 1
                                                                                idx = idx + 1
                                                                                continue 
                                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                                        stor1.length--
                                                                        if not stor1.length <= stor1.length - 1:
                                                                            mem[0] = 1
                                                                            idx = (3 * stor1.length) - 3
                                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                                stor[idx + sha3(mem[0])] = 0
                                                                                mem[0] = idx + sha3(mem[0])
                                                                                s = sha3(idx + sha3(mem[0]))
                                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                    stor[s] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                                idx = idx + 3
                                                                                continue 
                                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                        if ext_code.size(whitelistAddress):
                                                                            call whitelistAddress.remove(address rg1) with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args arg1
                                                                            if ext_call.success:
                                                    else:
                                                        if stor1.length < stor1.length:
                                                            stor1[stor1.length].field_256 = sub_494177ba[(Mask(8, 248, mem[128]) >> 224) + (Mask(8, 248, mem[129]) >> 232) + (Mask(8, 248, mem[130]) >> 240) + call.data[3 len 1] << 224]
                                                            stor1[stor1.length].field_512 = sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32])
                                                            stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = stor1.length
                                                            if stor1[stor1.length].field_256 > 1:
                                                                emit Confirmation(0, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                                stor1[stor1.length].field_256--
                                                                if stor6[address(msg.sender)].field_0 >= stor1[stor1.length].field_0:
                                                                    stor1[stor1.length].field_0 = stor6[address(msg.sender)].field_0 + 1
                                                                    if not stor1[stor1.length].field_0 <= stor6[address(msg.sender)].field_0 + 1:
                                                                        idx = stor6[address(msg.sender)].field_0 + 32 / 32
                                                                        while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                            stor1[(3 * stor1.length) + idx].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                    require stor6[address(msg.sender)].field_0 < stor1[stor1.length].field_0
                                                                stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0 = 256^stor6[address(msg.sender)].field_0 % 32 or !(255 * 256^stor6[address(msg.sender)].field_0 % 32) and stor[Mask(251, 0, stor6[address(msg.sender)].field_5) + ('array', ('mul', 3, ('stor', ('length', ('name', 'stor1', 1)))), ('name', 'stor1', 1))].field_0
                                                            emit Confirmation(1, msg.sender, sha3(this.address, call.data[0 len floor32(calldata.size)], mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]));
                                                            if stor1.length >= stor1.length - 1:
                                                                stor1.length--
                                                                if not stor1.length <= stor1.length - 1:
                                                                    mem[0] = 1
                                                                    idx = (3 * stor1.length) - 3
                                                                    while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                        stor[idx + sha3(mem[0])] = 0
                                                                        mem[0] = idx + sha3(mem[0])
                                                                        s = sha3(idx + sha3(mem[0]))
                                                                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                            stor[s] = 0
                                                                            s = s + 1
                                                                            continue 
                                                                        stor[idx + sha3(mem[0]) + 1] = 0
                                                                        stor[idx + sha3(mem[0]) + 2] = 0
                                                                        idx = idx + 3
                                                                        continue 
                                                                stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                if ext_code.size(whitelistAddress):
                                                                    call whitelistAddress.remove(address rg1) with:
                                                                         gas gas_remaining - 710 wei
                                                                        args arg1
                                                                    if ext_call.success:
                                                            else:
                                                                if stor1.length - 1 < stor1.length:
                                                                    if stor1.length < stor1.length:
                                                                        stor1[stor1.length].field_0 = stor1[stor1.length].field_0
                                                                        if not stor1[stor1.length].field_0:
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            s = 0
                                                                            idx = 0
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                stor1[(3 * stor1.length) + s].field_0 = stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) - 3)].field_0
                                                                                s = s + 1
                                                                                idx = idx + 1
                                                                                continue 
                                                                            idx = stor1[stor1.length].field_0 + 31 / 32
                                                                            while stor1[stor1.length].field_0 + 31 / 32 > idx:
                                                                                uint8(stor1[(3 * stor1.length) + idx].field_0) = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                        stor1[stor1.length].field_256 = stor1[stor1.length].field_0
                                                                        stor1[stor1.length].field_512 = stor1[stor1.length].field_0
                                                                        stor0[stor1[stor1.length].field_0] = stor1.length
                                                                        stor1.length--
                                                                        if not stor1.length <= stor1.length - 1:
                                                                            mem[0] = 1
                                                                            idx = (3 * stor1.length) - 3
                                                                            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                                                                                stor[idx + sha3(mem[0])] = 0
                                                                                mem[0] = idx + sha3(mem[0])
                                                                                s = sha3(idx + sha3(mem[0]))
                                                                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])] + 31 / 32) > s:
                                                                                    stor[s] = 0
                                                                                    s = s + 1
                                                                                    continue 
                                                                                stor[idx + sha3(mem[0]) + 1] = 0
                                                                                stor[idx + sha3(mem[0]) + 2] = 0
                                                                                idx = idx + 3
                                                                                continue 
                                                                        stor0[this.address][call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 148 len calldata.size % 32]] = 0
                                                                        if ext_code.size(whitelistAddress):
                                                                            call whitelistAddress.remove(address rg1) with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args arg1
                                                                            if ext_call.success:
    revert
}



}
