contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3033]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
mapping of uint256 stor2;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_3cf1d390(?) payable {
    if msg.value >= 10^15:
        require stor2[address(arg1)] < stor1.length
        call storB10E[stor2[address(arg1)]].'VZ.,' with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 0 wei
        require stor2[address(arg1)] < stor1.length
        storB10E[stor2[address(arg1)]]++
}

function sub_eafa86f5(?) payable {
    require msg.value >= 10^18
    call stor0 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[2787 len 246], arg3
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = 4 * stor1.length + 1
        while sha3(1) + (4 * stor1.length) > idx + sha3(mem[0]):
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
            s = s + 1
            continue 
    uint256(stor1[stor1.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor1[stor1.length].field_512) = create.new_address or Mask(96, 160, uint256(stor1[stor1.length].field_512))
    uint256(stor1[stor1.length].field_768) = 0
    stor2[address(create.new_address)] = stor1.length + 1
    emit 0xa0fbb4bb: address(create.new_address), Array(len=arg1.length, data=arg1[all]), arg1.length + 128
    return address(create.new_address)
}

function sub_84701418(?) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require arg1 < stor1.length
    require arg1 > 0
    mem[192] = arg1
    mem[(32 * arg1) + 352] = 0
    mem[(32 * arg1) + 224] = (32 * arg1) + 352
    mem[64] = (32 * arg1) + 416
    mem[(32 * arg1) + 384] = 0
    mem[(32 * arg1) + 256] = (32 * arg1) + 384
    mem[(32 * arg1) + 288] = 0
    mem[(32 * arg1) + 320] = 0
    mem[224] = (32 * arg1) + 224
    s = 224
    idx = arg1
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * arg1) + 352] = 0
        mem[(32 * arg1) + 224] = (32 * arg1) + 352
        mem[64] = mem[64] + 32
        mem[(32 * arg1) + 384] = 0
        mem[(32 * arg1) + 256] = (32 * arg1) + 384
        mem[(32 * arg1) + 288] = 0
        mem[(32 * arg1) + 320] = 0
        mem[s + 32] = (32 * arg1) + 224
        s = s + 32
        idx = idx - 1
        continue 
    s = 0
    idx = 0
    while idx < stor1.length:
        t = 0
        s = arg1 - 1
        while s >= 0:
            require idx < stor1.length
            mem[0] = 1
            require s < mem[192]
            if mem[mem[(32 * s) + 224] + 96] <= storB10E[idx]:
                t = 1
                while uint8(t) <= s:
                    require uint8(t) < mem[192]
                    require uint8(t - 1) < mem[192]
                    mem[(32 * uint8(t - 1)) + 224] = mem[(32 * uint8(t)) + 224]
                    t = t + 1
                    continue 
                require idx < stor1.length
                _342 = mem[64]
                mem[64] = mem[64] + ceil32(stor1[idx].length) + 160
                mem[_342 + 128] = stor1[idx].length
                mem[0] = (4 * idx) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
                mem[_342 + 160] = uint256(stor1[idx].field_0)
                u = _342 + 160
                v = sha3(mem[0])
                while _342 + stor1[idx].length + 160 > u + 32:
                    mem[u + 32] = uint256(stor1[v].field_0)
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_342] = _342 + 128
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(stor[(4 * idx) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length) + 32
                mem[_381] = stor[(4 * idx) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length
                mem[0] = (4 * idx) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309
                mem[_381 + 32] = uint256(stor[sha3((4 * idx) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)])
                u = _381 + 32
                v = sha3(mem[0])
                while _381 + stor[(4 * idx) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length > u:
                    mem[u + 32] = uint256(stor1[v].field_0)
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_342 + 32] = _381
                mem[_342 + 64] = storB10E[idx]
                mem[_342 + 96] = storB10E[idx]
                require s < mem[192]
                mem[(32 * s) + 224] = _342
            t = t
            s = s - 1
            continue 
        s = s
        idx = idx + 1
        continue 
    require arg1 < mem[192]
    _205 = mem[mem[(32 * arg1) + 224]]
    require arg1 < mem[192]
    _211 = mem[mem[(32 * arg1) + 224] + 32]
    require arg1 < mem[192]
    _224 = mem[64]
    mem[mem[64] + 64] = mem[mem[(32 * arg1) + 224] + 96]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[_205]
    _226 = mem[_205]
    mem[mem[64] + 128 len mem[_205]] = mem[_205 + 32 len mem[_205]]
    if not _226 % 32:
        mem[mem[64] + 32] = _226 + 128
        mem[_226 + _224 + 128] = mem[_211]
        _233 = mem[_211]
        mem[_226 + _224 + 160 len mem[_211]] = mem[_211 + 32 len mem[_211]]
        if not _233 % 32:
            return memory
              from mem[64]
               len _233 + _226 + _224 + -mem[64] + 160
        mem[floor32(_233) + _226 + _224 + 160] = mem[floor32(_233) + _226 + _224 + -(_233 % 32) + 192 len _233 % 32]
        return memory
          from mem[64]
           len floor32(_233) + _226 + _224 + -mem[64] + 192
    mem[floor32(_226) + mem[64] + 128] = mem[floor32(_226) + mem[64] + -(_226 % 32) + 160 len _226 % 32]
    mem[mem[64] + 32] = floor32(_226) + 160
    mem[floor32(_226) + _224 + 160] = mem[_211]
    _242 = mem[_211]
    mem[floor32(_226) + _224 + 192 len mem[_211]] = mem[_211 + 32 len mem[_211]]
    if not _242 % 32:
        return memory
          from mem[64]
           len _242 + floor32(_226) + _224 + -mem[64] + 192
    mem[floor32(_242) + floor32(_226) + _224 + 192] = mem[floor32(_242) + floor32(_226) + _224 + -(_242 % 32) + 224 len _242 % 32]
    return memory
      from mem[64]
       len floor32(_242) + floor32(_226) + _224 + -mem[64] + 224
}



}
