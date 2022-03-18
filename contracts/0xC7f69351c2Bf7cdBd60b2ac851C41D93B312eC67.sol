contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    return code.data[63 len 741]
}



// =====================  Runtime code  =====================


const local = 1337


address stor0;

function kill() payable {
    require tx.origin == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_bf45554e(?) payable {
    mem[ceil32(arg1.length) + 256 len arg1.length] = arg1[all]
    emit 0xc47613ef: Array(len=arg1.length, data=arg1[all]), arg2
    mem[ceil32(arg1.length) + 288] = mem[ceil32(arg1.length) + 314 len 6]
    return Array(len=6, data=mem[ceil32(arg1.length) + 288])
}



}
