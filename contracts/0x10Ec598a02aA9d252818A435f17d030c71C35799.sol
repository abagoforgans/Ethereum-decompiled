contract main {




// =====================  Runtime code  =====================


const GST2 = 0xb3f879cb30fe243b4dfee438691c04


uint256 stor0;
array of uint256 stor1;
address owner;

function owner() {
    return owner
}

function sub_a6391d34(?) {
    require calldata.size - 4 >= 32
    require arg1 < 20
    return stor[arg1]
}

function _fallback() payable {
    revert
}

function sub_43bf69fe(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_30231ddb(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function burnGasToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f97a47a2(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        if gas_remaining >= 50000 * arg1:
            s = 0
            while s < 20:
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = s
                mem[mem[64] + 96] = stor0
                idx = mem[64] + 96
                t = 0
                while mem[64] + 736 > idx + 32:
                    mem[idx + 32] = stor1[t]
                    idx = idx + 32
                    t = t + 1
                    continue 
                _27 = mem[64]
                mem[mem[64]] = 704
                mem[64] = mem[64] + 736
                require s < 20
                stor[s] = sha3(mem[_27 + 32 len mem[_27]])
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        require msg.sender == owner
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 5 * arg1:
            require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
            call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                 gas gas_remaining wei
                args (5 * arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
