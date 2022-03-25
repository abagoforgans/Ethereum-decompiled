contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1461]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 sub_ab16d321;
array of struct sub_1e48b6c4;

function sub_1e48b6c4(?) {
    return sub_1e48b6c4[arg1[all]].field_512
}

function sub_a83fc93e(?) {
    return sub_ab16d321.length
}

function sub_ab16d321(?) {
    return sub_ab16d321[arg1][0 len sub_ab16d321[arg1].length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_f088b594(?) {
    sub_1e48b6c4[arg1[all]].field_512 = 0
}

function sub_e683e618(?) {
    sub_1e48b6c4[arg1[all]][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_1e48b6c4[arg1[all]].field_256 = arg2
    sub_1e48b6c4[arg1[all]].field_512 = 1
    sub_ab16d321.length++
    if not sub_ab16d321.length <= sub_ab16d321.length + 1:
        mem[0] = 1
        idx = sub_ab16d321.length + 1
        while sha3(1) + sub_ab16d321.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_ab16d321[sub_ab16d321.length][] = Array(len=arg1.length, data=arg1[all])
}



}
