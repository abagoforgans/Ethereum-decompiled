contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    mem[96 len -2014] = code.data[2293 len -2014]
    mem[64] = -1918
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 0
    return code.data[279 len 2014]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of struct sub_18d9adab;
uint256 sub_a29092ed;

function name() payable {
    return name[0 len name.length]
}

function sub_18d9adab(?) payable {
    require arg1 < sub_18d9adab.length
    mem[224] = uint256(sub_18d9adab[arg1].field_0)
    idx = 224
    s = 0
    while sub_18d9adab[arg1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(sub_18d9adab[(3 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 224] = stor[(3 * arg1) + ('name', 'sub_18d9adab', 2) + 1].length
    mem[sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 256] = uint256(stor[sha3((3 * arg1) + ('name', 'sub_18d9adab', 2) + 1)].field_0)
    idx = sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 256
    s = 0
    while sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'sub_18d9adab', 2) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'sub_18d9adab', 2) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_18d9adab[arg1].length, data=mem[224 len sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + stor[(3 * arg1) + ('name', 'sub_18d9adab', 2) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'sub_18d9adab', 2) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'sub_18d9adab', 2) + 1].length + 32 % 32) + 32]), 
           sub_18d9adab[arg1].length + (floor32(sub_18d9adab[arg1].length - 1) + -sub_18d9adab[arg1].length + 32 % 32) + 128,
           address(sub_18d9adab[arg1].field_512)
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
    sub_18d9adab.length++
    if not sub_18d9adab.length <= sub_18d9adab.length + 1:
        mem[0] = 2
        idx = (3 * sub_18d9adab.length) + 3
        while sha3(2) + (3 * sub_18d9adab.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 1
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 1]) = 0
            if 31 < stor[s + sha3(mem[0]) + 1].length:
                mem[0] = s + sha3(mem[0]) + 1
                t = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            address(stor[s + sha3(mem[0]) + 2]) = 0
            s = s + 1
            continue 
    uint256(sub_18d9adab[sub_18d9adab.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((3 * sub_18d9adab.length) + ('name', 'sub_18d9adab', 2) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(sub_18d9adab[sub_18d9adab.length].field_512) = msg.sender or Mask(96, 160, uint256(sub_18d9adab[sub_18d9adab.length].field_512))
    sub_a29092ed++
}



}
