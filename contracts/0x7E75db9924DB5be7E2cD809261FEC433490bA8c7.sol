contract main {


// =======================  Init code  ======================


array of struct stor1;
uint256 stor4;
uint256 storB10E;
uint256 storB10E;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor1.length = 4
    if not stor1.length <= 4:
        idx = 8
        while 2 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            idx = idx + 1
            continue 
    require 0 < stor1.length
    stor[code.data[8412 len 32]] = 7038329
    require 1 < stor1.length
    stor[code.data[8380 len 32]] = 508440638821
    require 2 < stor1.length
    stor[code.data[8348 len 32]] = 'model_id'
    require 3 < stor1.length
    storB10E = 'model_type'
    require 0 < stor1.length
    stor1[code.data[8412 len 32]].field_0 = 126943972912743
    require 1 < stor1.length
    stor1[code.data[8380 len 32]].field_0 = 126943972912743
    require 2 < stor1.length
    stor1[code.data[8348 len 32]].field_0 = 'polymorphic_reference'
    require 3 < stor1.length
    storB10E = 'polymorphic_type'
    return code.data[548 len 7800]
}



// =====================  Runtime code  =====================


const get_default_keys = mem[736 len 256]


address dbAddress;
uint256 stor0;
address coordinatorAddress;
uint256 stor4;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor113391041922613005480876677063694063527542085603776200688243066721397431073292;

function coordinator() payable {
    return address(coordinatorAddress)
}

function sub_1e3dbb27(?) payable {
    require arg1 < stor3.length
    require arg2 < 2
    return stor[arg2 + (2 * arg1) + ('name', 'stor3', 3)]
}

function db() payable {
    return address(dbAddress)
}

function keys(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor1.length
    require arg2 < 2
    return stor[arg2 + (2 * arg1) + ('name', 'stor1', 1)]
}

function sub_ffd1d504(?) payable {
    require arg1 < stor2.length
    require arg2 < 2
    return stor[('name', 'stor2', 2) + arg2 + (2 * arg1)]
}

function _fallback() payable {
  stop
}

function sub_e7156dbe(?) payable {
    if not address(dbAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_de778edb(?) payable {
    if msg.sender == address(coordinatorAddress):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function has_owners(uint256 arg1) payable {
    call address(dbAddress).0x25010816 with:
         gas gas_remaining - 25050 wei
        args arg1, 122558743933555
    require ext_call.success
    return ext_call.return_data[0] != 0
}

function is_destroyed(uint256 arg1) payable {
    call address(dbAddress).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args arg1, 'destroyed', 0
    require ext_call.success
    return (1 == ext_call.return_data[0])
}

function replace(address arg1) payable {
    if msg.sender == address(coordinatorAddress):
        call address(dbAddress).0xf0350c04 with:
             gas gas_remaining - 25050 wei
            args arg1
        require ext_call.success
}

function get_blocks_for(uint256 arg1) payable {
    call address(dbAddress).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args arg1, 'created_block', 0
    require ext_call.success
    call address(dbAddress).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args arg1, 'last_updated_block', 0
    return ext_call.return_data[0], ext_call.return_data[0]
}

function get_keys() payable {
    mem[96] = 0
    mem[64] = (32 * stor1.length) + 160
    mem[128] = stor1.length
    s = 160
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor1[idx]
        t = _12
        u = sha3(1) + (2 * idx)
        while _12 + 64 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _16 = mem[128]
    t = mem[64] + 64
    idx = 0
    while idx < _16:
        mem[t len 64] = mem[mem[(32 * idx) + 160] len 64]
        t = t + 64
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _14 + (64 * _16) + -mem[64] + 64
}

function get_associations() payable {
    mem[96] = 0
    mem[64] = (32 * stor2.length) + 160
    mem[128] = stor2.length
    s = 160
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor2[idx]
        t = _12
        u = sha3(2) + (2 * idx)
        while _12 + 64 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _16 = mem[128]
    t = mem[64] + 64
    idx = 0
    while idx < _16:
        mem[t len 64] = mem[mem[(32 * idx) + 160] len 64]
        t = t + 64
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _14 + (64 * _16) + -mem[64] + 64
}

function get_read_only_keys() payable {
    mem[96] = 0
    mem[64] = (32 * stor3.length) + 160
    mem[128] = stor3.length
    s = 160
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor3[idx]
        t = _12
        u = sha3(3) + (2 * idx)
        while _12 + 64 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _16 = mem[128]
    t = mem[64] + 64
    idx = 0
    while idx < _16:
        mem[t len 64] = mem[mem[(32 * idx) + 160] len 64]
        t = t + 64
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _14 + (64 * _16) + -mem[64] + 64
}

function set_reference(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    call address(dbAddress).0xcccf7a8e with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] != 0:
        call address(coordinatorAddress).0x6a030ca9 with:
             gas gas_remaining - 25050 wei
            args (Mask(232, 24, arg2) >> 24)
        require ext_call.success
        if msg.sender == ext_call.return_data[12 len 20]:
            call address(dbAddress).0x41ee903e with:
                 gas gas_remaining - 25050 wei
                args arg1, arg2
            require ext_call.success
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args arg1, arg2, arg3
            call address(dbAddress).0x41ee903e with:
                 gas gas_remaining - 25050 wei
                args arg1, 'last_updated_block'
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args arg1, 'last_updated_block', block.number
}

function add_to_association(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    call address(dbAddress).0xcccf7a8e with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] != 0:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if stor2[idx] != arg2:
                idx = idx + 1
                continue 
            require idx < stor2.length
            if stor4057[idx] != 0:
                call address(coordinatorAddress).0x6a030ca9 with:
                     gas gas_remaining - 25050 wei
                    args stor4057[idx]
                require ext_call.success
                if msg.sender == ext_call.return_data[12 len 20]:
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, arg2, arg3
                    require ext_call.success
                    call address(dbAddress).0x41ee903e with:
                         gas gas_remaining - 25050 wei
                        args arg1, 'last_updated_block'
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, 'last_updated_block', block.number
}

function is_owner(uint256 arg1, address arg2) payable {
    call address(dbAddress).0x25010816 with:
         gas gas_remaining - 25050 wei
        args arg1, 122558743933555
    require ext_call.success
    if uint8(var10005) < ext_call.return_data[0]:
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg1, 122558743933555, uint8(var12002)
        require ext_call.success
        if ext_call.return_data[12 len 20] == arg2:
            return 1
        call address(dbAddress).0x25010816 with:
             gas gas_remaining - 25050 wei
            args arg1, 122558743933555
        require ext_call.success
        s = ext_call.return_data[0]
        idx = var14005
        while uint8(idx + 1) < ext_call.return_data[0]:
            mem[164] = uint8(idx + 1)
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args arg1, 122558743933555, uint8(idx + 1)
            require ext_call.success
            if address(ext_call.return_data[0]) == arg2:
                return 1
            mem[100] = arg1
            mem[132] = 122558743933555
            call address(dbAddress).0x25010816 with:
                 gas gas_remaining - 25050 wei
                args arg1, 122558743933555
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function destroy(uint256 arg1) payable {
    call address(dbAddress).0x25010816 with:
         gas gas_remaining - 25050 wei
        args arg1, 122558743933555
    require ext_call.success
    if uint8(var10005) < ext_call.return_data[0]:
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg1, 122558743933555, uint8(var12002)
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            call address(dbAddress).0x25010816 with:
                 gas gas_remaining - 25050 wei
                args arg1, 122558743933555
            require ext_call.success
            s = ext_call.return_data[0]
            idx = var14005
            while uint8(idx + 1) < ext_call.return_data[0]:
                mem[164] = uint8(idx + 1)
                call address(dbAddress).0x58e59c32 with:
                     gas gas_remaining - 25050 wei
                    args arg1, 122558743933555, uint8(idx + 1)
                require ext_call.success
                if address(ext_call.return_data[0]) == msg.sender:
                    call address(dbAddress).0x41ee903e with:
                         gas gas_remaining - 25050 wei
                        args arg1, 'destroyed'
                    require ext_call.success
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, 'destroyed', 1
                    emit Destroy(arg1);
                mem[100] = arg1
                mem[132] = 122558743933555
                call address(dbAddress).0x25010816 with:
                     gas gas_remaining - 25050 wei
                    args arg1, 122558743933555
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            call address(dbAddress).0x41ee903e with:
                 gas gas_remaining - 25050 wei
                args arg1, 'destroyed'
            require ext_call.success
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args arg1, 'destroyed', 1
            emit Destroy(arg1);
}

function add_owner(uint256 arg1, address arg2) payable {
    call address(dbAddress).0x25010816 with:
         gas gas_remaining - 25050 wei
        args arg1, 122558743933555
    require ext_call.success
    if 0 == ext_call.return_data[0] != 0:
        call address(dbAddress).0x505fb46c with:
             gas gas_remaining - 25050 wei
            args arg1, 122558743933555, arg2
        require ext_call.success
    else:
        call address(dbAddress).0x25010816 with:
             gas gas_remaining - 25050 wei
            args arg1, 122558743933555
        require ext_call.success
        if uint8(var16005) < ext_call.return_data[0]:
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args arg1, 122558743933555, uint8(var18002)
            require ext_call.success
            if ext_call.return_data[12 len 20] == msg.sender:
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, 122558743933555, arg2
                require ext_call.success
            else:
                call address(dbAddress).0x25010816 with:
                     gas gas_remaining - 25050 wei
                    args arg1, 122558743933555
                require ext_call.success
                s = ext_call.return_data[0]
                idx = var20005
                while uint8(idx + 1) < ext_call.return_data[0]:
                    mem[164] = uint8(idx + 1)
                    call address(dbAddress).0x58e59c32 with:
                         gas gas_remaining - 25050 wei
                        args arg1, 122558743933555, uint8(idx + 1)
                    require ext_call.success
                    if address(ext_call.return_data[0]) == msg.sender:
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args arg1, 122558743933555, arg2
                        require ext_call.success
                    mem[100] = arg1
                    mem[132] = 122558743933555
                    call address(dbAddress).0x25010816 with:
                         gas gas_remaining - 25050 wei
                        args arg1, 122558743933555
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
}

function validate(address arg1, uint256 arg2, uint256[101][] arg3) payable {
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    s = 128
    idx = 0
    while idx < arg3.length:
        _125 = mem[64]
        mem[64] = mem[64] + 3232
        mem[_125 len 3232] = call.data[arg3 + (3232 * idx) + 36 len 3232]
        mem[s] = _125
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor1.length:
        require idx < mem[96]
        require idx < stor1.length
        if 0 == mem[mem[(32 * idx) + 128]]:
            emit 0x561aa3de: Array(len=15, data='must be present'), storFAB1[idx]
        else:
            mem[0] = 1
            if storB10E[idx] == 126943972912743:
                idx = idx + 1
                continue 
            require idx < mem[96]
            if 1 == mem[mem[(32 * idx) + 128]]:
                idx = idx + 1
                continue 
            require idx < stor1.length
            emit 0x561aa3de: Array(len=10, data='is invalid'), storFAB1[idx]
        return 0
    require 3 < mem[96]
    if mem[mem[224] + 32] != 1684107376:
        require 3 < mem[96]
        if mem[mem[224] + 32] != 'developer':
            emit 0x561aa3de: Array(len=48, data='has unknown value; must be 'dapp', '' or 'developer''), 'model_type'
            return 0
    if arg2:
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg2, 'model_id', 0
        require ext_call.success
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 'model_type'
        mem[mem[64] + 68] = 0
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg2, 'model_type', 0
        mem[mem[64]] = ext_call.return_data[0]
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            if storFAB1[idx] != 'model_id':
                require idx < stor1.length
                mem[0] = 1
                if storFAB1[idx] != 'model_type':
                    idx = idx + 1
                    continue 
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 32] == ext_call.return_data[0]:
                    idx = idx + 1
                    continue 
                emit 0x561aa3de: 'cannot be changed after create()', 'model_type'
            else:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 32] != ext_call.return_data[0]:
                    emit 0x561aa3de: 'cannot be changed after create()', 'model_id'
                else:
                    require idx < stor1.length
                    mem[0] = 1
                    if storFAB1[idx] != 'model_type':
                        idx = idx + 1
                        continue 
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] == ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    emit 0x561aa3de: 'cannot be changed after create()', 'model_type'
            return 0
    return 1
}

function update(uint256 arg1, uint256[101][] arg2) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _205 = mem[64]
        mem[64] = mem[64] + 3232
        mem[_205 len 3232] = call.data[arg2 + (3232 * idx) + 36 len 3232]
        mem[s] = _205
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor1.length:
        require idx < mem[96]
        require idx < stor1.length
        if 0 == mem[mem[(32 * idx) + 128]]:
            emit 0x561aa3de: Array(len=15, data='must be present'), storFAB1[idx]
        else:
            mem[0] = 1
            if storB10E[idx] == 126943972912743:
                idx = idx + 1
                continue 
            require idx < mem[96]
            if 1 == mem[mem[(32 * idx) + 128]]:
                idx = idx + 1
                continue 
            require idx < stor1.length
            emit 0x561aa3de: Array(len=10, data='is invalid'), storFAB1[idx]
        return 0
    require 3 < mem[96]
    if mem[mem[224] + 32] == 1684107376:
        if not arg1:
            s = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                mem[mem[64]] = 0x41ee903e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                call address(dbAddress).0x41ee903e with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx]
                require ext_call.success
                require idx < mem[96]
                if var30003 > mem[mem[(32 * idx) + 128]]:
                    s = var30003
                    idx = idx + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require var34006 < 101
                _974 = mem[(32 * var34006) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                mem[mem[64] + 68] = _974
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx], _974
                require ext_call.success
                require idx < mem[96]
                _991 = mem[mem[(32 * idx) + 128]]
                t = storFAB1[idx]
                s = var34006
                while s + 1 <= _991:
                    require idx < stor1.length
                    mem[0] = 1
                    require idx < mem[96]
                    require s + 1 < 101
                    _974 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                    mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = storFAB1[idx]
                    mem[mem[64] + 68] = _974
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, storFAB1[idx], _974
                    require ext_call.success
                    require idx < mem[96]
                    _991 = mem[mem[(32 * idx) + 128]]
                    t = storFAB1[idx]
                    s = s + 1
                    continue 
                s = _991 + 1
                idx = idx + 1
                continue 
        else:
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args arg1, 'model_id', 0
            require ext_call.success
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 'model_type'
            mem[mem[64] + 68] = 0
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args arg1, 'model_type', 0
            mem[mem[64]] = ext_call.return_data[0]
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                if storFAB1[idx] != 'model_id':
                    require idx < stor1.length
                    mem[0] = 1
                    if storFAB1[idx] != 'model_type':
                        idx = idx + 1
                        continue 
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] == ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    emit 0x561aa3de: 'cannot be changed after create()', 'model_type'
                else:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] != ext_call.return_data[0]:
                        emit 0x561aa3de: 'cannot be changed after create()', 'model_id'
                    else:
                        require idx < stor1.length
                        mem[0] = 1
                        if storFAB1[idx] != 'model_type':
                            idx = idx + 1
                            continue 
                        require idx < mem[96]
                        if mem[mem[(32 * idx) + 128] + 32] == ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
                        emit 0x561aa3de: 'cannot be changed after create()', 'model_type'
                return 0
            s = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                mem[mem[64]] = 0x41ee903e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                call address(dbAddress).0x41ee903e with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx]
                require ext_call.success
                require idx < mem[96]
                if var35003 > mem[mem[(32 * idx) + 128]]:
                    s = var35003
                    idx = idx + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require var39006 < 101
                _1014 = mem[(32 * var39006) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                mem[mem[64] + 68] = _1014
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx], _1014
                require ext_call.success
                require idx < mem[96]
                _1023 = mem[mem[(32 * idx) + 128]]
                t = storFAB1[idx]
                s = var39006
                while s + 1 <= _1023:
                    require idx < stor1.length
                    mem[0] = 1
                    require idx < mem[96]
                    require s + 1 < 101
                    _1014 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                    mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = storFAB1[idx]
                    mem[mem[64] + 68] = _1014
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, storFAB1[idx], _1014
                    require ext_call.success
                    require idx < mem[96]
                    _1023 = mem[mem[(32 * idx) + 128]]
                    t = storFAB1[idx]
                    s = s + 1
                    continue 
                s = _1023 + 1
                idx = idx + 1
                continue 
    else:
        require 3 < mem[96]
        if mem[mem[224] + 32] != 'developer':
            emit 0x561aa3de: Array(len=48, data='has unknown value; must be 'dapp', '' or 'developer''), 'model_type'
            return 0
        if not arg1:
            s = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                mem[mem[64]] = 0x41ee903e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                call address(dbAddress).0x41ee903e with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx]
                require ext_call.success
                require idx < mem[96]
                if var32003 > mem[mem[(32 * idx) + 128]]:
                    s = var32003
                    idx = idx + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require var36006 < 101
                _978 = mem[(32 * var36006) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                mem[mem[64] + 68] = _978
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx], _978
                require ext_call.success
                require idx < mem[96]
                _994 = mem[mem[(32 * idx) + 128]]
                t = storFAB1[idx]
                s = var36006
                while s + 1 <= _994:
                    require idx < stor1.length
                    mem[0] = 1
                    require idx < mem[96]
                    require s + 1 < 101
                    _978 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                    mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = storFAB1[idx]
                    mem[mem[64] + 68] = _978
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, storFAB1[idx], _978
                    require ext_call.success
                    require idx < mem[96]
                    _994 = mem[mem[(32 * idx) + 128]]
                    t = storFAB1[idx]
                    s = s + 1
                    continue 
                s = _994 + 1
                idx = idx + 1
                continue 
        else:
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args arg1, 'model_id', 0
            require ext_call.success
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 'model_type'
            mem[mem[64] + 68] = 0
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args arg1, 'model_type', 0
            mem[mem[64]] = ext_call.return_data[0]
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                if storFAB1[idx] != 'model_id':
                    require idx < stor1.length
                    mem[0] = 1
                    if storFAB1[idx] != 'model_type':
                        idx = idx + 1
                        continue 
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] == ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    emit 0x561aa3de: 'cannot be changed after create()', 'model_type'
                else:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] != ext_call.return_data[0]:
                        emit 0x561aa3de: 'cannot be changed after create()', 'model_id'
                    else:
                        require idx < stor1.length
                        mem[0] = 1
                        if storFAB1[idx] != 'model_type':
                            idx = idx + 1
                            continue 
                        require idx < mem[96]
                        if mem[mem[(32 * idx) + 128] + 32] == ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
                        emit 0x561aa3de: 'cannot be changed after create()', 'model_type'
                return 0
            s = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                mem[mem[64]] = 0x41ee903e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                call address(dbAddress).0x41ee903e with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx]
                require ext_call.success
                require idx < mem[96]
                if var37003 > mem[mem[(32 * idx) + 128]]:
                    s = var37003
                    idx = idx + 1
                    continue 
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require var41006 < 101
                _1017 = mem[(32 * var41006) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = storFAB1[idx]
                mem[mem[64] + 68] = _1017
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, storFAB1[idx], _1017
                require ext_call.success
                require idx < mem[96]
                _1025 = mem[mem[(32 * idx) + 128]]
                t = storFAB1[idx]
                s = var41006
                while s + 1 <= _1025:
                    require idx < stor1.length
                    mem[0] = 1
                    require idx < mem[96]
                    require s + 1 < 101
                    _1017 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                    mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = storFAB1[idx]
                    mem[mem[64] + 68] = _1017
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args arg1, storFAB1[idx], _1017
                    require ext_call.success
                    require idx < mem[96]
                    _1025 = mem[mem[(32 * idx) + 128]]
                    t = storFAB1[idx]
                    s = s + 1
                    continue 
                s = _1025 + 1
                idx = idx + 1
                continue 
    call address(dbAddress).0x41ee903e with:
         gas gas_remaining - 25050 wei
        args arg1, 'last_updated_block'
    require ext_call.success
    call address(dbAddress).0x505fb46c with:
         gas gas_remaining - 25050 wei
        args arg1, 'last_updated_block', block.number
    emit Update(arg1);
    return 1
}

function create(uint256[101][] arg1) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    s = 128
    idx = 0
    while idx < arg1.length:
        _245 = mem[64]
        mem[64] = mem[64] + 3232
        mem[_245 len 3232] = call.data[arg1 + (3232 * idx) + 36 len 3232]
        mem[s] = _245
        s = s + 32
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 14
    mem[mem[64] + 64] = 'create started'
    emit Log(Array(len=14, data='create started'));
    idx = 0
    while idx < stor1.length:
        require idx < mem[96]
        require idx < stor1.length
        if 0 == mem[mem[(32 * idx) + 128]]:
            emit 0x561aa3de: Array(len=15, data='must be present'), storFAB1[idx]
        else:
            mem[0] = 1
            if storB10E[idx] == 126943972912743:
                idx = idx + 1
                continue 
            require idx < mem[96]
            if 1 == mem[mem[(32 * idx) + 128]]:
                idx = idx + 1
                continue 
            require idx < stor1.length
            emit 0x561aa3de: Array(len=10, data='is invalid'), storFAB1[idx]
        return 0
    require 3 < mem[96]
    if mem[mem[224] + 32] == 1684107376:
        call address(dbAddress).0x9c851ebc with:
             gas gas_remaining - 25050 wei
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        s = 0
        idx = 0
        while idx < stor1.length:
            require idx < mem[96]
            if var29003 > mem[mem[(32 * idx) + 128]]:
                s = var29003
                idx = idx + 1
                continue 
            require idx < stor1.length
            mem[0] = 1
            require idx < mem[96]
            require var33006 < 101
            _1594 = mem[(32 * var33006) + mem[(32 * idx) + 128]]
            mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = storFAB1[idx]
            mem[mem[64] + 68] = _1594
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], storFAB1[idx], _1594
            require ext_call.success
            require idx < mem[96]
            _1615 = mem[mem[(32 * idx) + 128]]
            t = storFAB1[idx]
            s = var33006
            while s + 1 <= _1615:
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require s + 1 < 101
                _1594 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = storFAB1[idx]
                mem[mem[64] + 68] = _1594
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], storFAB1[idx], _1594
                require ext_call.success
                require idx < mem[96]
                _1615 = mem[mem[(32 * idx) + 128]]
                t = storFAB1[idx]
                s = s + 1
                continue 
            s = _1615 + 1
            idx = idx + 1
            continue 
        call address(dbAddress).0x25010816 with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0], 122558743933555
        require ext_call.success
        if 0 == ext_call.return_data[0] != 0:
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 122558743933555, msg.sender
            require ext_call.success
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 'destroyed', 0
        else:
            call address(dbAddress).0x25010816 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 122558743933555
            require ext_call.success
            if uint8(var34005) >= ext_call.return_data[0]:
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 'destroyed', 0
                require ext_call.success
            else:
                mem[mem[64] + 68] = uint8(var36002)
                call address(dbAddress).0x58e59c32 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 122558743933555, uint8(var36002)
                require ext_call.success
                if address(ext_call.return_data[0]) == msg.sender:
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 122558743933555, msg.sender
                    require ext_call.success
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'destroyed', 0
                else:
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 122558743933555
                    call address(dbAddress).0x25010816 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 122558743933555
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    idx = var38005
                    while uint8(idx + 1) < ext_call.return_data[0]:
                        mem[mem[64] + 68] = uint8(idx + 1)
                        call address(dbAddress).0x58e59c32 with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 122558743933555, uint8(idx + 1)
                        require ext_call.success
                        if address(ext_call.return_data[0]) != msg.sender:
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = 122558743933555
                            call address(dbAddress).0x25010816 with:
                                 gas gas_remaining - 25050 wei
                                args ext_call.return_data[0], 122558743933555
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 122558743933555, msg.sender
                        require ext_call.success
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'destroyed', 0
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'created_block', block.number
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = 'last_updated_block'
                        mem[mem[64] + 68] = block.number
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'last_updated_block', block.number
                        mem[mem[64]] = ext_call.return_data[0]
                        emit Create(ext_call.return_data[0]);
                        if ext_call.return_data[0]:
                            require 2 < mem[96]
                            require 3 < mem[96]
                            call address(coordinatorAddress).0x6a030ca9 with:
                                 gas gas_remaining - 25050 wei
                                args mem[mem[224] + 32]
                            require ext_call.success
                            mem[mem[64] + 4] = mem[mem[192] + 32]
                            call address(ext_call.return_data[0]).0x49fb2dc5 with:
                                 gas gas_remaining - 25050 wei
                                args mem[mem[64] + 4], 'attributes', ext_call.return_data[0]
                        return ext_call.return_data[0]
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'destroyed', 0
                    require ext_call.success
    else:
        require 3 < mem[96]
        if mem[mem[224] + 32] != 'developer':
            emit 0x561aa3de: Array(len=48, data='has unknown value; must be 'dapp', '' or 'developer''), 'model_type'
            return 0
        call address(dbAddress).0x9c851ebc with:
             gas gas_remaining - 25050 wei
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        s = 0
        idx = 0
        while idx < stor1.length:
            require idx < mem[96]
            if var31003 > mem[mem[(32 * idx) + 128]]:
                s = var31003
                idx = idx + 1
                continue 
            require idx < stor1.length
            mem[0] = 1
            require idx < mem[96]
            require var35006 < 101
            _1599 = mem[(32 * var35006) + mem[(32 * idx) + 128]]
            mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = storFAB1[idx]
            mem[mem[64] + 68] = _1599
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], storFAB1[idx], _1599
            require ext_call.success
            require idx < mem[96]
            _1619 = mem[mem[(32 * idx) + 128]]
            t = storFAB1[idx]
            s = var35006
            while s + 1 <= _1619:
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require s + 1 < 101
                _1599 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = storFAB1[idx]
                mem[mem[64] + 68] = _1599
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], storFAB1[idx], _1599
                require ext_call.success
                require idx < mem[96]
                _1619 = mem[mem[(32 * idx) + 128]]
                t = storFAB1[idx]
                s = s + 1
                continue 
            s = _1619 + 1
            idx = idx + 1
            continue 
        call address(dbAddress).0x25010816 with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0], 122558743933555
        require ext_call.success
        if 0 == ext_call.return_data[0] != 0:
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 122558743933555, msg.sender
            require ext_call.success
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 'destroyed', 0
        else:
            call address(dbAddress).0x25010816 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 122558743933555
            require ext_call.success
            if uint8(var36005) >= ext_call.return_data[0]:
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 'destroyed', 0
                require ext_call.success
            else:
                mem[mem[64] + 68] = uint8(var38002)
                call address(dbAddress).0x58e59c32 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 122558743933555, uint8(var38002)
                require ext_call.success
                if address(ext_call.return_data[0]) == msg.sender:
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 122558743933555, msg.sender
                    require ext_call.success
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'destroyed', 0
                else:
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 122558743933555
                    call address(dbAddress).0x25010816 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 122558743933555
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    idx = var40005
                    while uint8(idx + 1) < ext_call.return_data[0]:
                        mem[mem[64] + 68] = uint8(idx + 1)
                        call address(dbAddress).0x58e59c32 with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 122558743933555, uint8(idx + 1)
                        require ext_call.success
                        if address(ext_call.return_data[0]) != msg.sender:
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = 122558743933555
                            call address(dbAddress).0x25010816 with:
                                 gas gas_remaining - 25050 wei
                                args ext_call.return_data[0], 122558743933555
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 122558743933555, msg.sender
                        require ext_call.success
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'destroyed', 0
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'created_block', block.number
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = 'last_updated_block'
                        mem[mem[64] + 68] = block.number
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'last_updated_block', block.number
                        mem[mem[64]] = ext_call.return_data[0]
                        emit Create(ext_call.return_data[0]);
                        if ext_call.return_data[0]:
                            require 2 < mem[96]
                            require 3 < mem[96]
                            call address(coordinatorAddress).0x6a030ca9 with:
                                 gas gas_remaining - 25050 wei
                                args mem[mem[224] + 32]
                            require ext_call.success
                            mem[mem[64] + 4] = mem[mem[192] + 32]
                            call address(ext_call.return_data[0]).0x49fb2dc5 with:
                                 gas gas_remaining - 25050 wei
                                args mem[mem[64] + 4], 'attributes', ext_call.return_data[0]
                        return ext_call.return_data[0]
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'destroyed', 0
                    require ext_call.success
    call address(dbAddress).0x505fb46c with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0], 'created_block', block.number
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 'last_updated_block'
    mem[mem[64] + 68] = block.number
    call address(dbAddress).0x505fb46c with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0], 'last_updated_block', block.number
    mem[mem[64]] = ext_call.return_data[0]
    emit Create(ext_call.return_data[0]);
    if ext_call.return_data[0]:
        require 2 < mem[96]
        require 3 < mem[96]
        call address(coordinatorAddress).0x6a030ca9 with:
             gas gas_remaining - 25050 wei
            args mem[mem[224] + 32]
        require ext_call.success
        mem[mem[64] + 4] = mem[mem[192] + 32]
        call address(ext_call.return_data[0]).0x49fb2dc5 with:
             gas gas_remaining - 25050 wei
            args mem[mem[64] + 4], 'attributes', ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
