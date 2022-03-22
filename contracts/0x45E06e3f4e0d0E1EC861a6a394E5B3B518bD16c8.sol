contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 1
    stor2 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[52 len 1680]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
array of struct stor1;
uint256 sub_453d3fe1;
address stor3;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;

function sub_453d3fe1(?) payable {
    return sub_453d3fe1
}

function _fallback() payable {
  stop
}

function sub_afffa222(?) payable {
    uint256(stor0) = arg1 or Mask(248, 8, uint256(stor0))
    return 1
}

function sub_a4fe8924(?) payable {
    require stor3 == msg.sender
    call arg1.0x229320ca with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all]), arg2.length + 96
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if uint8(stor0):
        stor1.length++
        if not stor1.length > stor1.length + 1:
            address(stor1[stor1.length].field_0) = arg1
        else:
            mem[0] = 1
            idx = 4 * stor1.length + 1
            while sha3(1) + (4 * stor1.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].length:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    idx = idx + 4
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 2]) = 0
                if 31 < stor[s + sha3(mem[0]) + 2].length:
                    mem[0] = s + sha3(mem[0]) + 2
                    t = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                s = s + 4
                continue 
            address(stor1[stor1.length].field_0) = arg1
            Mask(96, 0, stor1[stor1.length].field_160) = 0
        uint256(stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor1[stor1.length].field_768) = arg4
        sub_453d3fe1++
    return 1
}

function logs(uint256 arg1) payable {
    require arg1 < stor1.length
    mem[256] = uint256(stor[sha3((4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)])
    idx = 256
    s = 0
    while stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 256] = stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length
    mem[stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 288] = uint256(stor[sha3((4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)])
    idx = stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 288
    s = 0
    while stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1].field_0), 
           Array(len=stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length, data=mem[256 len stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + 32 % 32) + 32]),
           stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + (floor32(stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length - 1) + -stor[(4 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 32 % 32) + 160,
           storB10E[arg1]
}



}
