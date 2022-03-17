contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    mem[96 len -1695] = code.data[1906 len -1695]
    mem[64] = -1599
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 0
    return code.data[211 len 1695]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of struct stor2;
uint256 sub_a29092ed;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

function name() payable {
    return name[0 len name.length]
}

function owner() payable {
    return owner
}

function sub_a29092ed(?) payable {
    return sub_a29092ed
}

function _fallback() payable {
  stop
}

function sub_c1e6adfd(?) payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1
        while (3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            if 31 >= stor[idx].length:
                name[idx] = 0
                if 31 < stor[idx + 1].length:
                    mem[0] = idx + 1
                    s = sha3(idx + 1)
                    while sha3(idx + 1) + (stor[idx + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                address(stor2[idx].field_0) = 0
                idx = idx + 1
                continue 
            mem[0] = idx
            s = sha3(s)
            while sha3(s) + (stor[s].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            name[s] = 0
            if 31 < stor[s + 1].length:
                mem[0] = s + 1
                t = sha3(s + 1)
                while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
            address(stor2[s].field_0) = 0
            s = s + 1
            continue 
    stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[stor2.length].field_512 = msg.sender or Mask(96, 160, stor2[stor2.length].field_512)
    sub_a29092ed++
}

function sub_18d9adab(?) payable {
    require arg1 < stor2.length
    mem[224] = stor2[arg1].field_0
    idx = 224
    s = 0
    while stor2[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor2[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2[arg1].length + (floor32(stor2[arg1].length - 1) + -stor2[arg1].length + 32 % 32) + 224] = stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length
    mem[stor2[arg1].length + (floor32(stor2[arg1].length - 1) + -stor2[arg1].length + 32 % 32) + 256] = stor[sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)]
    idx = stor2[arg1].length + (floor32(stor2[arg1].length - 1) + -stor2[arg1].length + 32 % 32) + 256
    s = 0
    while stor2[arg1].length + (floor32(stor2[arg1].length - 1) + -stor2[arg1].length + 32 % 32) + stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1].length, data=mem[224 len stor2[arg1].length + (floor32(stor2[arg1].length - 1) + -stor2[arg1].length + 32 % 32) + stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32) + 32]), 
           stor2[arg1].length + (floor32(stor2[arg1].length - 1) + -stor2[arg1].length + 32 % 32) + 128,
           stor4057[arg1]
}



}
