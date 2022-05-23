contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;
uint256 stor1;
mapping of uint256 deposits;

function Deposits(address arg1) {
    return deposits[arg1]
}

function Owner() {
    return address(owner)
}

function _fallback() payable {
  stop
}

function transferOwner(address arg1) {
    if msg.sender == stor0:
        stor0 = arg1
}

function deposit() payable {
    if msg.value > 5 * 10^17:
        deposits[msg.sender] += msg.value
}

function Vault() payable {
    if tx.origin == msg.sender:
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        if msg.value > 5 * 10^17:
            deposits[msg.sender] += msg.value
}

function withdraw(uint256 arg1) {
    if msg.sender == stor0:
        if arg1 > 0:
            if arg1 <= deposits[msg.sender]:
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function proxy(address arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
}



}
