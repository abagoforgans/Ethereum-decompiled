contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor5;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor5 = code.data[816 len 32]
    return code.data[57 len 759]
}



// =====================  Runtime code  =====================


address stor2;
uint256 stor2;
mapping of address buyers;
address stor4;
uint256 stor4;
uint256 purchasePrice;

function buyers(address arg1) payable {
    return address(buyers[arg1])
}

function purchasePrice() payable {
    return purchasePrice
}

function shutdown() payable {
    require address(stor2) == msg.sender
    selfdestruct(address(stor2))
}

function _fallback() payable {
  stop
}

function sub_53d52a5f(?) payable {
    require address(stor2) == msg.sender
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function transferOwnership(address arg1) payable {
    require address(stor2) == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function withdraw() payable {
    require address(stor2) == msg.sender
    call address(stor2) with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function sub_777a41ca(?) payable {
    require address(stor4) != 0
    if 0 == address(buyers[address(msg.sender)]):
        if address(stor2) != msg.sender:
            require msg.value >= purchasePrice
    call address(stor4).0x656f9fe3 with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] != 0
    uint256(buyers[address(msg.sender)]) = ext_call.return_data[0] or Mask(96, 160, uint256(buyers[address(msg.sender)]))
    return address(ext_call.return_data[0])
}



}
