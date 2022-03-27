contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor0 = 2
    stor1 = code.data[1246 len 20]
    return code.data[129 len 1105]
}



// =====================  Runtime code  =====================


uint256 version;
address previousPublishedVersionAddress;
mapping of uint256 get;

function get(bytes32 arg1, address arg2, address arg3) {
    return get[arg1][address(arg2)][address(arg3)]
}

function version() {
    return version
}

function previousPublishedVersion() {
    return previousPublishedVersionAddress
}

function registry(bytes32 arg1, address arg2, address arg3) {
    return get[arg1][arg2][arg3]
}

function _fallback() payable {
    revert 
}

function set(bytes32 arg1, address arg2, bytes32 arg3) {
    emit Set(arg1, msg.sender, arg2);
    get[arg1][address(msg.sender)][address(arg2)] = arg3
}



}
