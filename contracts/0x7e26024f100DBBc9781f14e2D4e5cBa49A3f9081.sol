contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 10^15
    stor0 = msg.sender
    return code.data[59 len 1395]
}



// =====================  Runtime code  =====================


address owner;
array of struct calls;
uint256 stor2;

function owner() {
    return owner
}

function calls(uint256 arg1) {
    require arg1 < calls.length
    mem[224] = uint256(calls[arg1].field_0)
    idx = 224
    s = 0
    while calls[arg1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(calls[(3 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=calls[arg1].length, data=mem[224 len calls[arg1].length + (floor32(calls[arg1].length - 1) + -calls[arg1].length + 32 % 32)]), 
           address(calls[arg1].field_256),
           uint256(calls[arg1].field_512)
}

function _fallback() payable {
    revert
}

function sub_0b99cbab(?) {
    require owner == msg.sender
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_5bbcc4f3(?) payable {
    require msg.value == stor2
    calls.length++
    if not calls.length <= calls.length + 1:
        mem[0] = 1
        idx = (3 * calls.length) + 3
        while sha3(1) + (3 * calls.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    require calls.length < calls.length
    uint256(calls[calls.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    address(calls[calls.length].field_256) = msg.sender
    uint256(calls[calls.length].field_512) = block.timestamp
    return calls.length
}



}
