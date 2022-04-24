contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor2;
address stor2; offset 8

function _fallback() payable {
    uint8(stor2.field_0) = 0
    require not msg.value
    mem[96 len -1556] = code.data[1837 len -1556]
    mem[64] = -1460
    address(stor2.field_8) = msg.sender
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[281 len 1556]
}



// =====================  Runtime code  =====================


array of uint256 bet;
array of struct stor1;
uint8 stor2;
address creatorAddress; offset 8

function getCreator() {
    return creatorAddress
}

function getBet() {
    return bet[0 len bet.length]
}

function sub_33548e27(?) {
    return stor1.length
}

function sub_932221fb(?) {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function commit() {
    require creatorAddress == msg.sender
    require not stor2
    stor2 = 1
}

function sub_fa05deb4(?) {
    if arg1 >= stor1.length:
        return 'null'
    mem[160] = stor1[arg1].field_0
    idx = 160
    s = 0
    while stor1[arg1].length + 128 > idx:
        mem[idx + 32] = stor1[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1[arg1].length, data=mem[160 len stor1[arg1].length])
}

function sub_7b1b35f9(?) {
    require creatorAddress == msg.sender
    require not stor2
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = stor1.length + 1
        while sha3(1) + stor1.length > idx + sha3(mem[0]):
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
    stor1[stor1.length][].field_0 = Array(len=arg1.length, data=arg1[all])
}



}
