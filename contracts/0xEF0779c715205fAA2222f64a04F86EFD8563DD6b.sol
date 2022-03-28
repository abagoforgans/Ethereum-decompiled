contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0
    stor3 = 0
    return code.data[62 len 854]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_b58665cf;
uint256 sub_c4819b15;
uint256 sub_7be1f5dc;

function sub_7be1f5dc(?) {
    return sub_7be1f5dc
}

function owner() {
    return owner
}

function sub_b58665cf(?) {
    require arg1 < sub_b58665cf[address(msg.sender)].field_0
    require arg1 < sub_b58665cf[address(msg.sender)].field_0
    return sub_b58665cf[address(msg.sender)][arg1].field_0, 
           sub_b58665cf[address(msg.sender)][arg1].field_256,
           sub_b58665cf[address(msg.sender)][arg1].field_512
}

function sub_c4819b15(?) {
    return sub_c4819b15
}

function destroy() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function sub_683ee4c4(?) {
    if not sub_b58665cf[address(msg.sender)].field_0:
        sub_7be1f5dc++
    sub_b58665cf[address(msg.sender)].field_0++
    if not sub_b58665cf[address(msg.sender)].field_0 <= sub_b58665cf[address(msg.sender)].field_0 + 1:
        idx = (3 * sub_b58665cf[address(msg.sender)].field_0) + 3
        while 3 * sub_b58665cf[address(msg.sender)].field_0 > idx:
            sub_b58665cf[address(msg.sender)][idx].field_0 = 0
            sub_b58665cf[address(msg.sender)][idx].field_256 = 0
            sub_b58665cf[address(msg.sender)][idx].field_512 = 0
            idx = idx + 3
            continue 
    sub_b58665cf[address(msg.sender)][sub_b58665cf[address(msg.sender)].field_0].field_0 = block.timestamp
    sub_b58665cf[address(msg.sender)][sub_b58665cf[address(msg.sender)].field_0].field_256 = block.timestamp
    sub_b58665cf[address(msg.sender)][sub_b58665cf[address(msg.sender)].field_0].field_512 = arg1
    sub_c4819b15++
    return 1
}



}
