contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -1282] = code.data[1509 len -1282]
    mem[64] = -1186
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[227 len 1282]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
array of uint256 description;
mapping of address stor3;
mapping of address stor4;
mapping of address stor5;

function description() payable {
    return description[0 len description.length]
}

function owner() payable {
    return address(owner)
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_21569986(?) payable {
    require address(owner) == msg.sender
    call arg1.hash() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    address(stor3[ext_call.return_data[0]]) = 0
}

function sub_32f45242(?) payable {
    require address(owner) == msg.sender
    call arg1.hash() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    address(stor5[ext_call.return_data[0]]) = 0
}

function sub_ade3c3f6(?) payable {
    require address(owner) == msg.sender
    call arg1.hash() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    address(stor4[ext_call.return_data[0]]) = 0
}

function sub_28d8adc3(?) payable {
    require address(owner) == msg.sender
    call arg1.hash() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor4[ext_call.return_data[0]]) = arg1 or Mask(96, 160, uint256(stor4[ext_call.return_data[0]]))
}

function sub_60f81359(?) payable {
    require address(owner) == msg.sender
    call arg1.hash() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3[ext_call.return_data[0]]) = arg1 or Mask(96, 160, uint256(stor3[ext_call.return_data[0]]))
}

function sub_647f8332(?) payable {
    require address(owner) == msg.sender
    call arg1.hash() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor5[ext_call.return_data[0]]) = arg1 or Mask(96, 160, uint256(stor5[ext_call.return_data[0]]))
}



}
