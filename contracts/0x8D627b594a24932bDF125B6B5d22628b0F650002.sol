contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 638]




// =====================  Runtime code  =====================


array of uint256 name;

function name() {
    return name[0 len name.length]
}

function _fallback() payable {
  stop
}

function set(string arg1) {
    name[] = Array(len=arg1.length, data=arg1[all])
}



}
