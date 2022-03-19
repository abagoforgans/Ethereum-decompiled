contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1138]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;

function getName() payable {
    return name[0 len name.length]
}

function kill() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setName(string arg1) payable {
    name[] = Array(len=arg1.length, data=arg1[all])
}

function sub_2f4b87bd(?) payable {
    call arg2.0xc47f0027 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
}



}
