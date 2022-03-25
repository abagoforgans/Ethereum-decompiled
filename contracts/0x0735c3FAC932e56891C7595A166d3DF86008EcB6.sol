contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1183]




// =====================  Runtime code  =====================


array of uint256 sub_a814b68d;
array of uint256 publicKey;
array of uint256 sub_70629548;

function sub_70629548(?) payable {
    return sub_70629548[arg1][0 len sub_70629548[arg1].length]
}

function publicKey(uint256 arg1) payable {
    return publicKey[arg1][0 len publicKey[arg1].length]
}

function sub_a814b68d(?) payable {
    require arg1 < sub_a814b68d.length
    return sub_a814b68d[arg1]
}

function _fallback() payable {
  stop
}

function sub_f1de8ccb(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require 0 < sub_a814b68d.length
    sub_a814b68d = arg1
    require 0 < publicKey.length
    publicKey = (2 * arg2.length) + 1
    s = sha3(0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6)
    idx = 128
    while arg2.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6) + (Mask(251, 0, arg2.length + 31) >> 5)
    while sha3(0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6) + (stor('name', 'stor1', 1).length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    require 0 < sub_70629548.length
    sub_70629548 = (2 * arg3.length) + 1
    s = sha3(0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace)
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (Mask(251, 0, arg3.length + 31) >> 5)
    while sha3(0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (stor('name', 'stor2', 2).length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
