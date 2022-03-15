contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[672 len 347]
    stor1 = create.new_address or Mask(96, 160, stor1)
    return code.data[89 len 583]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_e3767876(?) payable {
    stor0[arg1] = arg2
}

function sub_2ef9db13(?) payable {
    call stor1 with:
       funct Mask(32, 224, 'add') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'add'), sha3(block.hash(block.number), stor1, 'add', sha3(arg1, arg2)), arg1, arg2
    return stor0[block.hash(block.number)][stor1]['add'][('map', ('param', 'arg1'), ('param', 'arg2'))]
}



}
