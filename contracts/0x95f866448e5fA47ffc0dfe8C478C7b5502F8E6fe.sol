contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 8
uint256 stor5;

function _fallback() payable {
    stor0 = 0xeb04e1545a488a5018d2b5844f564135211d3696
    stor2 = 10^18
    stor1 = block.number + 400000
    stor5 = 2500
    uint8(stor3.field_0) = 1
    uint8(stor3.field_8) = 1
    Mask(248, 0, stor3.field_8) = 0
    return code.data[109 len 2303]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 8
uint256 stor3;
mapping of struct sub_c53177e7;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor140A; offset 8
address stor2645; offset 8
address storA502; offset 8
uint8 storEB3E;
address storEB3E; offset 8

function sub_c53177e7(?) payable {
    return uint8(sub_c53177e7[arg1].field_0), address(sub_c53177e7[arg1].field_8)
}

function sub_2a53e2ae(?) payable {
    return stor6, stor7, stor8, stor9
}

function sub_110cbf71(?) payable {
    return uint8(stor3.field_0), uint8(stor3.field_0), stor5
}

function UpdatePrice(uint256 arg1) payable {
    if msg.sender == address(stor[code.data[2271 len 32]].field_8):
        require 1 == uint8(stor[code.data[2271 len 32]].field_0)
        stor5 = arg1
    if msg.sender == stor140A:
        stor5 = arg1
}

function sub_07554980(?) payable {
    require msg.sender == stor0
    require block.number <= stor1
    uint8(sub_c53177e7[arg1 << 248].field_0) = 1
    Mask(248, 0, sub_c53177e7[arg1 << 248].field_8) = Mask(248, 0, arg2)
    sub_c53177e7[arg1 << 248].field_256 % 1 = 0
}

function sub_32166c0e(?) payable {
    if msg.sender == address(stor[code.data[2271 len 32]].field_8):
        require 1 == uint8(stor[code.data[2271 len 32]].field_0)
        Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
    if msg.sender == address(storEB3E.field_8):
        Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
}

function sub_3bc84219(?) payable {
    if msg.sender == address(stor[code.data[2271 len 32]].field_8):
        require 1 == uint8(stor[code.data[2271 len 32]].field_0)
        uint256(stor3.field_0) = arg1 or Mask(248, 8, uint256(stor3.field_0))
    if msg.sender == address(storEB3E.field_8):
        require 1 == uint8(storEB3E.field_0)
        uint256(stor3.field_0) = arg1 or Mask(248, 8, uint256(stor3.field_0))
}

function _fallback() payable {
    require uint8(stor3.field_0) != 1
    require msg.value / stor2 >= 1
    call stor2645.'U-3' with:
         gas gas_remaining - 25050 wei
        args msg.value / stor2 * stor5, msg.sender
    require ext_call.success
    call stor2645 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    stor6 += msg.value / stor2
    stor8++
    return (msg.value / stor2 * stor5)
}

function sub_8bcba441(?) payable {
    if storA502 != msg.sender:
        if address(sub_c53177e7[13].field_8) == msg.sender:
            if 1 == arg1:
                uint8(stor[code.data[2271 len 32]].field_0) = 1
    else:
        if 0 == arg1:
            uint8(stor[code.data[2271 len 32]].field_0) = 0
        if address(sub_c53177e7[13].field_8) == msg.sender:
            if 1 == arg1:
                uint8(stor[code.data[2271 len 32]].field_0) = 1
}

function Sale(uint256 arg1) payable {
    require uint8(stor3.field_8) != 1
    require arg1 >= 1000
    call stor2645.Balance() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call stor2645.0x3a9ec0c9 with:
         gas gas_remaining - 25050 wei
    call address(sub_c53177e7[5].field_8).0x16978fc5 with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(sub_c53177e7[8].field_0), arg1
    call stor2645.0xaa3af with:
         gas gas_remaining - 25050 wei
        args arg1 * ext_call.return_data[0] / ext_call.return_data[0], msg.sender
    call stor2645.0x47583a58 with:
         gas gas_remaining - 25050 wei
        args arg1
    stor7 += arg1 * ext_call.return_data[0] / ext_call.return_data[0] / stor2
    stor9++
    return (arg1 * ext_call.return_data[0] / ext_call.return_data[0] / stor2)
}



}
