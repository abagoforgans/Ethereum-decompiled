contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1737]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_690ba9af;

function sub_690ba9af(?) {
    return sub_690ba9af[address(msg.sender)].field_0
}

function owner() {
    return owner
}

function sub_9f5211a5(?) {
    return sub_690ba9af[address(msg.sender)][arg1][0 len sub_690ba9af[address(msg.sender)][arg1].length].field_0
}

function sub_d85a4efd(?) {
    require arg1 < sub_690ba9af[address(msg.sender)].field_0
    return sub_690ba9af[address(msg.sender)][arg1].field_256
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function transferFunds() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_7b7194f7(?) payable {
    sub_690ba9af[address(msg.sender)].field_0++
    if not sub_690ba9af[address(msg.sender)].field_0 <= sub_690ba9af[address(msg.sender)].field_0 + 1:
        mem[0] = sha3(address(msg.sender), 1)
        idx = 2 * sub_690ba9af[address(msg.sender)].field_0 + 1
        while sha3(sha3(address(msg.sender), 1)) + (2 * sub_690ba9af[address(msg.sender)].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            idx = idx + 2
            continue 
    sub_690ba9af[address(msg.sender)][sub_690ba9af[address(msg.sender)].field_0][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_690ba9af[address(msg.sender)][sub_690ba9af[address(msg.sender)].field_0].field_256 = block.timestamp
    emit 0xd2388230: msg.sender, Array(len=arg1.length, data=arg1[all]), block.timestamp
}



}
