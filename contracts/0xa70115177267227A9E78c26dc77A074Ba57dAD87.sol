contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 6040]




// =====================  Runtime code  =====================


mapping of struct identify;
mapping of address lookup;
uint256 stor2;
array of struct stor3;

function identify(address arg1) payable {
    return identify[address(arg1)][0 len identify[address(arg1)].length].field_0
}

function lookup(string arg1) payable {
    return address(lookup[arg1[all]])
}

function _fallback() payable {
    revert 
}

function sub_9a2bff4f(?) payable {
    stor2 = arg1
}

function register(string arg1) payable {
    require not uint8(identify[address(msg.sender)].field_768)
    require not address(lookup[arg1[all]])
    identify[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    identify[address(msg.sender)].field_256 = block.timestamp + (8760 * 24 * 3600)
    uint8(identify[address(msg.sender)].field_768) = 1
    uint256(lookup[arg1[all]]) = msg.sender or Mask(96, 160, uint256(lookup[arg1[all]]))
    emit 0x2a477f09: msg.sender
}

function renew() payable {
    require uint8(identify[address(msg.sender)].field_768)
    mem[96] = identify[address(msg.sender)].field_0
    idx = 96
    s = 0
    while identify[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = identify[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require address(lookup[mem[96 len stor0[address(msg.sender)].length]]) == msg.sender
    if identify[address(msg.sender)].field_256 - block.timestamp == 240 * 24 * 3600:
        identify[address(msg.sender)].field_256 += 8760 * 24 * 3600
}

function sub_93c0d60d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require uint8(identify[address(msg.sender)].field_768)
    mem[ceil32(arg1.length) + 128] = identify[address(msg.sender)].field_0
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + identify[address(msg.sender)].length + 128 > idx + 32:
        mem[idx + 32] = identify[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require address(lookup[mem[ceil32(arg1.length) + 128 len stor0[address(msg.sender)].length]]) == msg.sender
    address(identify[address(msg.sender)][2][sha3(arg1[all])].field_0) = 0
    uint8(identify[address(msg.sender)][2][sha3(arg1[all])].field_160) = 0
    uint8(identify[address(msg.sender)][2][sha3(arg1[all])].field_168) = 0
}

function rename(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require uint8(identify[address(msg.sender)].field_768)
    mem[ceil32(arg1.length) + 128] = identify[address(msg.sender)].field_0
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + identify[address(msg.sender)].length + 128 > idx + 32:
        mem[idx + 32] = identify[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _58 = sha3(mem[ceil32(arg1.length) + 128 len identify[address(msg.sender)].length])
    require address(lookup[mem[ceil32(arg1.length) + 128 len stor0[address(msg.sender)].length]]) == msg.sender
    if not address(lookup[arg1[all]]):
        identify[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        uint256(lookup[arg1[all]]) = msg.sender or Mask(96, 160, uint256(lookup[arg1[all]]))
        address(lookup[_58]) = 0
}

function unregister() payable {
    require uint8(identify[address(msg.sender)].field_768)
    mem[96] = identify[address(msg.sender)].field_0
    idx = 96
    s = 0
    while identify[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = identify[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require address(lookup[mem[96 len stor0[address(msg.sender)].length]]) == msg.sender
    address(lookup[mem[96 len stor0[address(msg.sender)].length]]) = 0
    identify[address(msg.sender)].field_0 = 0
    if 31 < identify[address(msg.sender)].length:
        idx = 0
        while identify[address(msg.sender)].length + 31 / 32 > idx:
            identify[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    identify[address(msg.sender)].field_256 = 0
    uint8(identify[address(msg.sender)].field_768) = 0
    emit 0xbf872b07: msg.sender
}

function sub_177551ae(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require uint8(identify[address(msg.sender)].field_768)
    mem[ceil32(arg1.length) + 128] = identify[address(msg.sender)].field_0
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + identify[address(msg.sender)].length + 128 > idx + 32:
        mem[idx + 32] = identify[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require address(lookup[mem[ceil32(arg1.length) + 128 len stor0[address(msg.sender)].length]]) == msg.sender
    require not uint8(identify[address(msg.sender)][2][sha3(arg1[all])].field_168)
    identify[address(msg.sender)][2][sha3(arg1[all])].field_0 = arg2 or Mask(96, 160, identify[address(msg.sender)][2][sha3(arg1[all])].field_0)
    Mask(96, 0, identify[address(msg.sender)][2][sha3(arg1[all])].field_160) = Mask(96, 0, arg3)
    uint8(identify[address(msg.sender)][2][sha3(arg1[all])].field_168) = 1
}

function sub_33514006(?) payable {
    require uint8(identify[address(arg1)].field_768)
    mem[ceil32(arg2.length) + 8320 len arg2.length] = arg2[all]
    require uint8(identify[address(arg1)][2][sha3(arg2[all])].field_168)
    if not uint8(identify[address(arg1)][2][sha3(arg2[all])].field_160):
        return ''
    call address(identify[address(arg1)][2][sha3(arg2[all])].field_0).query(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    mem[ceil32(arg2.length) + 8320 len 8160] = ext_call.return_data[0 len 8160]
    require ext_call.success
    idx = 0
    while uint8(idx) < stor2:
        require idx < 255
        if 31 < stor3.length:
            stor3.length = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 3
            if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) <= stor3.length + 1:
                mem[0] = 3
                s = sha3(3) + (stor3.length + 32 / 32)
                while sha3(3) + (stor3.length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if 31 >= stor3.length + 1:
                stor3.length = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 2 or stor3.length / 2^(-(8 * stor3.length + 1) + 256) * 2^(-(8 * stor3.length + 1) + 256)
            else:
                mem[0] = 3
                uint8(stor3.field_0) = 0
                Mask(248, 0, stor3.field_8) = Mask(248, 0, stor3.length.field_8)
                stor3.length = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 3
        require stor3.length < stor3.length
        if not bool(stor3.length):
            stor3.length = mem[(32 * idx) + ceil32(arg2.length) + 8320 len 1] * 256^(-stor3.length + 31) or !(255 * 256^(-stor3.length + 31)) and stor3.length
        else:
            mem[0] = 3
            stor3[0.015625 / (256 * not bool(stor3.length)) - 1 and stor3.length].field_0 = mem[(32 * idx) + ceil32(arg2.length) + 8320 len 1] * 256^(-stor3.length % 32 + 31) or !(255 * 256^(-stor3.length % 32 + 31)) and stor3[0.015625 / (256 * not bool(stor3.length)) - 1 and stor3.length].field_0
        idx = idx + 1
        continue 
    mem[ceil32(arg2.length) + 16512] = uint256(stor3.field_0)
    idx = ceil32(arg2.length) + 16512
    s = 0
    while ceil32(arg2.length) + stor3.length + 16480 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3.length, data=mem[ceil32(arg2.length) + 16512 len stor3.length])
}



}
