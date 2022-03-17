contract main {


// =======================  Init code  ======================


array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor4057;
uint256 stor4057;
uint256 stor4057;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storB10E;
uint256 storC257;
uint256 storC257;
uint256 storC257;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor1.length = 6
    if not stor1.length <= 6:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0d02
        while code.data[10369 len 32] + (2 * stor1.length) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor1.length
    stor[code.data[10369 len 32]] = 'dapp_id'
    require 1 < stor1.length
    storB10E = 121450625394034
    require 2 < stor1.length
    storB10E = 'whats_new'
    require 3 < stor1.length
    storB10E = 'screenshots'
    require 4 < stor1.length
    storB10E = 'location'
    require 5 < stor1.length
    storB10E = 482955846501
    require 0 < stor1.length
    storB10E = 'reference'
    require 1 < stor1.length
    storB10E = 126943972912743
    require 2 < stor1.length
    storB10E = 126943972912743
    require 3 < stor1.length
    storB10E = 'string_array'
    require 4 < stor1.length
    storB10E = 126943972912743
    require 5 < stor1.length
    storB10E = 'integer'
    stor2 = 2
    if not stor2 <= 2:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad2
        while code.data[10305 len 32] + (2 * stor2) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor2
    stor[code.data[10305 len 32]] = 'reviews'
    stor4057 = 125780103882103
    require 1 < stor2
    stor4057 = 'licenses'
    stor4057 = 'license'
    stor3 = 2
    if not stor3 <= 2:
        idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85f
        while code.data[10337 len 32] + (2 * stor3) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor3
    stor[code.data[10337 len 32]] = 'rating_count'
    require 1 < stor3
    storC257 = 'rating_total'
    require 0 < stor3
    storC257 = 'integer'
    require 1 < stor3
    storC257 = 'integer'
    return code.data[1473 len 8832]
}



// =====================  Runtime code  =====================


const get_default_keys = mem[736 len 256]


address dbAddress;
uint256 stor0;
address coordinatorAddress;
uint256 stor4;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

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

function add_rating(uint256 arg1, uint256 arg2) payable {
    call address(coordinatorAddress).0x6a030ca9 with:
         gas gas_remaining - 25050 wei
        args 125780103882103
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg1, 'rating_count', 0
        require ext_call.success
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg1, 'rating_total', 0
        call address(dbAddress).0x41ee903e with:
             gas gas_remaining - 25050 wei
            args arg1, 'rating_count'
        call address(dbAddress).0x41ee903e with:
             gas gas_remaining - 25050 wei
            args arg1, 'rating_total'
        call address(dbAddress).0x505fb46c with:
             gas gas_remaining - 25050 wei
            args arg1, 'rating_count', ext_call.return_data[0] + 1
        call address(dbAddress).0x505fb46c with:
             gas gas_remaining - 25050 wei
            args arg1, 'rating_total', ext_call.return_data[0] + arg2
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
        _68 = mem[64]
        mem[64] = mem[64] + 3232
        mem[_68 len 3232] = call.data[arg3 + (3232 * idx) + 36 len 3232]
        mem[s] = _68
        s = s + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128]] != 1:
        emit 0x561aa3de: Array(len=15, data='must be present'), 'dapp_id'
    else:
        mem[mem[64] + 4] = 1684107376
        call address(coordinatorAddress).0x6a030ca9 with:
             gas gas_remaining - 25050 wei
            args 1684107376
        require ext_call.success
        call address(ext_call.return_data[0]).0x4d655aff with:
             gas gas_remaining - 25050 wei
        mem[mem[64]] = ext_call.return_data[0]
        require 0 < mem[96]
        _88 = mem[mem[128] + 32]
        call address(ext_call.return_data[0]).count() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if ext_call.return_data[0] < mem[mem[128] + 32]:
            emit 0x561aa3de: Array(len=10, data='is invalid'), 'dapp_id'
        else:
            call address(coordinatorAddress).0x6a030ca9 with:
                 gas gas_remaining - 25050 wei
                args 'developer'
            require ext_call.success
            call address(ext_call.return_data[0]).0x4d655aff with:
                 gas gas_remaining - 25050 wei
            mem[mem[64] + 4] = mem[mem[128] + 32]
            call address(ext_call.return_data[0]).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args mem[mem[64] + 4], 'developer_id', 0
            call address(ext_call.return_data[0]).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 'address', 0
            if address(ext_call.return_data[0]) != arg1:
                emit 0x561aa3de: Array(len=23, data='is not the right sender'), 'developer_id'
            else:
                if not arg2:
                    return 1
                call address(dbAddress).0x58e59c32 with:
                     gas gas_remaining - 25050 wei
                    args arg2, 'dapp_id', 0
                require ext_call.success
                if ext_call.return_data[0] == _88:
                    return 1
                emit 0x561aa3de: Array(len=27, data='must not change on update()'), 'dapp_id'
    return 0
}

function update(uint256 arg1, uint256[101][] arg2) payable {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    s = 128
    idx = 0
    while idx < arg2.length:
        _100 = mem[64]
        mem[64] = mem[64] + 3232
        mem[_100 len 3232] = call.data[arg2 + (3232 * idx) + 36 len 3232]
        mem[s] = _100
        s = s + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128]] != 1:
        emit 0x561aa3de: Array(len=15, data='must be present'), 'dapp_id'
        return 0
    mem[mem[64] + 4] = 1684107376
    call address(coordinatorAddress).0x6a030ca9 with:
         gas gas_remaining - 25050 wei
        args 1684107376
    require ext_call.success
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 25050 wei
    mem[mem[64]] = ext_call.return_data[0]
    require 0 < mem[96]
    _118 = mem[mem[128] + 32]
    call address(ext_call.return_data[0]).count() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0] < mem[mem[128] + 32]:
        emit 0x561aa3de: Array(len=10, data='is invalid'), 'dapp_id'
        return 0
    call address(coordinatorAddress).0x6a030ca9 with:
         gas gas_remaining - 25050 wei
        args 'developer'
    require ext_call.success
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 25050 wei
    mem[mem[64] + 4] = mem[mem[128] + 32]
    call address(ext_call.return_data[0]).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args mem[mem[64] + 4], 'developer_id', 0
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 'address'
    mem[mem[64] + 68] = 0
    call address(ext_call.return_data[0]).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0], 'address', 0
    mem[mem[64]] = ext_call.return_data[0]
    if address(ext_call.return_data[0]) != msg.sender:
        emit 0x561aa3de: Array(len=23, data='is not the right sender'), 'developer_id'
        return 0
    if not arg1:
        s = 0
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            mem[mem[64]] = 0x41ee903e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor1[idx]
            call address(dbAddress).0x41ee903e with:
                 gas gas_remaining - 25050 wei
                args arg1, stor1[idx]
            require ext_call.success
            require idx < mem[96]
            if var36003 > mem[mem[(32 * idx) + 128]]:
                s = var36003
                idx = idx + 1
                continue 
            require idx < stor1.length
            mem[0] = 1
            require idx < mem[96]
            require var40006 < 101
            _308 = mem[(32 * var40006) + mem[(32 * idx) + 128]]
            mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor1[idx]
            mem[mem[64] + 68] = _308
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args arg1, stor1[idx], _308
            require ext_call.success
            require idx < mem[96]
            _317 = mem[mem[(32 * idx) + 128]]
            s = var40006
            while s + 1 <= _317:
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require s + 1 < 101
                _308 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor1[idx]
                mem[mem[64] + 68] = _308
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, stor1[idx], _308
                require ext_call.success
                require idx < mem[96]
                _317 = mem[mem[(32 * idx) + 128]]
                s = s + 1
                continue 
            s = _317 + 1
            idx = idx + 1
            continue 
    else:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 'dapp_id'
        mem[mem[64] + 68] = 0
        call address(dbAddress).0x58e59c32 with:
             gas gas_remaining - 25050 wei
            args arg1, 'dapp_id', 0
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] != _118:
            emit 0x561aa3de: Array(len=27, data='must not change on update()'), 'dapp_id'
            return 0
        s = 0
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            mem[mem[64]] = 0x41ee903e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor1[idx]
            call address(dbAddress).0x41ee903e with:
                 gas gas_remaining - 25050 wei
                args arg1, stor1[idx]
            require ext_call.success
            require idx < mem[96]
            if var38003 > mem[mem[(32 * idx) + 128]]:
                s = var38003
                idx = idx + 1
                continue 
            require idx < stor1.length
            mem[0] = 1
            require idx < mem[96]
            require var42006 < 101
            _311 = mem[(32 * var42006) + mem[(32 * idx) + 128]]
            mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor1[idx]
            mem[mem[64] + 68] = _311
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args arg1, stor1[idx], _311
            require ext_call.success
            require idx < mem[96]
            _319 = mem[mem[(32 * idx) + 128]]
            s = var42006
            while s + 1 <= _319:
                require idx < stor1.length
                mem[0] = 1
                require idx < mem[96]
                require s + 1 < 101
                _311 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
                mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor1[idx]
                mem[mem[64] + 68] = _311
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args arg1, stor1[idx], _311
                require ext_call.success
                require idx < mem[96]
                _319 = mem[mem[(32 * idx) + 128]]
                s = s + 1
                continue 
            s = _319 + 1
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
        _167 = mem[64]
        mem[64] = mem[64] + 3232
        mem[_167 len 3232] = call.data[arg1 + (3232 * idx) + 36 len 3232]
        mem[s] = _167
        s = s + 32
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 14
    mem[mem[64] + 64] = 'create started'
    emit Log(Array(len=14, data='create started'));
    require 0 < mem[96]
    if mem[mem[128]] != 1:
        emit 0x561aa3de: Array(len=15, data='must be present'), 'dapp_id'
        return 0
    mem[mem[64] + 4] = 1684107376
    call address(coordinatorAddress).0x6a030ca9 with:
         gas gas_remaining - 25050 wei
        args 1684107376
    require ext_call.success
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 25050 wei
    mem[mem[64]] = ext_call.return_data[0]
    require 0 < mem[96]
    call address(ext_call.return_data[0]).count() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0] < mem[mem[128] + 32]:
        emit 0x561aa3de: Array(len=10, data='is invalid'), 'dapp_id'
        return 0
    call address(coordinatorAddress).0x6a030ca9 with:
         gas gas_remaining - 25050 wei
        args 'developer'
    require ext_call.success
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 25050 wei
    mem[mem[64] + 4] = mem[mem[128] + 32]
    call address(ext_call.return_data[0]).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args mem[mem[64] + 4], 'developer_id', 0
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 'address'
    mem[mem[64] + 68] = 0
    call address(ext_call.return_data[0]).0x58e59c32 with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0], 'address', 0
    if address(ext_call.return_data[0]) != msg.sender:
        emit 0x561aa3de: Array(len=23, data='is not the right sender'), 'developer_id'
        return 0
    call address(dbAddress).0x9c851ebc with:
         gas gas_remaining - 25050 wei
    mem[mem[64]] = ext_call.return_data[0]
    require ext_call.success
    s = 0
    idx = 0
    while idx < stor1.length:
        require idx < mem[96]
        if var35003 > mem[mem[(32 * idx) + 128]]:
            s = var35003
            idx = idx + 1
            continue 
        require idx < stor1.length
        mem[0] = 1
        require idx < mem[96]
        require var39006 < 101
        _792 = mem[(32 * var39006) + mem[(32 * idx) + 128]]
        mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = stor1[idx]
        mem[mem[64] + 68] = _792
        call address(dbAddress).0x505fb46c with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0], stor1[idx], _792
        require ext_call.success
        require idx < mem[96]
        _803 = mem[mem[(32 * idx) + 128]]
        s = var39006
        while s + 1 <= _803:
            require idx < stor1.length
            mem[0] = 1
            require idx < mem[96]
            require s + 1 < 101
            _792 = mem[(32 * s + 1) + mem[(32 * idx) + 128]]
            mem[mem[64]] = 0x505fb46c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = stor1[idx]
            mem[mem[64] + 68] = _792
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], stor1[idx], _792
            require ext_call.success
            require idx < mem[96]
            _803 = mem[mem[(32 * idx) + 128]]
            s = s + 1
            continue 
        s = _803 + 1
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
            require 0 < mem[96]
            _369 = mem[mem[128] + 32]
            call address(coordinatorAddress).0x6a030ca9 with:
                 gas gas_remaining - 25050 wei
                args 1684107376
            require ext_call.success
            mem[mem[64] + 4] = mem[mem[128] + 32]
            call address(ext_call.return_data[0]).0x49fb2dc5 with:
                 gas gas_remaining - 25050 wei
                args mem[mem[64] + 4], 'versions', ext_call.return_data[0]
            call address(ext_call.return_data[0]).0xe2deaa81 with:
                 gas gas_remaining - 25050 wei
                args _369, 'version_id', ext_call.return_data[0]
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 'rating_count', 0
            call address(dbAddress).0x505fb46c with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 'rating_total', 0
    else:
        call address(dbAddress).0x25010816 with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0], 122558743933555
        require ext_call.success
        if uint8(var40005) >= ext_call.return_data[0]:
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
                require 0 < mem[96]
                _551 = mem[mem[128] + 32]
                call address(coordinatorAddress).0x6a030ca9 with:
                     gas gas_remaining - 25050 wei
                    args 1684107376
                require ext_call.success
                mem[mem[64] + 4] = mem[mem[128] + 32]
                call address(ext_call.return_data[0]).0x49fb2dc5 with:
                     gas gas_remaining - 25050 wei
                    args mem[mem[64] + 4], 'versions', ext_call.return_data[0]
                call address(ext_call.return_data[0]).0xe2deaa81 with:
                     gas gas_remaining - 25050 wei
                    args _551, 'version_id', ext_call.return_data[0]
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 'rating_count', 0
                call address(dbAddress).0x505fb46c with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 'rating_total', 0
        else:
            mem[mem[64] + 68] = uint8(var42002)
            call address(dbAddress).0x58e59c32 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], 122558743933555, uint8(var42002)
            require ext_call.success
            if address(ext_call.return_data[0]) == msg.sender:
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
                    require 0 < mem[96]
                    _734 = mem[mem[128] + 32]
                    call address(coordinatorAddress).0x6a030ca9 with:
                         gas gas_remaining - 25050 wei
                        args 1684107376
                    require ext_call.success
                    mem[mem[64] + 4] = mem[mem[128] + 32]
                    call address(ext_call.return_data[0]).0x49fb2dc5 with:
                         gas gas_remaining - 25050 wei
                        args mem[mem[64] + 4], 'versions', ext_call.return_data[0]
                    call address(ext_call.return_data[0]).0xe2deaa81 with:
                         gas gas_remaining - 25050 wei
                        args _734, 'version_id', ext_call.return_data[0]
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'rating_count', 0
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'rating_total', 0
            else:
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = 122558743933555
                call address(dbAddress).0x25010816 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], 122558743933555
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                idx = var44005
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
                        require 0 < mem[96]
                        _843 = mem[mem[128] + 32]
                        call address(coordinatorAddress).0x6a030ca9 with:
                             gas gas_remaining - 25050 wei
                            args 1684107376
                        require ext_call.success
                        mem[mem[64] + 4] = mem[mem[128] + 32]
                        call address(ext_call.return_data[0]).0x49fb2dc5 with:
                             gas gas_remaining - 25050 wei
                            args mem[mem[64] + 4], 'versions', ext_call.return_data[0]
                        call address(ext_call.return_data[0]).0xe2deaa81 with:
                             gas gas_remaining - 25050 wei
                            args _843, 'version_id', ext_call.return_data[0]
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'rating_count', 0
                        call address(dbAddress).0x505fb46c with:
                             gas gas_remaining - 25050 wei
                            args ext_call.return_data[0], 'rating_total', 0
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
                    require 0 < mem[96]
                    _824 = mem[mem[128] + 32]
                    call address(coordinatorAddress).0x6a030ca9 with:
                         gas gas_remaining - 25050 wei
                        args 1684107376
                    require ext_call.success
                    mem[mem[64] + 4] = mem[mem[128] + 32]
                    call address(ext_call.return_data[0]).0x49fb2dc5 with:
                         gas gas_remaining - 25050 wei
                        args mem[mem[64] + 4], 'versions', ext_call.return_data[0]
                    call address(ext_call.return_data[0]).0xe2deaa81 with:
                         gas gas_remaining - 25050 wei
                        args _824, 'version_id', ext_call.return_data[0]
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'rating_count', 0
                    call address(dbAddress).0x505fb46c with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], 'rating_total', 0
    return ext_call.return_data[0]
}



}
