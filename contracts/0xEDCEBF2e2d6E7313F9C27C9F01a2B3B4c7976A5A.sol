contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroyMe() {
    require msg.sender == stor0
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bad7746f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len 9600] = code.data[1660 len 9600]
    require ext_code.size(stor1)
    call stor1.totalSupply() with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 9728] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 1500000 <= arg2:
        if ext_call.return_data[0] + arg1.length >= 1500000:
            if ext_call.return_data[0] < 1500000:
                idx = 0
                s = 0
                t = 0
                while idx < arg1.length:
                    require idx < arg1.length
                    require ext_code.size(stor1)
                    call stor1.getKitty(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 9728 len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 320
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        t = ext_call.return_data[0]
                        continue 
                    require idx < arg1.length
                    require s < 300
                    mem[(32 * s) + (32 * arg1.length) + 128] = mem[(32 * idx) + 128]
                    idx = idx + 1
                    s = s + 1
                    t = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[0] + s >= 1500000:
                    t = 0
                    u = ext_call.return_data[0]
                    while t < s:
                        require t < 300
                        _49 = mem[(32 * t) + (32 * arg1.length) + 128]
                        mem[(32 * arg1.length) + 9732] = mem[(32 * t) + (32 * arg1.length) + 128]
                        require ext_code.size(stor1)
                        call stor1.giveBirth(uint256 arg1) with:
                             gas gas_remaining wei
                            args _49
                        mem[(32 * arg1.length) + 9728] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if t < arg2 - 1:
                            t = t + 1
                            u = u + 1
                            continue 
                        if u + 1 < 1500000:
                            t = t + 1
                            u = u + 1
                            continue 
}



}
