contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 1517497924
    require not msg.value
    stor2 = code.data[883 len 20]
    stor1 = code.data[883 len 20]
    return code.data[101 len 770]
}



// =====================  Runtime code  =====================


uint256 endTime;
address stor1;

function endTime() {
    return endTime
}

function _fallback() payable {
    revert
}

function sub_b67c405e(?) {
    require block.timestamp <= endTime
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), 10^6 * arg2
    require ext_call.success
}

function batchTrasfer(address[] arg1, uint256 arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require block.timestamp <= endTime
    s = 0
    idx = 0
    s = 10
    while idx < arg1.length:
        require idx < arg1.length
        if (8 * idx) + (2 * idx * idx) + 1 < arg3:
            if (8 * idx) + (2 * idx * idx) + 1 > arg2:
                _33 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_33)
                mem[(32 * arg1.length) + 196] = (10^6 * 8 * idx) + (10^6 * 2 * idx * idx) + 10^6
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(_33), (10^6 * 8 * idx) + (10^6 * 2 * idx * idx) + 10^6
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                s = _33
                idx = idx + 1
                s = (8 * idx) + (2 * idx * idx) + 1
                continue 
            _39 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = address(_39)
            mem[(32 * arg1.length) + 196] = (10^6 * arg2) + (10^6 * idx)
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(_39), (10^6 * arg2) + (10^6 * idx)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            s = _39
            idx = idx + 1
            s = arg2 + idx
            continue 
        if arg3 - idx > arg2:
            _43 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = address(_43)
            mem[(32 * arg1.length) + 196] = (10^6 * arg3) - (10^6 * idx)
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(_43), (10^6 * arg3) - (10^6 * idx)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            s = _43
            idx = idx + 1
            s = arg3 - idx
            continue 
        _50 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = address(_50)
        mem[(32 * arg1.length) + 196] = (10^6 * arg2) + (10^6 * idx)
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_50), (10^6 * arg2) + (10^6 * idx)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = _50
        idx = idx + 1
        s = arg2 + idx
        continue 
}



}
