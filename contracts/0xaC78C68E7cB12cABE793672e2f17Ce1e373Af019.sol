contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x81288b3277fc145f4984627f48944fac5f468064
    return code.data[88 len 202]
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
    call owner with:
       value 50 * eth.balance(this.address) / 100 wei
         gas 0 wei
    call sub_4b18f064Address with:
       value 50 * eth.balance(this.address) / 100 wei
         gas 0 wei
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}



}
