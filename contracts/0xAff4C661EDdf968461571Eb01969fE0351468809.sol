contract main {


// =======================  Init code  ======================


uint256 stor0;
array of struct stor4;
uint256 stor8A35;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = 2 * stor4.length + 1
        while 2 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            idx = idx + 2
            continue 
    require 0 < stor4.length
    address(stor4.field_0) = 0
    stor4.field_256 % 1 = 0
    uint8(stor4.field_160) = 1
    stor8A35 = block.timestamp
    if code.data[3951 len 20] != 0:
        stor0 = code.data[3939 len 32] or Mask(96, 160, stor0)
    return code.data[352 len 3587]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct stor1;
uint256 sub_a92a83ef;
mapping of uint256 sub_e5bf45d4;
array of struct stor4;
array of struct stor39143100329280468107556231533410151018419134684842411016866935372961967991761;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991762;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function owner() payable {
    return address(owner)
}

function sub_a92a83ef(?) payable {
    return sub_a92a83ef
}

function sub_e5bf45d4(?) payable {
    return sub_e5bf45d4[arg1]
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_d0bbef7a(?) payable {
    require arg1 < stor4.length
    return address(stor568A[arg1].field_0), bool(uint8(stor568A[arg1].field_160)), stor8A35[arg1]
}

function sub_2d8b2411(?) payable {
    require sub_e5bf45d4[address(msg.sender)] != 0
    require sub_e5bf45d4[address(msg.sender)] < stor4.length
    require uint8(stor568A[stor3[address(msg.sender)]].field_160)
    require arg1 < stor1.length
    stor[sha3((3 * arg1) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor[sha3((3 * arg1) + ('name', 'stor1', 1) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    require arg4 < stor1.length
    stor[sha3((3 * arg4) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor[sha3((3 * arg4) + ('name', 'stor1', 1) + 2)][].field_0 = Array(len=arg6.length, data=arg6[all])
    return arg1, arg4
}

function sub_7eef751d(?) payable {
    require address(owner) == msg.sender
    if sub_e5bf45d4[address(arg1)]:
        require sub_e5bf45d4[address(arg1)] < stor4.length
        Mask(96, 0, stor568A[stor3[address(arg1)]].field_160) = Mask(96, 0, arg2)
    else:
        sub_e5bf45d4[address(arg1)] = stor4.length
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = 2 * stor4.length + 1
            while 2 * stor4.length > idx:
                Mask(168, 0, stor4[idx].field_0) = 0
                stor4[idx].field_256 = 0
                idx = idx + 2
                continue 
        require stor4.length < stor4.length
        address(stor568A[stor4.length].field_0) = arg1
        Mask(96, 0, stor568A[stor4.length].field_160) = Mask(96, 0, arg2)
        Mask(88, 0, stor568A[stor4.length].field_168) = Mask(88, 168, arg1) >> 168
        stor568A[stor4.length] = block.timestamp
}

function sub_412bd48a(?) payable {
    require sub_e5bf45d4[address(msg.sender)] != 0
    require sub_e5bf45d4[address(msg.sender)] < stor4.length
    require uint8(stor568A[stor3[address(msg.sender)]].field_160)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (3 * stor1.length) + 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                stor[idx + sha3(mem[0]) + 1] = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    stor[idx + sha3(mem[0]) + 2] = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].length:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    idx = idx + 3
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                stor[s + sha3(mem[0]) + 2] = 0
                if 31 < stor[s + sha3(mem[0]) + 2].length:
                    mem[0] = s + sha3(mem[0]) + 2
                    t = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                s = s + 3
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    require stor1.length < stor1.length
    stor1[stor1.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((3 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][] = Array(len=arg2.length, data=arg2[all])
    stor[sha3((3 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)][] = Array(len=arg3.length, data=arg3[all])
    sub_a92a83ef = stor1.length + 1
    return stor1.length
}

function sub_30658bef(?) payable {
    require arg1 < stor1.length
    mem[224] = stor1[arg1].field_0
    idx = 224
    s = 0
    while stor1[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor1[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + 224] = stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length
    mem[stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + 256] = stor[sha3((3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)]
    idx = stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + 256
    s = 0
    while stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 288] = stor[sha3((3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)]
    idx = stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 288
    s = 0
    while stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1[arg1].length, data=mem[224 len stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 32], stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length, mem[stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 288 len stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + 32 % 32)]), 
           stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + 128,
           stor1[arg1].length + (floor32(stor1[arg1].length - 1) + -stor1[arg1].length + 32 % 32) + stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 160
}



}
