contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
bool stor4; offset 256
uint8 stor4;
uint16 stor4; offset 8
uint256 stor4; offset 24
uint256 stor4;
uint256 stor8;
array of uint256 stor9;
uint256 stor11;

function _fallback() payable {
    mem[96 len -2119] = code.data[2434 len -2119]
    mem[64] = -2023
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = mem[96]
    stor2 = mem[128]
    uint8(stor4.field_0) = 1
    uint8(stor4.field_0) = uint8(uint256(stor4.field_0) and -1099494850816)
    uint16(stor4.field_8) = 0
    Mask(232, 0, stor4.field_24) = Mask(232, 24, uint256(stor4.field_0) and -1099494850816) >> 24
    stor4.field_256 % 1 = 0
    stor11 = 1
    stor3 = mem[160]
    stor9.length = (2 * mem[mem[192] + 96]) + 1
    s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    while (stor9.length + 31 / 32) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor8 = 0
    return code.data[315 len 2119]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor3;
bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
address stor4; offset 40
uint256 stor4; offset 40
uint256 stor4; offset 32
array of uint256 stor5;
uint256 stor8;
array of struct stor9;
array of struct stor10;
uint256 stor11;

function killContract() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function checkStatus() payable {
    return uint8(stor4.field_0), uint8(stor4.field_0), uint8(stor4.field_0), address(stor4.field_40)
}

function sub_761a478c(?) payable {
    if msg.sender == stor0:
        if 1 == uint8(stor4.field_8):
            call address(stor4.field_40) with:
               value stor3 wei
                 gas 0 wei
}

function sub_3a45dc0a(?) payable {
    if msg.sender == stor0:
        if 0 == uint8(stor4.field_16):
            if 1 == uint8(stor4.field_0):
                if 1 == uint8(stor4.field_8):
                    call arg1 with:
                       value stor3 wei
                         gas 0 wei
                    uint8(stor4.field_16) = 1
}

function sub_b2498df9(?) payable {
    if uint8(stor4.field_8) != 1:
        mem[288] = mem[306 len 14]
        return 0, 64, 14, mem[288]
    if uint8(stor4.field_16) != 0:
        mem[288] = mem[306 len 14]
        return 0, 64, 14, mem[288]
    if arg1 <= 0:
        mem[288] = mem[312 len 8]
        return 1, Array(len=8, data=mem[288])
    if arg1 > stor11:
        mem[288] = mem[312 len 8]
        return 1, Array(len=8, data=mem[288])
    mem[288] = mem[305 len 15]
    return 0, 64, 15, mem[288]
}

function sub_f832db91(?) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = stor9.length
    mem[0] = 9
    mem[192] = uint256(stor9.field_0)
    idx = 192
    s = 0
    while stor9.length + 160 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor9.length) + ceil32(stor10.length) + 224
    mem[ceil32(stor9.length) + 192] = stor10.length
    mem[ceil32(stor9.length) + 224] = uint256(stor10.field_0)
    idx = ceil32(stor9.length) + 224
    s = 0
    while ceil32(stor9.length) + stor10.length + 192 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 288] = stor8
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 320] = stor3
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 224] = 128
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 352] = stor9.length
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 384 len stor9.length] = mem[192 len stor9.length]
    mem[ceil32(stor9.length) + ceil32(stor10.length) + 256] = stor9.length + 160
    mem[stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + 384] = stor10.length
    mem[stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + 416 len stor10.length] = mem[ceil32(stor9.length) + 224 len stor10.length]
    if not stor10.length % 32:
        return Array(len=stor9.length, data=mem[192 len stor9.length], stor10.length, mem[ceil32(stor9.length) + 224 len stor10.length]), 
               stor9.length + 160,
               stor8,
               stor3
    mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + 416] = mem[floor32(stor10.length) + stor9.length + ceil32(stor9.length) + ceil32(stor10.length) + -stor10.length % 32 + 448 len stor10.length % 32]
    return Array(len=stor9.length, data=mem[192 len stor9.length], stor10.length, mem[ceil32(stor9.length) + ceil32(stor10.length) + stor9.length + 416 len floor32(stor10.length) + 32]), 
           stor9.length + 160,
           stor8,
           stor3
}

function sub_ad1985be(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg5.length
    mem[ceil32(arg2.length) + 160 len arg5.length] = arg5[all]
    if stor0 == msg.sender:
        if uint8(stor4.field_16) != 1:
            if uint8(stor4.field_8) != 1:
                if 1 == uint8(stor4.field_0):
                    uint8(stor4.field_8) = 1
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, arg3)
                    Mask(216, 0, stor4.field_40) = 0
                    stor4.field_256 % 1 = 0
                    stor5.length = (2 * arg2.length) + 1
                    s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                    idx = 128
                    while arg2.length + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = (Mask(251, 0, arg2.length + 31) >> 5) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                    while (stor5.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    Mask(216, 0, stor4.field_40) = Mask(216, 0, arg1)
                    stor8 += arg4
                    stor10.length = (2 * arg5.length) + 1
                    s = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
                    idx = ceil32(arg2.length) + 160
                    while ceil32(arg2.length) + arg5.length + 160 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = (Mask(251, 0, arg5.length + 31) >> 5) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58
                    while (stor10.length + 31 / 32) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
}



}
