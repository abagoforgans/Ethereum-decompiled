contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2353]
}



// =====================  Runtime code  =====================


address stor0;
array of address sub_39c5838f;

function sub_39c5838f(?) {
    require arg1 < sub_39c5838f.length
    return address(sub_39c5838f[arg1])
}

function _fallback() payable {
    emit Paid()
}

function sub_4d2009e2(?) payable {
    require stor0 == msg.sender
    create contract with 0 wei
                    code: code.data[863 len 1447], address(arg1), arg2
    require create.new_address
    sub_39c5838f.length++
    if not sub_39c5838f.length <= sub_39c5838f.length + 1:
        idx = sub_39c5838f.length + 1
        while sub_39c5838f.length > idx:
            uint256(sub_39c5838f[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_39c5838f[sub_39c5838f.length]) = address(create.new_address)
}

function sub_a41a1a12(?) {
    require stor0 == msg.sender
    idx = 0
    while idx < sub_39c5838f.length:
        mem[0] = 1
        mem[128] = 0
        require ext_code.size(address(sub_39c5838f[idx]))
        call address(sub_39c5838f[idx]).isComplete() with:
             gas gas_remaining - 50 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            require sub_39c5838f.length - 1 < sub_39c5838f.length
            require idx < sub_39c5838f.length
            address(sub_39c5838f[idx]) = address(sub_39c5838f[sub_39c5838f.length])
            require sub_39c5838f.length - 1 < sub_39c5838f.length
            mem[0] = 1
            address(sub_39c5838f[sub_39c5838f.length]) = 0
        idx = idx + 1
        continue 
}



}
