contract main {


// =======================  Init code  ======================


address stor5;

function _fallback() {
    stor5 = msg.sender
    return code.data[98 len 6612]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_3acc2381(?)
#  - sub_8dac9bbc(?)
#
address owner;
address sub_7b7ccf97Address;
array of uint256 url;
uint256 delay;

function url() {
    return url[0 len url.length]
}

function delay() {
    return delay
}

function sub_7b7ccf97(?) {
    return sub_7b7ccf97Address
}

function owner() {
    return owner
}

function terminate() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}



}
