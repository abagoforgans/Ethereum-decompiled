contract main {




// =====================  Runtime code  =====================


address sub_fb1e4cffAddress;
address targetAddress;

function target() {
    return targetAddress
}

function sub_fb1e4cff(?) {
    return sub_fb1e4cffAddress
}

function destroy() {
    if sub_fb1e4cffAddress != tx.origin:
    selfdestruct(msg.sender)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_46a9dc7e(?) {
    require calldata.size - 4 >= 32
    if tx.origin == sub_fb1e4cffAddress:
        sub_fb1e4cffAddress = arg1
}

function withdraw() {
    if tx.origin == sub_fb1e4cffAddress:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
}

function d() {
    if tx.origin == sub_fb1e4cffAddress:
        mem[132 len 0] = None
        call targetAddress.mem[132 len 4] with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'd-'
}

function i() {
    if tx.origin == sub_fb1e4cffAddress:
        mem[132 len 0] = None
        call targetAddress.mem[132 len 4] with:
           value 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'i-'
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tx.origin == sub_fb1e4cffAddress:
        require arg1 < eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) - arg1 wei
             gas gas_remaining wei
}

function b(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tx.origin == sub_fb1e4cffAddress:
        mem[132 len 0] = None
        call targetAddress.mem[132 len 4] with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'b-'
}

function sub_4aa8732c(?) {
    require calldata.size - 4 >= 32
    if tx.origin == sub_fb1e4cffAddress:
        mem[132 len 0] = None
        call targetAddress.mem[132 len 4] with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'b-'
        if not return_data.size:
            if tx.origin == sub_fb1e4cffAddress:
                mem[168 len 0] = None
                call targetAddress.mem[168 len 4] with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'd-'
        else:
            if tx.origin == sub_fb1e4cffAddress:
                mem[ceil32(return_data.size) + 169 len 0] = None
                call targetAddress.mem[ceil32(return_data.size) + 169 len 4] with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'd-'
}

function sub_d755ad13(?) {
    require calldata.size - 4 >= 32
    if tx.origin == sub_fb1e4cffAddress:
        mem[132 len 0] = None
        call targetAddress.mem[132 len 4] with:
           value 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'i-'
        if not return_data.size:
            if tx.origin == sub_fb1e4cffAddress:
                mem[168 len 0] = None
                call targetAddress.mem[168 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
        else:
            if tx.origin == sub_fb1e4cffAddress:
                mem[ceil32(return_data.size) + 169 len 0] = None
                call targetAddress.mem[ceil32(return_data.size) + 169 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
}

function sub_addb7a8e(?) {
    require calldata.size - 4 >= 32
    if tx.origin == sub_fb1e4cffAddress:
        mem[132 len 0] = None
        call targetAddress.mem[132 len 4] with:
           value 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'i-'
        if not return_data.size:
            if tx.origin == sub_fb1e4cffAddress:
                mem[168 len 0] = None
                call targetAddress.mem[168 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
                if not return_data.size:
                    if tx.origin == sub_fb1e4cffAddress:
                        mem[204 len 0] = None
                        call targetAddress.mem[204 len 4] with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'd-'
                else:
                    if tx.origin == sub_fb1e4cffAddress:
                        mem[ceil32(return_data.size) + 205 len 0] = None
                        call targetAddress.mem[ceil32(return_data.size) + 205 len 4] with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'd-'
        else:
            if tx.origin == sub_fb1e4cffAddress:
                mem[ceil32(return_data.size) + 169 len 0] = None
                call targetAddress.mem[ceil32(return_data.size) + 169 len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'b-'
                if not return_data.size:
                    if tx.origin == sub_fb1e4cffAddress:
                        mem[ceil32(return_data.size) + 205 len 0] = None
                        call targetAddress.mem[ceil32(return_data.size) + 205 len 4] with:
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'd-'
                        else:
                            if not ext_call.success:
                                revert with 0, 'd-', mem[(2 * ceil32(return_data.size)) + 306 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        ('bool', 'ext_call.success')
                else:
                    if tx.origin == sub_fb1e4cffAddress:
                        mem[(2 * ceil32(return_data.size)) + 206 len 0] = None
                        call targetAddress.mem[(2 * ceil32(return_data.size)) + 206 len 4] with:
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
