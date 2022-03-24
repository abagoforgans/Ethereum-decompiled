contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 500000
    stor3 = 1
    if msg.sender == msg.sender:
        if code.data[2405 len 20] != 0:
            if 0 == address(stor1):
                call address(code.data[2393 len 32]).0xe001f841 with:
                     gas gas_remaining - 25050 wei
                    args 'datafeedcoordinator', this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    uint256(stor1) = code.data[2393 len 32] or Mask(96, 160, uint256(stor1))
            else:
                call address(stor1).0x32a16f4e with:
                     gas gas_remaining - 25050 wei
                    args 'datafeedcoordinator'
                require ext_call.success
                if not ext_call.return_data[0]:
                    call address(code.data[2393 len 32]).0xe001f841 with:
                         gas gas_remaining - 25050 wei
                        args 'datafeedcoordinator', this.address
                    require ext_call.success
                    if ext_call.return_data[0]:
                        uint256(stor1) = code.data[2393 len 32] or Mask(96, 160, uint256(stor1))
    return code.data[475 len 1918]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint256 sub_ffd02891;
uint8 stor3;
array of uint256 stor4;
uint8 stor67;
uint256 stor67; offset 3
uint256 stor67;
mapping of address stor68;

function sub_3ea06187(?) payable {
    return bool(stor3)
}

function sub_ffd02891(?) payable {
    return sub_ffd02891
}

function _fallback() payable {
  stop
}

function sub_a1741585(?) payable {
    if stor0 == msg.sender:
        sub_ffd02891 = arg1
}

function sub_f4709dac(?) payable {
    s = 0
    idx = 0
    while idx < uint256(stor67.field_0):
        require idx < 500
        mem[0] = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
        mem[32] = 68
        if address(stor68[stor4[0.125 / idx] / 256^(4 * idx % 8) << 224]) != arg1:
            s = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_78cded60(?) payable {
    mem[96] = 0
    mem[128 len 15968] = 0
    mem[16096] = 0
    mem[16128 len 15968] = 0
    idx = 0
    while idx < uint256(stor67.field_0):
        require idx < 500
        mem[(32 * idx) + 96] = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
        mem[0] = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
        mem[32] = 68
        mem[(32 * idx) + 16096] = address(stor68[stor4[0.125 / idx] / 256^(4 * idx % 8) << 224])
        idx = idx + 1
        continue 
    return mem[96 len 16000], mem[16096 len 16000]
}

function sub_ddd25ad2(?) payable {
    if stor0 == tx.origin:
        if Mask(32, 224, arg1) != 0:
            uint256(stor68[Mask(32, 224, arg1)]) = arg2 or Mask(96, 160, uint256(stor68[Mask(32, 224, arg1)]))
            if address(stor68[Mask(32, 224, arg1)]):
            else:
                require uint256(stor67.field_0) < 500
                stor4[Mask(253, 0, stor67.field_3)] = arg1 * 256^(4 * stor67.field_0 % 8) or stor4[Mask(253, 0, stor67.field_3)] and !(test266151307() * 256^(4 * stor67.field_0 % 8))
                uint256(stor67.field_0)++
            if address(stor1) != 0:
                call address(stor1).0xfa58c7d with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
}

function sub_662cd1bd(?) payable {
    s = 0
    idx = 0
    while idx < uint256(stor67.field_0):
        require idx < 500
        mem[0] = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
        mem[32] = 68
        if address(stor68[stor4[0.125 / idx] / 256^(4 * idx % 8) << 224]) != msg.sender:
            s = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
            idx = idx + 1
            continue 
        call address(stor1).0x21f8a721 with:
             gas gas_remaining - 25050 wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x9b5254eb with:
             gas gas_remaining - 25050 wei
            args address(arg1), arg2
        return bool(ext_call.return_data[0])
    return 0
}

function sub_ea9588a6(?) payable {
    s = 0
    idx = 0
    while idx < uint256(stor67.field_0):
        require idx < 500
        mem[0] = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
        mem[32] = 68
        if address(stor68[stor4[0.125 / idx] / 256^(4 * idx % 8) << 224]) != msg.sender:
            s = stor4[0.125 / idx] / 256^(4 * idx % 8) << 224
            idx = idx + 1
            continue 
        call address(stor1).0x21f8a721 with:
             gas gas_remaining - 25050 wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).collectFees(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg1), sub_ffd02891
        return bool(ext_call.return_data[0])
    return 0
}

function setCoordinator(address arg1) payable {
    if stor0 == msg.sender:
        if arg1 != 0:
            if 0 == address(stor1):
                call arg1.0xe001f841 with:
                     gas gas_remaining - 25050 wei
                    args 'datafeedcoordinator', this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
            else:
                call address(stor1).0x32a16f4e with:
                     gas gas_remaining - 25050 wei
                    args 'datafeedcoordinator'
                require ext_call.success
                if not ext_call.return_data[0]:
                    call arg1.0xe001f841 with:
                         gas gas_remaining - 25050 wei
                        args 'datafeedcoordinator', this.address
                    require ext_call.success
                    if ext_call.return_data[0]:
                        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}



}
