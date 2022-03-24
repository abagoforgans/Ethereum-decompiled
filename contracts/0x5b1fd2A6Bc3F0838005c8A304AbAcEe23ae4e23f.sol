contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 642]
}



// =====================  Runtime code  =====================


address sub_342e08d0Address;
uint256 stor0;

function sub_342e08d0(?) payable {
    return address(sub_342e08d0Address)
}

function remove() payable {
    if address(sub_342e08d0Address) != msg.sender:
    selfdestruct(address(sub_342e08d0Address))
}

function _fallback() payable {
  stop
}

function sub_ddb8e350(?) payable {
    if address(sub_342e08d0Address) != 0:
        if address(sub_342e08d0Address) != msg.sender:
            return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_3ff03a02(?) payable {
    mem[228] = mem[256 len 4]
    call address(sub_342e08d0Address).getContract(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=4, data=mem[228])
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        return 0
    call address(ext_call.return_data[0]).Send(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args arg1, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
