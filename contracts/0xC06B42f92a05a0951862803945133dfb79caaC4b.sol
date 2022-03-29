contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    return code.data[33 len 818]
}



// =====================  Runtime code  =====================


array of uint256 announcements;
uint256 cnt;

function announcements(uint256 arg1) {
    return announcements[arg1][0 len announcements[arg1].length]
}

function cnt() {
    return cnt
}

function _fallback() payable {
    revert
}

function announce(string arg1) {
    require cnt < announcements.length
    announcements[stor1][] = Array(len=arg1.length, data=arg1[all])
    emit 0x236de2c0: cnt
    cnt++
}



}
