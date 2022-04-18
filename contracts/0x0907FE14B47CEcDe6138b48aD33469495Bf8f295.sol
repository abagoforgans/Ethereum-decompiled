contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1375]




// =====================  Runtime code  =====================


uint8 stor0;
uint256 amount;
address accountAddress;
uint256 storedDataInBytes;
array of struct text;

function accountAddress() {
    return accountAddress
}

function text() {
    return text[0 len text.length].field_0
}

function trueOrFalse() {
    return bool(stor0)
}

function amount() {
    return amount
}

function storedDataInBytes() {
    return storedDataInBytes
}

function _fallback() payable {
    revert 
}

function storeData(bool arg1, uint256 arg2, address arg3, bytes32 arg4, string arg5) {
    mem[128 len arg5.length] = arg5[all]
    stor0 = uint8(arg1)
    amount = arg2
    accountAddress = arg3
    storedDataInBytes = arg4
    text.length = (2 * arg5.length) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = 128
    while arg5.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg5.length + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (text.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function getData() {
    mem[160] = uint256(text.field_0)
    idx = 160
    s = 0
    while text.length + 128 > idx:
        mem[idx + 32] = text[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(text.length) + 160] = bool(stor0)
    mem[ceil32(text.length) + 192] = amount
    mem[ceil32(text.length) + 224] = accountAddress
    mem[ceil32(text.length) + 256] = storedDataInBytes
    mem[ceil32(text.length) + 288] = 160
    mem[ceil32(text.length) + 320] = text.length
    if text.length:
        mem[ceil32(text.length) + 352] = mem[160]
        mem[ceil32(text.length) + 384 len floor32(text.length - 1)] = mem[192 len floor32(text.length - 1)]
    return bool(stor0), 
           amount,
           accountAddress,
           storedDataInBytes,
           Array(len=text.length, data=mem[ceil32(text.length) + 352 len text.length])
}



}
