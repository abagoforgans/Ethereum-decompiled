contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 892]




// =====================  Runtime code  =====================


array of uint256 valueGet;

function valueGet(address arg1, string arg2) payable {
    return valueGet[address(arg1)][arg2[all]][0 len valueGet[address(arg1)][arg2[all]].length]
}

function _fallback() payable {
  stop
}

function valueDelete(string arg1) payable {
    valueGet[address(msg.sender)][arg1[all]] = 0
    if 31 < valueGet[address(msg.sender)][arg1[all]].length:
        idx = 0
        while valueGet[address(msg.sender)][arg1[all]].length + 31 / 32 > idx:
            valueGet[address(msg.sender)][arg1[all]][idx] = 0
            idx = idx + 1
            continue 
    emit msg.sender: Array(len=arg1.length, data=arg1[all])
}

function valueSet(string arg1, bytes arg2) payable {
    valueGet[address(msg.sender)][arg1[all]] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        valueGet[address(msg.sender)][arg1[all]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while valueGet[address(msg.sender)][arg1[all]].length + 31 / 32 > idx:
        valueGet[address(msg.sender)][arg1[all]][idx] = 0
        idx = idx + 1
        continue 
    emit msg.sender: Array(len=arg1.length, data=arg1[all])
}



}
