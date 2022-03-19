contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = tx.origin or Mask(96, 160, stor1)
    return code.data[63 len 1698]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;

function kill() payable {
    if tx.origin == stor1:
        selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function empty() payable {
    if tx.origin == stor1:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function register(string arg1, string arg2) payable {
    stor0[arg1[all]][Mask(32, 224, sha3(arg1[all], arg2[all], tx.origin))].field_0 = tx.origin or Mask(96, 160, stor0[arg1[all]][Mask(32, 224, sha3(arg1[all], arg2[all], tx.origin))].field_0)
    stor0[arg1[all]][Mask(32, 224, sha3(arg1[all], arg2[all], tx.origin))][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0xbedda667: tx.origin, Array(len=arg1.length, data=arg1[all]), Mask(32, 224, sha3(arg1[all], arg2[all], tx.origin))
}

function sub_785b7e7f(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[160] = stor0[arg1[all]][arg2][1].field_0
    idx = 160
    s = 0
    while stor0[arg1[all]][arg2][1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1[all]][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1[all]][arg2].field_0, 
           Array(len=stor0[arg1[all]][arg2][1].length, data=mem[160 len stor0[arg1[all]][arg2][1].length])
}



}
