contract main {


// =======================  Init code  ======================


address stor4;

function _fallback() payable {
    stor4 = 0x3c531591cb807e01404574076f429d205f5ee981
    return code.data[56 len 3953]
}



// =====================  Runtime code  =====================


#
#  - sub_6c497891(?)
#
array of struct stor0;
mapping of struct sub_cec96da4;
array of uint256 category;
array of uint256 sub_34c495fb;
array of uint256 stor4;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

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

function sub_cec96da4(?) payable {
    return uint8(sub_cec96da4[arg1[all]].field_0), uint256(sub_cec96da4[arg1[all]].field_256)
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

function sub_7df9b1d7(?) payable {
    if uint8(sub_cec96da4[arg1[all]].field_0):
        return 1, 0
    call address(stor4.length).0x7c16d166 with:
         gas gas_remaining - 25050 wei
        args arg6
    require ext_call.success
    if 0 == ext_call.return_data[0]:
        return 2, 0
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = (5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568
        while (5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            uint16(stor[idx]) = 0
            uint256(sub_cec96da4[idx].field_0) = 0
            category[idx] = 0
            if 31 >= stor[idx + 2].length:
                sub_34c495fb[idx] = 0
                if 31 >= stor[idx + 3].length:
                    uint256(stor4[idx]) = 0
                    if 31 < stor[idx + 4].length:
                        mem[0] = idx + 4
                        s = sha3(idx + 4)
                        while sha3(idx + 4) + (stor[idx + 4].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                mem[0] = idx + 3
                s = sha3(s + 3)
                while sha3(s + 3) + (stor[s + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor4[s]) = 0
                if 31 < stor[s + 4].length:
                    mem[0] = s + 4
                    t = sha3(s + 4)
                    while sha3(s + 4) + (stor[s + 4].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
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
            uint256(stor4[idx]) = 0
            if 31 < stor[idx + 4].length:
                mem[0] = idx + 4
                s = sha3(idx + 4)
                while sha3(idx + 4) + (stor[idx + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint8(stor0[stor0.length].field_0) = arg3
    Mask(248, 0, stor0[stor0.length].field_8) = Mask(248, 0, arg5)
    Mask(240, 0, stor0[stor0.length].field_16) = Mask(240, 16, arg3) >> 16
    stor290D[stor0.length] = arg6
    uint256(stor[sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e565)][]) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e566)][]) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e567)][]) = Array(len=arg4.length, data=arg4[all])
    uint8(sub_cec96da4[arg1[all]].field_0) = 1
    uint256(sub_cec96da4[arg1[all]].field_256) = stor0.length
    if arg4.length != 0:
        if sub_34c495fb[arg4[all]] != 0:
            sub_34c495fb[arg4[all]]++
            if not sub_34c495fb[arg4[all]] <= sub_34c495fb[arg4[all]] + 1:
                idx = sub_34c495fb[arg4[all]] + 1
                while sub_34c495fb[arg4[all]] > idx:
                    sub_34c495fb[arg4[all]][idx] = 0
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
            category[category.length][] = Array(len=arg4.length, data=arg4[all])
            sub_34c495fb[arg4[all]]++
            if not sub_34c495fb[arg4[all]] <= sub_34c495fb[arg4[all]] + 1:
                idx = sub_34c495fb[arg4[all]] + 1
                while sub_34c495fb[arg4[all]] > idx:
                    sub_34c495fb[arg4[all]][idx] = 0
                    idx = idx + 1
                    continue 
        sub_34c495fb[arg4[all]][sub_34c495fb[arg4[all]]] = stor0.length
    emit stor0.length 
    return 0, stor0.length
}



}
