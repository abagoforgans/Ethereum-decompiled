contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1302]




// =====================  Runtime code  =====================


uint256 sub_175a0b96;
array of struct publicKey;
array of struct signature;

function sub_175a0b96(?) payable {
    return sub_175a0b96
}

function getPublicKey() payable {
    return publicKey[0 len publicKey.length].field_0
}

function getSignature() payable {
    return signature[0 len signature.length].field_0
}

function _fallback() payable {
  stop
}

function sub_f1de8ccb(?) payable {
    sub_175a0b96 = arg1
    publicKey[].field_0 = Array(len=arg2.length, data=arg2[all])
    signature[].field_0 = Array(len=arg3.length, data=arg3[all])
    emit 0xd441edee: sub_175a0b96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = uint256(publicKey.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 224
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + publicKey.length + 224 > idx + 32:
        mem[idx + 32] = publicKey[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x95d85015: Array(len=publicKey.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len publicKey.length + (floor32(publicKey.length - 1) + -publicKey.length + 32 % 32)])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = uint256(signature.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 224
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + signature.length + 224 > idx + 32:
        mem[idx + 32] = signature[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x95d85015: Array(len=signature.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len signature.length + (floor32(signature.length - 1) + -signature.length + 32 % 32)])
}



}
