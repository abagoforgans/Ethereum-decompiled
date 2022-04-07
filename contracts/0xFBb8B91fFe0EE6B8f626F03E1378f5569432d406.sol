contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() {
    stor0[code.data[8853 len 20]] = 1
    stor0[code.data[8885 len 20]] = 1
    stor0[code.data[8917 len 20]] = 1
    return code.data[234 len 8607]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;

function owners(address arg1) {
    return bool(stor0[arg1])
}

function getEpochData(uint256 arg1, uint256 arg2) {
    require arg2 < 512
    return epochData[arg1][arg2].field_0, epochData[arg1].field_131072, epochData[arg1].field_131328
}

function isEpochDataSet(uint256 arg1) {
    return bool(epochData[arg1].field_131072)
}

function _fallback() payable {
    revert
}

function hashimoto(bytes32 arg1, bytes8 arg2, uint256[] arg3, uint256[] arg4, uint256 arg5) {
    if not epochData[arg5].field_131072:
        return -2
    if not epochData[arg5].field_131072:
        return -1
    idx = 0
    s = 0
    t = arg1
    while idx < 32:
        idx = idx + 1
        s = (256 * s) + uint8(t)
        t = t / 256
        continue 
    # nil
}

function setEpochData(uint256 arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5, uint256 arg6) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if not stor0[address(msg.sender)]:
        emit SetEpochData(2181038080, msg.sender, msg.sender);
    else:
        idx = 0
        while idx < arg6:
            require idx + arg5 < 512
            if stor[idx + arg5 + ('map', ('param', 'arg1'), ('name', 'epochData', 1))].field_0 > 0:
                emit SetEpochData(2181038081, idx + arg5 + (arg1 << 128), msg.sender);
            require idx < arg4.length
            mem[0] = arg1
            mem[32] = 1
            require idx + arg5 < 512
            stor[idx + arg5 + ('map', ('param', 'arg1'), ('name', 'epochData', 1))].field_0 = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        epochData[arg1].field_131072 = arg2
        epochData[arg1].field_131328 = arg3
        emit SetEpochData(address rg1, uint256 rg2, uint256 rg3):
                          0,
                          msg.sender,
}



}
