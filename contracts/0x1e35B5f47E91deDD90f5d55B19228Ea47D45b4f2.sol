contract main {


// =======================  Init code  ======================


uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = code.data[3340 len 32]
    stor3 = msg.sender or Mask(96, 160, stor3)
    create contract with 0 wei
                    code: code.data[147 len 1723], address(this.address), code.data[3352 len 20]
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    return code.data[1870 len 1470]
}



// =====================  Runtime code  =====================


const getAddress = address(this.address)


mapping of address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;

function _fallback() payable {
  stop
}

function checkAddress(address arg1) payable {
    return (stor2 == arg1)
}

function validate(address arg1) payable {
    require stor2 == msg.sender
    if stor1[address(arg1)] != 1:
        return 0
    return 1
}

function sub_62441aee(?) payable {
    require stor2 == msg.sender
    if 0 == address(stor0[arg1[all]]):
        return 0
    address(stor0[arg1[all]]) = 0
    stor1[address(stor0[arg1[all]])] = 1
    return 1
}

function sub_54a38006(?) payable {
    require stor2 == msg.sender
    uint256(stor0[arg1[all]]) = arg2 or Mask(96, 160, uint256(stor0[arg1[all]]))
    stor1[address(arg2)] = 1
    call address(arg2).0x6b718db9 with:
         gas gas_remaining - 25050 wei
        args stor3
    require ext_call.success
    call address(arg2).0xc174dce3 with:
         gas gas_remaining - 25050 wei
        args stor2
    return ext_call.return_data[0]
}

function sub_229320ca(?) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require stor2 == msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    if 0 == address(stor0[arg1[all]]):
        return 0
    call address(stor0[arg1[all]]).0x5f474a8 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0xba061afa with:
         gas gas_remaining - 25050 wei
    call address(stor0[arg1[all]]).0xbddeab77 with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        return 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        call address(stor0[arg1[all]]) with:
             gas gas_remaining - 25050 wei
            args arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 160] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        call address(stor0[arg1[all]]).mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4] with:
             gas gas_remaining - 25050 wei
            args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(arg2.length) + 28]
    return ext_call.success
}



}
