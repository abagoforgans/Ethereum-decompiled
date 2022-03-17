contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3880]




// =====================  Runtime code  =====================


#
#  - sub_6c497891(?)
#
array of struct stor0;
mapping of struct code;
array of uint256 category;
array of uint256 sub_34c495fb;

function sub_34c495fb(?) payable {
    require arg2 < sub_34c495fb[arg1[all]]
    return sub_34c495fb[arg1[all]][arg2]
}

function getDocumentCount() payable {
    return stor0.length
}

function sub_4d330b0f(?) payable {
    return category.length
}

function getCode(string arg1) payable {
    return uint8(code[arg1[all]].field_0), uint256(code[arg1[all]].field_256)
}

function sub_da734646(?) payable {
    return sub_34c495fb[arg1[all]]
}

function getCategory(uint256 arg1) payable {
    return category[arg1][0 len category[arg1].length]
}

function _fallback() payable {
  stop
}

function sub_f437c5bc(?) payable {
    if not uint8(code[arg1[all]].field_0):
        return 0
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = (4 * stor0.length + 1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            uint8(stor[idx]) = 0
            uint256(code[idx].field_0) = 0
            if 31 >= stor[idx + 1].length:
                category[idx] = 0
                if 31 >= stor[idx + 2].length:
                    sub_34c495fb[idx] = 0
                    if 31 < stor[idx + 3].length:
                        mem[0] = idx + 3
                        s = sha3(idx + 3)
                        while sha3(idx + 3) + (stor[idx + 3].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                mem[0] = idx + 2
                s = sha3(s + 2)
                while sha3(s + 2) + (stor[s + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                sub_34c495fb[s] = 0
                if 31 < stor[s + 3].length:
                    mem[0] = s + 3
                    t = sha3(s + 3)
                    while sha3(s + 3) + (stor[s + 3].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
            mem[0] = idx + 1
            s = sha3(idx + 1)
            while sha3(idx + 1) + (stor[idx + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            category[idx] = 0
            if 31 < stor[idx + 2].length:
                mem[0] = idx + 2
                s = sha3(idx + 2)
                while sha3(idx + 2) + (stor[idx + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            sub_34c495fb[idx] = 0
            if 31 < stor[idx + 3].length:
                mem[0] = idx + 3
                s = sha3(idx + 3)
                while sha3(idx + 3) + (stor[idx + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = Mask(248, 0, stor0[stor0.length].field_8)
    uint256(stor[sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)][]) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e565)][]) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e566)][]) = Array(len=arg3.length, data=arg3[all])
    uint8(code[arg1[all]].field_0) = 1
    uint256(code[arg1[all]].field_256) = stor0.length
    if arg3.length != 0:
        if sub_34c495fb[arg3[all]] != 0:
            sub_34c495fb[arg3[all]]++
            if not sub_34c495fb[arg3[all]] <= sub_34c495fb[arg3[all]] + 1:
                idx = sub_34c495fb[arg3[all]] + 1
                while sub_34c495fb[arg3[all]] > idx:
                    sub_34c495fb[arg3[all]][idx] = 0
                    idx = idx + 1
                    continue 
        else:
            category.length++
            if not category.length <= category.length + 1:
                mem[0] = 2
                idx = category.length + 1
                while sha3(2) + category.length > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    if 31 < stor[idx + sha3(mem[0])].length:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
            category[category.length][] = Array(len=arg3.length, data=arg3[all])
            sub_34c495fb[arg3[all]]++
            if not sub_34c495fb[arg3[all]] <= sub_34c495fb[arg3[all]] + 1:
                idx = sub_34c495fb[arg3[all]] + 1
                while sub_34c495fb[arg3[all]] > idx:
                    sub_34c495fb[arg3[all]][idx] = 0
                    idx = idx + 1
                    continue 
        sub_34c495fb[arg3[all]][sub_34c495fb[arg3[all]]] = stor0.length
    emit stor0.length: Array(len=arg4.length, data=arg4[all])
    return 1, stor0.length
}



}
