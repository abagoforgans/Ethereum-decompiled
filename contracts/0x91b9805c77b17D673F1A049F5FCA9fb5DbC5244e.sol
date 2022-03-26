contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2338]




// =====================  Runtime code  =====================


mapping of uint256 uIntValue;
array of uint256 stringValue;
mapping of address addressValue;
array of uint256 bytesValue;
mapping of uint8 stor4;
mapping of uint256 intValue;

function getBooleanValue(bytes32 arg1) {
    return bool(stor4[arg1])
}

function getBytesValue(bytes32 arg1) {
    return bytesValue[arg1][0 len bytesValue[arg1].length]
}

function getAddressValue(bytes32 arg1) {
    return addressValue[arg1]
}

function getIntValue(bytes32 arg1) {
    return intValue[arg1]
}

function getStringValue(bytes32 arg1) {
    return stringValue[arg1][0 len stringValue[arg1].length]
}

function getUIntValue(bytes32 arg1) {
    return uIntValue[arg1]
}

function _fallback() payable {
    revert 
}

function setIntValue(bytes32 arg1, int256 arg2) {
    intValue[arg1] = arg2
}

function setUIntValue(bytes32 arg1, uint256 arg2) {
    uIntValue[arg1] = arg2
}

function setBooleanValue(bytes32 arg1, bool arg2) {
    stor4[arg1] = uint8(arg2)
}

function setAddressValue(bytes32 arg1, address arg2) {
    addressValue[arg1] = arg2
}

function setBytesValue(bytes32 arg1, bytes arg2) {
    bytesValue[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function setStringValue(bytes32 arg1, string arg2) {
    stringValue[arg1][] = Array(len=arg2.length, data=arg2[all])
}



}
