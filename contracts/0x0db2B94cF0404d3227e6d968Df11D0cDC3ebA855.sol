contract main {




// =====================  Runtime code  =====================


uint256 _hash;
address stor1;
uint256 _id;

function get_hash() {
    return _hash
}

function get_id() {
    return _id
}

function clear() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function update_hash(bytes32 arg1) {
    if not _hash:
        _hash = arg1
}

function setup_key(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not _hash:
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
        _hash = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
}

function withdraw(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require tx.origin == msg.sender
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    if _hash == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]):
        if msg.value > 10^18:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
