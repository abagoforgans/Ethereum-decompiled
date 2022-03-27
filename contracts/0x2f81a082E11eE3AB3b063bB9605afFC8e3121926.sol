contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1063]




// =====================  Runtime code  =====================


array of uint256 name;
array of struct stor1;

function getName(address arg1) {
    return name[address(arg1)][0 len name[address(arg1)].length]
}

function hasName(address arg1) {
    return bool(name[address(arg1)].length)
}

function _fallback() payable {
    revert 
}

function getNamedAddresses() {
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function setName(string arg1) {
    if not name[address(msg.sender)].length:
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor1[stor1.length].field_0 = msg.sender
    name[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}



}
