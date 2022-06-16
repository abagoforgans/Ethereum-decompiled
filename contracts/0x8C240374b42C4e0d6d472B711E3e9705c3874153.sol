contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() {
    if stor0 != tx.origin:
    selfdestruct(msg.sender)
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_46a9dc7e(?) {
    require calldata.size - 4 >= 32
    if tx.origin == stor0:
        stor0 = arg1
}

function withdraw() {
    if tx.origin == stor0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
}

function d() {
    if tx.origin == stor0:
        mem[132 len 0] = None
        call stor1.mem[132 len 4] with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'd-'
}

function i() {
    if tx.origin == stor0:
        mem[132 len 0] = None
        call stor1.mem[132 len 4] with:
           value 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'i-'
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tx.origin == stor0:
        require arg1 < eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) - arg1 wei
             gas gas_remaining wei
}

function b(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tx.origin == stor0:
        mem[132 len 0] = None
        call stor1.mem[132 len 4] with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'b-'
}

function sub_4aa8732c(?) {
    require calldata.size - 4 >= 32
    if tx.origin == stor0:
        mem[132 len 0] = None
        call stor1.mem[132 len 4] with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'b-'
        if not return_data.size:
            if tx.origin == stor0:
                mem[168 len 0] = None
                call stor1.mem[168 len 4] with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'd-'
        else:
            if tx.origin == stor0:
                mem[ceil32(return_data.size) + 169 len 0] = None
                call stor1.mem[ceil32(return_data.size) + 169 len 4] with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'd-'
}

function sub_d755ad13(?) {
    require calldata.size - 4 >= 32
    if tx.origin == stor0:
        mem[132 len 0] = None
        call stor1.mem[132 len 4] with:
           value 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'i-'
        if not return_data.size:
            if tx.origin == stor0:
                mem[168 len 0] = None
                call stor1.mem[168 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
        else:
            if tx.origin == stor0:
                mem[ceil32(return_data.size) + 169 len 0] = None
                call stor1.mem[ceil32(return_data.size) + 169 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
}

function sub_addb7a8e(?) {
    require calldata.size - 4 >= 32
    if tx.origin == stor0:
        mem[132 len 0] = None
        call stor1.mem[132 len 4] with:
           value 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'i-'
        if not return_data.size:
            if tx.origin == stor0:
                mem[168 len 0] = None
                call stor1.mem[168 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
                if not return_data.size:
                    if tx.origin == stor0:
                        mem[204 len 0] = None
                        call stor1.mem[204 len 4] with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'd-'
                else:
                    if tx.origin == stor0:
                        mem[ceil32(return_data.size) + 205 len 0] = None
                        call stor1.mem[ceil32(return_data.size) + 205 len 4] with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'd-'
        else:
            if tx.origin == stor0:
                mem[ceil32(return_data.size) + 169 len 0] = None
                call stor1.mem[ceil32(return_data.size) + 169 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
                if not return_data.size:
                    if tx.origin == stor0:
                        mem[ceil32(return_data.size) + 205 len 0] = None
                        call stor1.mem[ceil32(return_data.size) + 205 len 4] with:
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'd-'
                        else:
                            if not ext_call.success:
                                revert with 0, 'd-', mem[(2 * ceil32(return_data.size)) + 306 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        ('bool', 'ext_call.success')
                else:
                    if tx.origin == stor0:
                        mem[(2 * ceil32(return_data.size)) + 206 len 0] = None
                        call stor1.mem[(2 * ceil32(return_data.size)) + 206 len 4] with:
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'd-', mem[(2 * ceil32(return_data.size)) + 306 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            if not ext_call.success:
                                revert with 0, 'd-'
                        ('bool', 'ext_call.success')
}



}
