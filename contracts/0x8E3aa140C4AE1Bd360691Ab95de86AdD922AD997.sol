contract main {


// =======================  Init code  ======================


address stor0;
bool stor11; offset 256
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint32 stor11; offset 24
uint256 stor12;
uint256 stor24;
uint256 stor25;

function _fallback() payable {
    stor0 = 0xeb04e1545a488a5018d2b5844f564135211d3696
    stor24 = 1
    stor25 = this.address or Mask(96, 160, stor25)
    uint8(stor11.field_0) = 30
    uint8(stor11.field_8) = 60
    uint8(stor11.field_16) = 60
    stor11.field_24 % 16777216 = 0
    stor11.field_256 % 1 = 0
    stor11.field_256 % 1 = 0
    stor11.field_256 % 1 = 0
    stor12 = block.number + 400000
    return code.data[139 len 6434]
}



// =====================  Runtime code  =====================


#
#  - sub_08bda95e(?)
#  - sub_4238c1e4(?)
#
const GetContractAddr = address(this.address)


address stor0;
mapping of struct sub_39184c72;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint32 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint64 stor10;
uint8 stor11; offset 24
uint8 stor11; offset 32
uint8 stor11; offset 40
uint32 stor11; offset 24
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint32 stor13;
uint256 stor13; offset 24
uint256 stor13; offset 16
uint8 stor14;
uint256 stor14;
uint256 stor15;
address stor16;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
array of uint256 stor23;
uint256 stor24;
address stor2A32; offset 8
address stor4DB6; offset 8
address stor7DFE; offset 8
address storD9D1; offset 8
address storEDC9; offset 8

function sub_39184c72(?) payable {
    return uint8(sub_39184c72[arg1].field_0), sub_39184c72[arg1].field_8
}

function _fallback() payable {
  stop
}

function sub_3a9b1f89(?) payable {
    require msg.sender == stor0
    require block.number <= stor12
    uint8(sub_39184c72[arg1 << 248].field_0) = 1
    Mask(248, 0, sub_39184c72[arg1 << 248].field_8) = Mask(248, 0, arg2)
    sub_39184c72[arg1 << 248].field_256 % 1 = 0
}

function sub_35827a04(?) payable {
    call stor[code.data[6402 len 32]].0xc78785b6 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= 2
    if arg1 != 1:
        if arg1 != 3:
            require 4 == arg1
    if sub_39184c72[1].field_8 != arg3:
        if arg3 != storD9D1:
            if arg3 != stor7DFE:
                require arg3 == storEDC9
    uint256(stor14) = arg1 or Mask(248, 8, uint256(stor14))
    stor15 = arg2
    uint256(stor16) = arg3 or Mask(96, 160, uint256(stor16))
    uint8(stor11.field_32) = 1
    return 1
}

function sub_6b8beb7e(?) payable {
    call stor[code.data[6402 len 32]].0xc78785b6 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= 1000
    require arg1 >= 20
    require arg1 <= 90
    require arg2 >= 20
    require arg2 <= 90
    require arg3 >= 20
    require arg3 <= 90
    require uint8(stor11.field_24) != 1
    uint8(stor13.field_0) = arg1
    uint8(stor13.field_8) = arg2
    Mask(240, 0, stor13.field_16) = Mask(240, 0, arg3)
    Mask(232, 0, stor13.field_24) = Mask(232, 16, arg2) >> 16
    Mask(232, 0, stor13.field_24) = Mask(232, 24, arg1) >> 24
    uint8(stor11.field_40) = 1
    return 1
}

function Clean() payable {
    require uint8(stor11.field_24) != 1
    stor2.length = 0
    if 31 < stor2.length:
        idx = 0
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3.length = 0
    if 31 < stor3.length:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4.length = 0
    if 31 < stor4.length:
        idx = 0
        while stor4.length + 31 / 32 > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10.field_0 % 1099511627776 = 0
    stor13.field_0 % 16777216 = 0
    uint8(stor14) = 0
    stor15 = 0
    address(stor16) = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    stor23.length = 0
    if 31 < stor23.length:
        idx = 0
        while stor23.length + 31 / 32 > idx:
            stor23[idx] = 0
            idx = idx + 1
            continue 
    return 1
}

function Reset() payable {
    require msg.sender == stor0
    call stor[code.data[6402 len 32]].0xc78785b6 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= 10^6
    stor2.length = 0
    if 31 < stor2.length:
        idx = 0
        while stor2.length + 31 / 32 > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3.length = 0
    if 31 < stor3.length:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4.length = 0
    if 31 < stor4.length:
        idx = 0
        while stor4.length + 31 / 32 > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10.field_0 % 1099511627776 = 0
    stor13.field_0 % 16777216 = 0
    uint8(stor14) = 0
    stor15 = 0
    address(stor16) = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    stor23.length = 0
    if 31 < stor23.length:
        idx = 0
        while stor23.length + 31 / 32 > idx:
            stor23[idx] = 0
            idx = idx + 1
            continue 
    stor24++
    stor11.field_24 % 16777216 = 0
}

function sub_05362718(?) payable {
    call stor[code.data[6402 len 32]].0xa45178ed with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] != 0
    call stor2A32.0x2af308ee with:
         gas gas_remaining - 25050 wei
        args stor24, msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 1
    if arg1 != uint8(stor10.field_0):
        if arg1 != uint8(stor10.field_8):
            require uint8(stor10.field_16) == arg1
    require block.number <= stor8
    call stor[code.data[6402 len 32]].0xd910a72b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= 100
    call stor4DB6.0x5def0b10 with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0] * stor5
    require ext_call.success
    if arg1 == uint8(stor10.field_0):
        stor17++
        stor21 += ext_call.return_data[0]
        stor22 += ext_call.return_data[0]
    if arg1 == uint8(stor10.field_8):
        stor18++
        stor22 += ext_call.return_data[0]
    if uint8(stor10.field_16) == arg1:
        stor19++
        stor22 += ext_call.return_data[0]
    stor20++
    call stor2A32.0xec6c58fe with:
         gas gas_remaining - 25050 wei
        args stor24, msg.sender
    require ext_call.success
    return (ext_call.return_data[0] * stor5)
}



}
