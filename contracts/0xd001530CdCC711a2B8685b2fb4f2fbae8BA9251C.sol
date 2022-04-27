contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor6;

function _fallback() payable {
    stor0 = 60
    stor1 = 0xc70103eddca6cdf02952365bfbcf9a4a76cd2066
    stor2 = 0x5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8
    stor3 = block.timestamp
    stor4 = msg.sender
    stor6 = msg.value
    return code.data[230 len 1952]
}



// =====================  Runtime code  =====================


uint256 lockTime;
address toAddress;
uint256 hash;
uint256 startTime;
address fromAddress;
array of struct key;
uint256 sub_9b55f32a;

function hash() {
    return hash
}

function lockTime() {
    return lockTime
}

function toAddress() {
    return toAddress
}

function key() {
    return key[0 len key.length].field_0
}

function fromAddress() {
    return fromAddress
}

function startTime() {
    return startTime
}

function sub_9b55f32a(?) {
    return sub_9b55f32a
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    require startTime + lockTime < block.timestamp
    call fromAddress with:
       value sub_9b55f32a wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return sub_9b55f32a
}

function sub_4923100e(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]) 
    require sha256hash.result
    require hash == hash
    call toAddress with:
       value sub_9b55f32a wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    key[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(key.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + key.length + 160 > idx:
        mem[idx + 32] = key[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=key.length, data=mem[ceil32(arg1.length) + 192 len key.length])
}



}
