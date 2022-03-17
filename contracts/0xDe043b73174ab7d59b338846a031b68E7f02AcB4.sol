contract main {


// =======================  Init code  ======================


function _fallback() payable {
    mem[96 len -346] = code.data[472 len -346]
    mem[64] = -250
    _4 = mem[mem[96] + 96]
    mem[-250 len mem[mem[96] + 96]] = mem[mem[96] + 128 len mem[mem[96] + 96]]
    mem[_4 - 250] = 0
    stor[sha3(mem[-250 len _4 + 32])] = 1
    return code.data[126 len 346]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
  stop
}

function register(string arg1) payable {
    stor0[arg1[all]] = 1
}

function check(string arg1) payable {
    stor0[arg1[all]] = 1
    return 1
}



}
