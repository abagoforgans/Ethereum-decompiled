contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_19aaaf01;
uint256 sub_e2603c30;

function sub_19aaaf01(?) {
    return sub_19aaaf01
}

function owner() {
    return owner
}

function sub_e2603c30(?) {
    return sub_e2603c30
}

function _fallback() payable {
    revert
}

function setConfig(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'only owner can set'
    sub_19aaaf01 = arg1
    sub_e2603c30 = arg2
}

function sub_6c1dc9fa(?) {
    require sub_19aaaf01
    if block.timestamp - call.data[4] / 60 / 60 / sub_19aaaf01 < 7:
        revert with 0, 'nowday < 7'
    if call.data[68] > (2 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + (7 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100 * call.data[228] / 10000) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100):
        revert with 0, 'amt is not right'
    if block.timestamp - call.data[4] / 60 / 60 / sub_19aaaf01 < 14:
        if (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 < arg1:
            revert with 0, 'w2 safe check'
        if ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) - arg1 < call.data[68]:
            revert with 0, 'w2 excceed'
        return call.data[68], 0
    if block.timestamp - call.data[4] / 60 / 60 / sub_19aaaf01 < 21:
        if arg1 > ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100):
            revert with 0, 'w3 safe check'
        if ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) - arg1 < call.data[68]:
            revert with 0, 'w3 excceed'
        return call.data[68], 0
    require arg1 <= ((50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100)
    if call.data[68] <= ((50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) - arg1:
        return call.data[68], 0
    if call.data[100] < call.data[36]:
        revert with 0, 're-take amt wrong'
    if call.data[100] > sub_e2603c30:
        revert with 0, 'maxPerInvest excceed'
    if arg1 > (2 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + (7 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100 * call.data[228] / 10000) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100):
        revert with 0, 'wo cao ,dont say impossible'
    return ((50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + ((50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (2 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100) + (7 * (50 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100) + (50 * 7 * (50 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100) + (50 * 7 * (50 * call.data[36]) + (50 * 7 * call.data[36] * call.data[132] / 10000) / 100 * call.data[164] / 10000) / 100 * call.data[196] / 10000) / 100 * call.data[228] / 10000) - arg1, 
           1
}



}
