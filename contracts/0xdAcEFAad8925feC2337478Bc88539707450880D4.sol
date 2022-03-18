contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor7;
array of uint256 stor99;

function _fallback() payable {
    mem[96 len -2189] = code.data[2916 len -2189]
    mem[64] = -2093
    stor0 = mem[96]
    stor1 = 1
    if not stor1 <= 1:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf7
        while code.data[2884 len 32] + stor1 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2 = 1
    if not stor2 <= 1:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        while code.data[2820 len 32] + stor2 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor3 = 1
    if not stor3 <= 1:
        idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85c
        while code.data[2852 len 32] + stor3 > idx:
            stor[idx] = 0
            if 31 < stor[idx].length:
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require 0 < stor1
    stor[code.data[2884 len 32]] = mem[128]
    require 0 < stor2
    stor[code.data[2820 len 32]] = block.timestamp
    require 0 < stor3
    stor[sha3(code.data[2852 len 32])][] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = 0
    stor5 = 0
    stor7 = mem[192]
    return code.data[727 len 2093]
}



// =====================  Runtime code  =====================


address sub_f172171fAddress;
array of struct owners;
array of struct sub_24c5cd9f;
array of uint256 sub_6b1dd7cd;
uint256 sub_f2158173;
address sub_05069f22Address;
uint256 stor5;
array of uint256 sub_402b12f1;
uint256 sub_7dd411b0;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778997;

function owners(uint256 arg1) payable {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function sub_05069f22(?) payable {
    return address(sub_05069f22Address)
}

function sub_24c5cd9f(?) payable {
    require arg1 < sub_24c5cd9f.length
    return sub_24c5cd9f[arg1].field_0
}

function sub_402b12f1(?) payable {
    return uint256(sub_402b12f1[0 len sub_402b12f1.length])
}

function sub_6b1dd7cd(?) payable {
    return sub_6b1dd7cd[arg1][0 len sub_6b1dd7cd[arg1].length]
}

function sub_7dd411b0(?) payable {
    return sub_7dd411b0
}

function getNumberOfOwners() payable {
    return owners.length
}

function sub_f172171f(?) payable {
    return sub_f172171fAddress
}

function sub_f2158173(?) payable {
    return sub_f2158173
}

function _fallback() payable {
  stop
}

function getOwners() payable {
    if owners.length:
        mem[160] = address(owners.field_0)
        idx = 160
        s = 0
        while (32 * owners.length) + 128 > idx:
            mem[idx + 32] = address(owners[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=owners.length, data=mem[160 len 32 * owners.length])
}

function sub_ee811b43(?) payable {
    if sub_24c5cd9f.length:
        mem[160] = uint256(sub_24c5cd9f.field_0)
        idx = 160
        s = 0
        while (32 * sub_24c5cd9f.length) + 128 > idx:
            mem[idx + 32] = sub_24c5cd9f[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_24c5cd9f.length, data=mem[160 len 32 * sub_24c5cd9f.length])
}

function sub_f969dda0(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require owners.length - 1 < owners.length
    if msg.sender == storB10E[stor1.length]:
        sub_f2158173 = block.timestamp
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
        sub_402b12f1.length = (2 * arg2.length) + 1
        s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
        idx = 128
        while arg2.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
        while (sub_402b12f1.length + 31 / 32) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}

function finalizeTransfer() payable {
    if block.timestamp < sub_7dd411b0 + sub_f2158173:
        if msg.sender == address(sub_05069f22Address):
            owners.length++
            if not owners.length <= owners.length + 1:
                idx = owners.length + 1
                while owners.length > idx:
                    owners[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_24c5cd9f.length++
            if not sub_24c5cd9f.length <= sub_24c5cd9f.length + 1:
                idx = sub_24c5cd9f.length + 1
                while sub_24c5cd9f.length > idx:
                    sub_24c5cd9f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_6b1dd7cd.length++
            if not sub_6b1dd7cd.length <= sub_6b1dd7cd.length + 1:
                mem[0] = 3
                idx = sub_6b1dd7cd.length + 1
                while sha3(3) + sub_6b1dd7cd.length > idx + sha3(mem[0]):
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
            require owners.length - 1 < owners.length
            storB10E[stor1.length] = address(sub_05069f22Address)
            require sub_24c5cd9f.length - 1 < sub_24c5cd9f.length
            sub_24c5cd9f[sub_24c5cd9f.length].field_0 = block.timestamp
            require sub_6b1dd7cd.length - 1 < sub_6b1dd7cd.length
            if 31 >= sub_402b12f1.length:
                sub_6b1dd7cd[sub_6b1dd7cd.length] = sub_402b12f1.length
                idx = 0
                while stor[sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1].length + 31 / 32 > idx:
                    stor[idx + sha3(sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1)] = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6b1dd7cd[sub_6b1dd7cd.length] = Mask(255, 1, (256 * not bool(sub_402b12f1.length)) - 1 and sub_402b12f1.length) + 1
                if not Mask(255, 1, (256 * not bool(sub_402b12f1.length)) - 1 and sub_402b12f1.length):
                    idx = 0
                    while stor[sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1].length + 31 / 32 > idx:
                        stor[idx + sha3(sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1)] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while sub_402b12f1.length + 31 / 32 > idx:
                        stor[s + sha3(sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1)] = uint256(sub_402b12f1[idx])
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sub_402b12f1.length + 31 / 32
                    while stor[sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1].length + 31 / 32 > idx:
                        stor[idx + sha3(sub_6b1dd7cd.length + ('name', 'sub_6b1dd7cd', 3) - 1)] = 0
                        idx = idx + 1
                        continue 
            sub_f2158173 = 0
            address(sub_05069f22Address) = 0
}



}
