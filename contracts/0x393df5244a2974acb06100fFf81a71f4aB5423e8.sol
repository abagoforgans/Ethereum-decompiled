contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    stor2 = block.timestamp
    return code.data[45 len 4535]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
uint256 stor2;
array of struct stor3;
mapping of struct stor4;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;

function sub_755f4dcd(?) payable {
    return stor3.length
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_0ac0ea1f(?) payable {
    require stor2 < block.timestamp - (168 * 24 * 3600)
    stor2 = block.timestamp
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        uint256(stor[code.data[4503 len 32] + (5 * idx)]) = 0
        idx = idx + 1
        continue 
}

function sub_3cf1d390(?) payable {
    require 1 == uint8(stor4[address(arg1)].field_0)
    require uint256(stor4[address(arg1)].field_256) < stor3.length
    call storC257[uint256(stor4[address(arg1)].field_256)].getBeneficiary() with:
         gas gas_remaining - 25050 wei
    if msg.value < 10^18:
        require ext_call.success
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
         gas 0 wei
    if msg.value >= 10^18:
        require uint256(stor4[address(arg1)].field_256) < stor3.length
        uint256(stor[code.data[4503 len 32] + (5 * uint256(stor4[address(arg1)].field_256))])++
}

function sub_eafa86f5(?) payable {
    require msg.value >= 10^18
    call stor0 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[4257 len 246], arg3
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = (5 * stor3.length) + 5
        while sha3(3) + (5 * stor3.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                idx = idx + 1
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            if 31 < stor[s + sha3(mem[0]) + 1].length:
                mem[0] = s + sha3(mem[0]) + 1
                t = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            address(stor[s + sha3(mem[0]) + 2]) = 0
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            uint256(stor[s + sha3(mem[0]) + 4]) = 0
            s = s + 1
            continue 
    uint256(stor3[stor3.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((5 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor3[stor3.length].field_512) = create.new_address or Mask(96, 160, uint256(stor3[stor3.length].field_512))
    uint256(stor3[stor3.length].field_768) = 0
    uint256(stor3[stor3.length].field_1024) = block.timestamp
    uint8(stor4[address(create.new_address)].field_0) = 1
    uint256(stor4[address(create.new_address)].field_256) = stor3.length
    emit 0xa0fbb4bb: address(create.new_address), Array(len=arg1.length, data=arg1[all]), arg1.length + 128
    return address(create.new_address)
}

function sub_65461567(?) payable {
    mem[96] = 0
    mem[128] = 0
    require arg1 <= stor3.length
    require arg1 > 0
    require stor3.length - arg1 < stor3.length
    mem[160] = stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length
    mem[192] = uint256(stor[sha3(('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1))].field_0)
    idx = 192
    s = 0
    while stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1))].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 224
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + 192] = stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
    mem[0] = (5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + 224] = uint256(stor[sha3((5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
    idx = ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + 224
    s = 0
    while ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 288] = uint256(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2])
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 224] = 96
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 320] = stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 352 len stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length] = mem[192 len stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length]
    mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 256] = stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + 128
    mem[stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 352] = stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
    mem[stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 384 len stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length] = mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + 224 len stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length]
    if not stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length % 32:
        return Array(len=stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length, data=mem[192 len stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length], stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length, mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + 224 len stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length]), 
               stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + 128,
               uint256(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2])
    mem[floor32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 384] = mem[floor32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + -stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length % 32 + 416 len stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length % 32]
    return Array(len=stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length, data=mem[192 len stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length], stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length, mem[ceil32(stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length) + ceil32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + 384 len floor32(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32]), 
           stor[('name', 'stor3', 3) + (5 * stor3.length) - (5 * arg1)].length + 128,
           uint256(stor[(5 * stor3.length) + (-5 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2])
}

function sub_f7657848(?) payable {
    mem[96] = 0
    mem[128] = 0
    require stor1.length < block.timestamp - (24 * 3600)
    stor1.length = block.timestamp
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    require 1 <= stor3.length
    mem[256] = 1
    mem[480] = 0
    mem[320] = 480
    mem[64] = 544
    mem[512] = 0
    mem[352] = 512
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[288] = 320
    s = 0
    t = 0
    idx = 0
    while idx < stor3.length:
        u = s
        t = 1
        while t > 0:
            require idx < stor3.length
            require t - 1 < mem[256]
            if mem[mem[(32 * t - 1) + 288] + 96] < uint256(stor[code.data[4503 len 32] + (5 * idx)]):
                s = 1
                while uint8(s) < t:
                    require uint8(s) < mem[256]
                    require uint8(s - 1) < mem[256]
                    mem[(32 * uint8(s - 1)) + 288] = mem[(32 * uint8(s)) + 288]
                    s = s + 1
                    continue 
                require idx < stor3.length
                _410 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[idx].length) + 192
                mem[_410 + 160] = stor3[idx].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
                mem[_410 + 192] = uint256(stor3[idx].field_0)
                u = _410 + 192
                v = sha3(mem[0])
                while _410 + stor3[idx].length + 192 > u + 32:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_410] = _410 + 160
                _459 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32
                mem[_459] = stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                mem[_459 + 32] = uint256(stor[sha3((5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
                u = _459 + 32
                v = sha3(mem[0])
                while _459 + stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length > u:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_410 + 32] = _459
                mem[_410 + 64] = storC257[idx]
                mem[_410 + 96] = storC257[idx]
                mem[_410 + 128] = storC257[idx]
                require t - 1 < mem[256]
                mem[(32 * t - 1) + 288] = _410
            else:
                require idx < stor3.length
                mem[0] = 3
                require t - 1 < mem[256]
                if mem[mem[(32 * t - 1) + 288] + 96] != uint256(stor[code.data[4503 len 32] + (5 * idx)]):
                    u = 1
                    t = t - 1
                    continue 
                require idx < stor3.length
                require t - 1 < mem[256]
                if mem[mem[(32 * t - 1) + 288] + 128] >= storC257[idx]:
                    u = 1
                    t = t - 1
                    continue 
                if 1 >= t:
                    require idx < stor3.length
                    _228 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[idx].length) + 192
                    mem[_228 + 160] = stor3[idx].length
                    mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
                    mem[_228 + 192] = uint256(stor3[idx].field_0)
                    s = _228 + 192
                    u = sha3(mem[0])
                    while _228 + stor3[idx].length + 192 > s + 32:
                        mem[s + 32] = stor1[u]
                        s = s + 32
                        u = u + 1
                        continue 
                    mem[_228] = _228 + 160
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32
                    mem[_317] = stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
                    mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                    mem[_317 + 32] = uint256(stor[sha3((5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
                    s = _317 + 32
                    u = sha3(mem[0])
                    while _317 + stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length > s:
                        mem[s + 32] = stor1[u]
                        s = s + 32
                        u = u + 1
                        continue 
                    mem[_228 + 32] = _317
                    mem[_228 + 64] = storC257[idx]
                    mem[_228 + 96] = storC257[idx]
                    mem[_228 + 128] = storC257[idx]
                    require t - 1 < mem[256]
                    mem[(32 * t - 1) + 288] = _228
                    s = 1
                    t = t
                    idx = idx + 1
                    continue 
                require 1 < mem[256]
                require 0 < mem[256]
                mem[288] = mem[320]
                s = 2
                while uint8(s) < t:
                    require uint8(s) < mem[256]
                    require uint8(s - 1) < mem[256]
                    mem[(32 * uint8(s - 1)) + 288] = mem[(32 * uint8(s)) + 288]
                    s = s + 1
                    continue 
                require idx < stor3.length
                _319 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[idx].length) + 192
                mem[_319 + 160] = stor3[idx].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
                mem[_319 + 192] = uint256(stor3[idx].field_0)
                u = _319 + 192
                v = sha3(mem[0])
                while _319 + stor3[idx].length + 192 > u + 32:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_319] = _319 + 160
                _408 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32
                mem[_408] = stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                mem[_408 + 32] = uint256(stor[sha3((5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
                u = _408 + 32
                v = sha3(mem[0])
                while _408 + stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length > u:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_319 + 32] = _408
                mem[_319 + 64] = storC257[idx]
                mem[_319 + 96] = storC257[idx]
                mem[_319 + 128] = storC257[idx]
                require t - 1 < mem[256]
                mem[(32 * t - 1) + 288] = _319
            s = s
            t = t
            idx = idx + 1
            continue 
        s = u
        t = t
        idx = idx + 1
        continue 
    require 0 < mem[256]
    require 0 < mem[256]
    require 0 < mem[256]
    require 0 < mem[256]
    call mem[mem[288] + 76 len 20].getBeneficiary() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_84701418(?) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require arg1 <= stor3.length
    require arg1 > 0
    mem[192] = arg1
    mem[(32 * arg1) + 384] = 0
    mem[(32 * arg1) + 224] = (32 * arg1) + 384
    mem[64] = (32 * arg1) + 448
    mem[(32 * arg1) + 416] = 0
    mem[(32 * arg1) + 256] = (32 * arg1) + 416
    mem[(32 * arg1) + 288] = 0
    mem[(32 * arg1) + 320] = 0
    mem[(32 * arg1) + 352] = 0
    mem[224] = (32 * arg1) + 224
    s = 224
    idx = arg1
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * arg1) + 384] = 0
        mem[(32 * arg1) + 224] = (32 * arg1) + 384
        mem[64] = mem[64] + 32
        mem[(32 * arg1) + 416] = 0
        mem[(32 * arg1) + 256] = (32 * arg1) + 416
        mem[(32 * arg1) + 288] = 0
        mem[(32 * arg1) + 320] = 0
        mem[(32 * arg1) + 352] = 0
        mem[s + 32] = (32 * arg1) + 224
        s = s + 32
        idx = idx - 1
        continue 
    s = 0
    t = 0
    idx = 0
    while idx < stor3.length:
        u = s
        t = arg1
        while t > 0:
            require idx < stor3.length
            require t - 1 < mem[192]
            if mem[mem[(32 * t - 1) + 224] + 96] < uint256(stor[code.data[4503 len 32] + (5 * idx)]):
                s = 1
                while uint8(s) < t:
                    require uint8(s) < mem[192]
                    require uint8(s - 1) < mem[192]
                    mem[(32 * uint8(s - 1)) + 224] = mem[(32 * uint8(s)) + 224]
                    s = s + 1
                    continue 
                require idx < stor3.length
                _702 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[idx].length) + 192
                mem[_702 + 160] = stor3[idx].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
                mem[_702 + 192] = uint256(stor3[idx].field_0)
                u = _702 + 192
                v = sha3(mem[0])
                while _702 + stor3[idx].length + 192 > u + 32:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_702] = _702 + 160
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32
                mem[_751] = stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                mem[_751 + 32] = uint256(stor[sha3((5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
                u = _751 + 32
                v = sha3(mem[0])
                while _751 + stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length > u:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_702 + 32] = _751
                mem[_702 + 64] = storC257[idx]
                mem[_702 + 96] = storC257[idx]
                mem[_702 + 128] = storC257[idx]
                require t - 1 < mem[192]
                mem[(32 * t - 1) + 224] = _702
            else:
                require idx < stor3.length
                mem[0] = 3
                require t - 1 < mem[192]
                if mem[mem[(32 * t - 1) + 224] + 96] != uint256(stor[code.data[4503 len 32] + (5 * idx)]):
                    u = 1
                    t = t - 1
                    continue 
                require idx < stor3.length
                require t - 1 < mem[192]
                if mem[mem[(32 * t - 1) + 224] + 128] >= storC257[idx]:
                    u = 1
                    t = t - 1
                    continue 
                if 1 >= t:
                    require idx < stor3.length
                    _520 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[idx].length) + 192
                    mem[_520 + 160] = stor3[idx].length
                    mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
                    mem[_520 + 192] = uint256(stor3[idx].field_0)
                    s = _520 + 192
                    u = sha3(mem[0])
                    while _520 + stor3[idx].length + 192 > s + 32:
                        mem[s + 32] = stor1[u]
                        s = s + 32
                        u = u + 1
                        continue 
                    mem[_520] = _520 + 160
                    _609 = mem[64]
                    mem[64] = mem[64] + ceil32(stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32
                    mem[_609] = stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
                    mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                    mem[_609 + 32] = uint256(stor[sha3((5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
                    s = _609 + 32
                    u = sha3(mem[0])
                    while _609 + stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length > s:
                        mem[s + 32] = stor1[u]
                        s = s + 32
                        u = u + 1
                        continue 
                    mem[_520 + 32] = _609
                    mem[_520 + 64] = storC257[idx]
                    mem[_520 + 96] = storC257[idx]
                    mem[_520 + 128] = storC257[idx]
                    require t - 1 < mem[192]
                    mem[(32 * t - 1) + 224] = _520
                    s = 1
                    t = t
                    idx = idx + 1
                    continue 
                require 1 < mem[192]
                require 0 < mem[192]
                mem[224] = mem[256]
                s = 2
                while uint8(s) < t:
                    require uint8(s) < mem[192]
                    require uint8(s - 1) < mem[192]
                    mem[(32 * uint8(s - 1)) + 224] = mem[(32 * uint8(s)) + 224]
                    s = s + 1
                    continue 
                require idx < stor3.length
                _611 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[idx].length) + 192
                mem[_611 + 160] = stor3[idx].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
                mem[_611 + 192] = uint256(stor3[idx].field_0)
                u = _611 + 192
                v = sha3(mem[0])
                while _611 + stor3[idx].length + 192 > u + 32:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_611] = _611 + 160
                _700 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 32
                mem[_700] = stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
                mem[0] = (5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                mem[_700 + 32] = uint256(stor[sha3((5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
                u = _700 + 32
                v = sha3(mem[0])
                while _700 + stor[(5 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length > u:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_611 + 32] = _700
                mem[_611 + 64] = storC257[idx]
                mem[_611 + 96] = storC257[idx]
                mem[_611 + 128] = storC257[idx]
                require t - 1 < mem[192]
                mem[(32 * t - 1) + 224] = _611
            s = s
            t = t
            idx = idx + 1
            continue 
        s = u
        t = t
        idx = idx + 1
        continue 
    require 0 < mem[192]
    _338 = mem[mem[224]]
    require 0 < mem[192]
    _343 = mem[mem[224] + 32]
    require 0 < mem[192]
    require 0 < mem[192]
    _362 = mem[mem[224] + 64]
    _368 = mem[64]
    mem[mem[64] + 64] = mem[mem[224] + 96]
    mem[mem[64] + 96] = address(_362)
    mem[mem[64]] = 128
    mem[_368 + 128] = mem[_338]
    _370 = mem[_338]
    mem[_368 + 160 len mem[_338]] = mem[_338 + 32 len mem[_338]]
    if not _370 % 32:
        mem[_368 + 32] = _370 + 160
        mem[_370 + _368 + 160] = mem[_343]
        _378 = mem[_343]
        mem[_370 + _368 + 192 len mem[_343]] = mem[_343 + 32 len mem[_343]]
        if not _378 % 32:
            return memory
              from mem[64]
               len _378 + _370 + _368 + -mem[64] + 192
        mem[floor32(_378) + _370 + _368 + 192] = mem[floor32(_378) + _370 + _368 + -(_378 % 32) + 224 len _378 % 32]
        return memory
          from mem[64]
           len floor32(_378) + _370 + _368 + -mem[64] + 224
    mem[floor32(_370) + _368 + 160] = mem[floor32(_370) + _368 + -(_370 % 32) + 192 len _370 % 32]
    mem[_368 + 32] = floor32(_370) + 192
    mem[floor32(_370) + _368 + 192] = mem[_343]
    _392 = mem[_343]
    mem[floor32(_370) + _368 + 224 len mem[_343]] = mem[_343 + 32 len mem[_343]]
    if not _392 % 32:
        return memory
          from mem[64]
           len _392 + floor32(_370) + _368 + -mem[64] + 224
    mem[floor32(_392) + floor32(_370) + _368 + 224] = mem[floor32(_392) + floor32(_370) + _368 + -(_392 % 32) + 256 len _392 % 32]
    return memory
      from mem[64]
       len floor32(_392) + floor32(_370) + _368 + -mem[64] + 256
}



}
