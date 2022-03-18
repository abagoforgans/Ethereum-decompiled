contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = this.address or Mask(96, 160, stor4)
    return code.data[36 len 940]
}



// =====================  Runtime code  =====================


uint256 get;
address stor1;
array of uint256 2;

function get() payable {
    return get
}

function get2() payable {
    return 2[0 len 2.length]
}

function sub_8b282947(?) payable {
    mem[128 len arg2.length] = arg2[all]
    get = arg1
    2.length = (2 * arg2.length) + 1
    s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
    while (2.length + 31 / 32) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor1 with:
           value 5 * 10^17 wei
             gas 0 wei
    if get != 999:
    selfdestruct(stor1)
}

function c() payable {
    stor1 = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858
    if 100 == get:
        call stor1 with:
           value 5 * 10^17 wei
             gas 0 wei
    if get != 999:
    selfdestruct(stor1)
}

function _fallback() payable {
    2.length = (2 * calldata.size) + 1
    s = 0
    idx = 0
    while calldata.size > idx:
        2[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, calldata.size + 31) >> 5
    while 2.length + 31 / 32 > idx:
        2[idx] = 0
        idx = idx + 1
        continue 
}



}
