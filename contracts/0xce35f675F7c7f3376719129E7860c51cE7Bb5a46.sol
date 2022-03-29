contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
address stor1;
uint256 stor4;
uint256 stor6;
uint256 stor9;

function _fallback() payable {
    stor9 = 10^17
    require code.data[5018 len 32]
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = address(stor0)
    stor4 = code.data[4986 len 32]
    stor6 = code.data[5018 len 32]
    return code.data[226 len 4760]
}



// =====================  Runtime code  =====================


address creatorAddress;
address owner;
uint256 stor1;
array of struct stor2;
array of uint256 sub_83175487;
uint256 sub_85532ac1;
array of uint256 sub_b88da759;
uint256 sub_d2fab7d4;
array of uint256 sub_868786cb;
mapping of uint8 stor8;
uint256 sub_1e06a48e;
uint256 stor10;

function getCreator() {
    return creatorAddress
}

function sub_1e06a48e(?) {
    return sub_1e06a48e
}

function sub_83175487(?) {
    return sub_83175487[arg1][0 len sub_83175487[arg1].length]
}

function sub_85532ac1(?) {
    return sub_85532ac1
}

function sub_868786cb(?) {
    return sub_868786cb[arg1][0 len sub_868786cb[arg1].length]
}

function getOwner() {
    return address(owner)
}

function sub_946dfcfe(?) {
    return sub_b88da759.length
}

function sub_b88da759(?) {
    return sub_b88da759[arg1][0 len sub_b88da759[arg1].length]
}

function sub_d2fab7d4(?) {
    return sub_d2fab7d4
}

function kill() {
    require msg.sender == creatorAddress
    selfdestruct(creatorAddress)
}

function _fallback() payable {
  stop
}

function sub_8d70c99a(?) {
    require msg.sender == creatorAddress
    sub_1e06a48e = arg1
}

function sub_07c538d0(?) {
    if stor2.length:
        mem[160] = address(stor2.field_0)
        idx = 160
        s = 0
        while (32 * stor2.length) + 128 > idx:
            mem[idx + 32] = address(stor2[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor2.length, data=mem[160 len 32 * stor2.length])
}

function sub_96a1d3d0(?) payable {
    require msg.sender == address(owner)
    require not stor8[address(arg1)]
    require stor10 != block.number
    stor10 = block.number
    require eth.balance(this.address) >= sub_1e06a48e
    require arg1 != msg.sender
    require sub_b88da759.length != sub_d2fab7d4
    if address(owner) != creatorAddress:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length].field_0) = address(owner)
        sub_83175487.length++
        if not sub_83175487.length <= sub_83175487.length + 1:
            mem[0] = 3
            idx = sub_83175487.length + 1
            while sha3(3) + sub_83175487.length > idx + sha3(mem[0]):
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
        sub_83175487[sub_83175487.length][] = Array(len=arg2.length, data=arg2[all])
        sub_868786cb.length++
        if not sub_868786cb.length <= sub_868786cb.length + 1:
            mem[0] = 7
            idx = sub_868786cb.length + 1
            while sha3(7) + sub_868786cb.length > idx + sha3(mem[0]):
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
        sub_868786cb[sub_868786cb.length][] = Array(len=arg3.length, data=arg3[all])
        sub_b88da759.length++
        if not sub_b88da759.length <= sub_b88da759.length + 1:
            mem[0] = 5
            idx = sub_b88da759.length + 1
            while sha3(5) + sub_b88da759.length > idx + sha3(mem[0]):
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
        sub_b88da759[sub_b88da759.length][] = Array(len=arg4.length, data=arg4[all])
    if sub_d2fab7d4 <= sub_b88da759.length:
        address(owner) = creatorAddress
        call creatorAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
        call address(owner) with:
           value sub_1e06a48e wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor10 = 0
    stor8[address(arg1)] = 1
}



}
