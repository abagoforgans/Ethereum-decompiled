contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[221 len 32]
    return code.data[66 len 155]
}



// =====================  Runtime code  =====================


address owner;
address sub_4b18f064Address;

function sub_4b18f064(?) payable {
    return sub_4b18f064Address
}

function owner() payable {
    return owner
}

function sub_eb42d424(?) payable {
    call sub_4b18f064Address with:
       value 15 * eth.balance(this.address) / 100 wei
         gas 0 wei
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}



}
