contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    mem[96 len -1908] = code.data[2389 len -1908]
    mem[64] = -1812
    stor0 = msg.sender or Mask(96, 160, stor0)
    require mem[108 len 20] != 0
    stor3 = mem[96]
    require mem[140 len 20] != 0
    stor4 = mem[128]
    mem[0] = 1
    stor1.length = (2 * mem[mem[160] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[481 len 1908]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of uint256 sub_779f6350;
array of uint256 message;
address sub_b4c3999fAddress;
uint256 stor3;
address sub_e8e01304Address;
uint256 stor4;

function sub_779f6350(?) payable {
    return sub_779f6350[0 len sub_779f6350.length]
}

function sub_b4c3999f(?) payable {
    return address(sub_b4c3999fAddress)
}

function message() payable {
    return message[0 len message.length]
}

function sub_e8e01304(?) payable {
    return address(sub_e8e01304Address)
}

function _fallback() payable {
  stop
}

function sub_1cd3e858(?) payable {
    require msg.sender == address(stor0)
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function sub_38dbb929(?) payable {
    require msg.sender == address(stor0)
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function sub_272f04ab(?) payable {
    call address(sub_b4c3999fAddress).0x644fd8e9 with:
         gas gas_remaining - 25050 wei
        args arg1, address(msg.sender), 0
    require ext_call.success
    return ext_call.return_data[0]
}

function setOwner(address arg1) payable {
    require msg.sender == address(stor0)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    call address(sub_b4c3999fAddress).0x13af4035 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
}

function publish(string arg1, string arg2) payable {
    require 46 == arg1.length
    require arg2.length != 0
    call address(sub_b4c3999fAddress).0x7a805eaa with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all]), arg1.length + 128, msg.sender
    require ext_call.success
    emit Publish(msg.sender, ext_call.return_data[0]);
    return ext_call.return_data[0]
}

function sub_d1b5e0cb(?) payable {
    call address(sub_b4c3999fAddress).0x969cb7c3 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] != 0
    call address(sub_e8e01304Address).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(ext_call.return_data[0]), 1
    require ext_call.success
    require ext_call.return_data[0]
    call address(sub_b4c3999fAddress).0x644fd8e9 with:
         gas gas_remaining - 25050 wei
        args arg1, msg.sender, 1
    require ext_call.success
    emit 0xc6b84cb9: 1, ext_call.return_data[0], msg.sender, arg1
    return ext_call.return_data[0]
}

function sub_e5ffb07a(?) payable {
    call address(sub_b4c3999fAddress).0x969cb7c3 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] != 0
    call address(sub_e8e01304Address).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(ext_call.return_data[0]), 1
    require ext_call.success
    require ext_call.return_data[0]
    call address(sub_b4c3999fAddress).0x644fd8e9 with:
         gas gas_remaining - 25050 wei
        args arg1, msg.sender, -1
    require ext_call.success
    emit 0xc6b84cb9: -1, ext_call.return_data[0], msg.sender, arg1
    return ext_call.return_data[0]
}



}
