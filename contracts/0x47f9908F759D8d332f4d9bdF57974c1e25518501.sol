contract main {




// =====================  Runtime code  =====================


mapping of struct stor51;
mapping of struct stor52;

function _fallback() payable {
    revert
}

function sub_b5c7d034(?) payable {
    require calldata.size - 4 >= 32
    return (uint32(stor51[arg1].field_416) > block.number)
}

function sub_32bf361b(?) payable {
    require calldata.size - 4 >= 32
    return arg1, stor52[arg1].field_0, uint32(stor52[arg1].field_256)
}

function sub_53b36015(?) payable {
    require calldata.size - 4 >= 64
    if stor52[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x72436f6d6d69742065786973747320666f722074686520676976656e20616e63686f,
                    mem[198 len 30]
    if uint32(stor51[arg1].field_416) > block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe507265636f6d6d69742065786973747320666f722074686520676976656e20616e63686f,
                    mem[201 len 27]
    stor51[arg1].field_0 = arg2
    address(stor51[arg1].field_256) = msg.sender
    uint32(stor51[arg1].field_416) = uint32(block.number + 480)
    emit 0xaa2928be: uint32(block.number), msg.sender, arg1
}

function sub_58522947(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128] = arg1
    mem[96] = 32
    hash = sha256hash(arg1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stor52[hash].field_0
    if uint32(stor51[hash].field_416) > block.number:
        if address(stor51[hash].field_256) != msg.sender:
            revert with 0, 'Precommit owned by someone else'
        mem[64] = (32 * arg3.length) + 192
        mem[160] = arg3.length
        mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + 192] = 0
        mem[0] = hash
        mem[32] = 51
        idx = 0
        s = stor[sha3(mem[0 len 64])]
        while idx < arg3.length:
            require idx < mem[160]
            _107 = mem[(32 * idx) + 192]
            if s >= mem[(32 * idx) + 192]:
                _116 = mem[64]
                mem[mem[64] + 32] = mem[(32 * idx) + 192]
                mem[mem[64] + 64] = s
                _117 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _119 = mem[_117]
                t = _117 + 32
                u = _116 + 96
                s = mem[_117]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_116 + floor32(mem[_117]) + 96] = 256^(-(mem[_117] % 32) + 32) - 1 and mem[_116 + floor32(mem[_117]) + 96] or mem[_117 + floor32(mem[_117]) + 32] and !(256^(-(mem[_117] % 32) + 32) - 1)
                hash = sha256hash(mem[_116 + 96 len _119]) 
                mem[_116 + 96] = hash
            else:
                _120 = mem[64]
                mem[mem[64] + 32] = s
                mem[mem[64] + 64] = _107
                _121 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _123 = mem[_121]
                t = _121 + 32
                u = _120 + 96
                s = mem[_121]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_120 + floor32(mem[_121]) + 96] = 256^(-(mem[_121] % 32) + 32) - 1 and mem[_120 + floor32(mem[_121]) + 96] or mem[_121 + floor32(mem[_121]) + 32] and !(256^(-(mem[_121] % 32) + 32) - 1)
                hash = sha256hash(mem[_120 + 96 len _123]) 
                mem[_120 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = hash
            continue 
        if arg2 != s:
            revert with 0, 'Signing root validation failed'
    stor52[hash].field_0 = arg2
    uint32(stor52[hash].field_256) = uint32(block.number)
    emit 0xd1eb81d6: arg2, uint32(block.number), msg.sender, hash
}



}
