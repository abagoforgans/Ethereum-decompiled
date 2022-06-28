contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 414]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert 
}

function blackList(address arg1) {
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function addToBlackList(address arg1) {
    stor0[address(arg1)].field_0 = arg1 or Mask(96, 160, stor0[address(arg1)].field_0)
    stor0[address(arg1)].field_256++
}



}
