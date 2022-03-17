contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() payable {
    stor0['sha3'] = 1
    return code.data[127 len 478]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
  stop
}

function register(string arg1) payable {
  stop
}

function check(string arg1) payable {
    if stor0[arg1[all]] != 1:
        return 0
    return 1
}



}
