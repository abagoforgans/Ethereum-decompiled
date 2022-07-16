contract main {




// =====================  Runtime code  =====================


array of uint256 sub_20ac91dc;

function sub_20ac91dc(?) {
    return sub_20ac91dc[arg1][0 len sub_20ac91dc[arg1].length]
}

function getRandomString() {
    return sub_20ac91dc[uint8(('map', 'difficulty', 'timestamp') % sub_20ac91dc.length)][0 len sub_20ac91dc[uint8(('map', 'difficulty', 'timestamp') % sub_20ac91dc.length)].length]
}

function _fallback() payable {
    revert
}

function addString(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_20ac91dc.length++
    sub_20ac91dc[sub_20ac91dc.length][] = Array(len=arg1.length, data=arg1[all])
}



}
