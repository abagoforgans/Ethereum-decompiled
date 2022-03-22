contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[601 len 32]
    return code.data[69 len 532]
}



// =====================  Runtime code  =====================


address ownerAddr;
address sub_8e913f90Address;

function sub_8e913f90(?) payable {
    return sub_8e913f90Address
}

function ownerAddr() payable {
    return ownerAddr
}

function die() payable {
    if ownerAddr != msg.sender:
    selfdestruct(ownerAddr)
}

function _fallback() payable {
  stop
}

function sub_511f8464(?) payable {
    if ownerAddr == msg.sender:
        call sub_8e913f90Address.0xa4ece52c with:
             gas gas_remaining - 25050 wei
        require ext_call.success
}

function sub_01effa07(?) payable {
    call sub_8e913f90Address.0x4f3d057a with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
}



}
