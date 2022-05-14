contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_074a1985(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        if address(cd[((32 * idx) + cd[4] + 36)]):
            mem[100] = this.address
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18 * cd[36]:
                mem[96] = cd[36]
                emit 0x10f97fa9: cd[36], address(cd[((32 * idx) + cd[4] + 36)])
            else:
                mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[132] = 10^18 * cd[36]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), 10^18 * cd[36]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_808f047a(?) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        if address(cd[((32 * idx) + cd[4] + 36)]):
            mem[100] = this.address
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18 * cd[((32 * idx) + cd[36] + 36)]:
                mem[96] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x10f97fa9: cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)])
            else:
                mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[132] = 10^18 * cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), 10^18 * cd[((32 * idx) + cd[36] + 36)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        s = 10^18 * cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}



}
