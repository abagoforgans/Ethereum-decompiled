contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x56f2876713c616aa6f84f3cc5cec0ab15da47166
    return code.data[57 len 876]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function set(string arg1, string arg2) payable {
    if stor0 == msg.sender:
        stor1[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function get(string arg1) payable {
    if stor0 != msg.sender:
        return ''
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 160] = 1
    mem[ceil32(arg1.length) + 192] = stor1[arg1[all]].field_0
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor1[arg1[all]].length + 160 > idx:
        mem[idx + 32] = stor1[arg1[all]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1[arg1[all]].length, data=mem[ceil32(arg1.length) + 192 len stor1[arg1[all]].length])
}



}
