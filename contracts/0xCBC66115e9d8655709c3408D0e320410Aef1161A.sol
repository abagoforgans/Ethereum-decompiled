contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function r(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_63751a6e(?) {
    require ('cd', 36).length == ('cd', 68).length
    require ('cd', 36).length == ('cd', 100).length
    require ('cd', 36).length == ('cd', 132).length
    s = 0
    idx = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 36).length
        mem[0] = uint32(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 1
        if stor1[cd[((32 * idx) + cd[36] + 36)] << 224]:
            s = s
            idx = idx + 1
            continue 
        require idx < ('cd', 68).length
        require idx < ('cd', 132).length
        mem[96 len 1295] = code.data[2386 len 1295]
        mem[1391] = address(cd[4])
        mem[1423] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[1455] = uint32(cd[((32 * idx) + cd[132] + 36)])
        create contract with 0 wei
                        code: code.data[2386 len 1295], address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)]), uint32(cd[((32 * idx) + cd[132] + 36)])
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < ('cd', 100).length
        mem[100] = address(create.new_address)
        mem[132] = cd[((32 * idx) + cd[100] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(create.new_address), cd[((32 * idx) + cd[100] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < ('cd', 36).length
        mem[0] = uint32(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 1
        stor1[cd[((32 * idx) + cd[36] + 36)] << 224] = 1
        require idx < ('cd', 132).length
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[96] = cd[((32 * idx) + cd[100] + 36)]
        emit 0x9209cd2c: cd[((32 * idx) + cd[100] + 36)], address(cd[((32 * idx) + cd[68] + 36)]), address(create.new_address), uint32(cd[((32 * idx) + cd[132] + 36)])
        s = create.new_address
        idx = idx + 1
        continue 
}



}
