contract main {


// =======================  Init code  ======================


uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    return code.data[45 len 2784]
}



// =====================  Runtime code  =====================


const sub_b2e1fb34(?) = 1


mapping of uint256 sub_024f1b69;
uint256 stor1;
uint8 stor2;
array of struct sub_58c37234;
array of uint256 contractName;
array of uint256 description;

function sub_024f1b69(?) {
    return sub_024f1b69[arg1]
}

function initialized() {
    return bool(stor2)
}

function sub_58c37234(?) {
    return sub_58c37234[0 len sub_58c37234.length].field_0
}

function sub_6e12fa0f(?) {
    return bool(stor2)
}

function Description() {
    return description[0 len description.length]
}

function ContractName() {
    return contractName[0 len contractName.length].field_0
}

function _fallback() payable {
    revert
}

function newId() {
    stor1++
    sub_024f1b69[stor1] = sha3(stor1 + 1)
    return sha3(stor1 + 1)
}

function sub_8c49c3e2(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 25
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 249] = arg1.length << 248
    mem[ceil32(arg1.length) + 250 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 282 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(mem[ceil32(arg1.length) + 224 len 7], 1847612265, uint8(arg1.length), call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 250 len arg1.length % 32]) 
    require sha256hash.result
    hash = sha256hash(hash) 
    signer = erecover(hash, arg3 << 248, arg4, arg5) 
    require erecover.result
    return (arg2 == address(signer))
}

function Init() {
    if stor2:
        return 0
    bool(sub_58c37234.length) = 0
    sub_58c37234.length.field_1 = 15
    sub_58c37234.length.field_8 = 'String Validate' / 256
    idx = 0
    while sub_58c37234.length + 31 / 32 > idx:
        sub_58c37234[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(contractName.length) = 0
    contractName.length.field_1 = 25
    contractName.length.field_8 = 'Plugin.StringValidate.sol' / 256
    idx = 0
    while contractName.length + 31 / 32 > idx:
        contractName[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = 'Used for creating and validating'
    mem[288] = ' Bitcoin based signatures'
    description.length = 115
    s = 0
    idx = 256
    while 313 > idx:
        description[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while description.length + 31 / 32 > idx:
        description[idx] = 0
        idx = idx + 1
        continue 
    mem[512] = uint256(sub_58c37234.field_0)
    idx = 512
    s = 0
    while sub_58c37234.length + 512 > idx + 32:
        mem[idx + 32] = sub_58c37234[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xbe2de3f4: 96, 160, bool(stor2), 15, 'String Validate', sub_58c37234.length, mem[512 len sub_58c37234.length + (floor32(sub_58c37234.length - 1) + -sub_58c37234.length + 32 % 32)]
    stor2 = 1
    mem[512] = uint256(sub_58c37234.field_0)
    idx = 512
    s = 0
    while sub_58c37234.length + 512 > idx + 32:
        mem[idx + 32] = sub_58c37234[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xbe2de3f4: 96, 160, 1, 25, 'Plugin loading complete: ', sub_58c37234.length, mem[512 len sub_58c37234.length + (floor32(sub_58c37234.length - 1) + -sub_58c37234.length + 32 % 32)]
    return bool(stor2)
}



}
