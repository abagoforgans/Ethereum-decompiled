contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = code.data[1748 len 20]
    return code.data[110 len 1626]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address addr;

function check(uint256 arg1) {
    return bool(stor0[arg1].field_0)
}

function getAddr() {
    return addr
}

function pair() {
    addr = msg.sender
}

function _fallback() payable {
    revert 
}

function create(uint256 arg1) {
    if msg.sender == addr:
        stor0[arg1].field_0 = 1
        stor0[arg1].field_768 = 0
}

function checkStatus(uint256 arg1) {
    if not stor0[arg1].field_0:
        return bool(stor0[arg1].field_0)
    return bool(stor0[arg1].field_768)
}

function update(uint256 arg1, uint256 arg2, uint256 arg3) {
    if msg.sender == addr:
        stor0[arg1].field_256 = arg2
        stor0[arg1].field_512 = arg3
}

function updateStatus(uint256 arg1, uint256 arg2, uint256 arg3) {
    if stor0[arg1].field_0:
        if stor0[arg1].field_256 == arg2:
            if stor0[arg1].field_512 == arg3:
                stor0[arg1].field_768 = 1
}

function sub_8fc10e96(?) {
    if stor0[arg1].field_0:
        if stor0[arg1].field_256 == arg2:
            if stor0[arg1].field_512 == arg3:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
