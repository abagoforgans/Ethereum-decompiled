contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xe109ecb193841af9da3110c80fdd365d1c23be2a
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[74 len 545]
}



// =====================  Runtime code  =====================


address stor1;
uint256 counter;
address sub_5c6458c2Address;
uint256 stor3;
uint256 sub_59b19b7a;

function sub_59b19b7a(?) payable {
    return sub_59b19b7a
}

function sub_5c6458c2(?) payable {
    return address(sub_5c6458c2Address)
}

function counter() payable {
    return counter
}

function _fallback() payable {
  stop
}

function repeat() payable {
    require eth.balance(this.address) != 0
    require block.number > sub_59b19b7a
    call stor1.scheduleCall(address rg1, bytes4 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint256 rg6, uint256 rg7) with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
        args address(this.address), 0x7429c08600000000000000000000000000000000000000000000000000000000, (block.hash(block.number) % 240) + block.number + 325, 10^6, 255, (block.hash(block.number) % 4 * 10^15) + 10^15, 0
    require ext_call.success
    call stor1.isKnownCall(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(ext_call.return_data[0])
    if ext_call.return_data[0]:
        counter++
        sub_59b19b7a = (block.hash(block.number) % 240) + block.number + 325
        uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
}



}
