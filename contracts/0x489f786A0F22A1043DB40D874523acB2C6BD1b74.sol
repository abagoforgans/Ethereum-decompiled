contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = code.data[625 len 32]
    return code.data[65 len 560]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of address stor1;
address stor2;
uint256 stor2;
uint256 stor3;

function shutdown() payable {
    require address(stor0) == msg.sender
    selfdestruct(address(stor0))
}

function _fallback() payable {
  stop
}

function sub_53d52a5f(?) payable {
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function transferOwnership(address arg1) payable {
    require address(stor0) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function withdraw() payable {
    require address(stor0) == msg.sender
    call address(stor0) with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function sub_777a41ca(?) payable {
    require address(stor2) != 0
    if 0 == stor1[address(msg.sender)]:
        if address(stor0) != msg.sender:
            require msg.value >= stor3
    call address(stor2).0x656f9fe3 with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}
