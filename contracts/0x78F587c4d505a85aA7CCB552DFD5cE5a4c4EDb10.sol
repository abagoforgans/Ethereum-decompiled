contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = block.timestamp
    stor2 = code.data[11270 len 32]
    return code.data[74 len 11196]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;

function kill() {
    if stor0 != tx.origin:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getCreatedAt() {
    if stor0 != tx.origin:
        return 0
    return stor1
}

function sub_4a76aae1(?) {
    if tx.origin == stor0:
        require ext_code.size(stor2)
        call stor2.0x4ae9ec30 with:
             gas gas_remaining - 50 wei
            args Array(len=arg1.length, data=arg1[all])
        require ext_call.success
        create contract with 0 wei
                        code: code.data[6094 len 1530], Array(len=arg2.length + 96, data=arg2.length, arg2[all], arg3.length, arg3[all])
        require create.new_address
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xf62513fd with:
             gas gas_remaining - 50 wei
            args address(create.new_address)
        require ext_call.success
}

function sub_f138c409(?) {
    if tx.origin == stor0:
        require ext_code.size(stor2)
        call stor2.0x4ae9ec30 with:
             gas gas_remaining - 50 wei
            args Array(len=arg1.length, data=arg1[all])
        require ext_call.success
        create contract with 0 wei
                        code: code.data[7624 len 1747], Array(len=arg2.length + 192, data=arg2.length, arg2[all], arg6.length, arg6[all]), arg3, arg4, arg5
        require create.new_address
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6f9fcd4 with:
             gas gas_remaining - 50 wei
            args address(create.new_address)
        require ext_call.success
}

function sub_fd279b13(?) {
    if stor0 == tx.origin:
        require ext_code.size(stor2)
        call stor2.0x4ae9ec30 with:
             gas gas_remaining - 50 wei
            args Array(len=arg1.length, data=arg1[all])
        require ext_call.success
        create contract with 0 wei
                        code: code.data[9371 len 1825], Array(len=arg2.length + arg3.length + 160, data=arg2.length, arg2[all], arg3.length, arg3[all], arg4.length, arg4[all]), arg2.length + 128
        require create.new_address
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9f8f60f3 with:
             gas gas_remaining - 50 wei
            args address(create.new_address)
        require ext_call.success
}

function sub_1953dc73(?) {
    if stor0 != tx.origin:
        return 0
    create contract with 0 wei
                    code: code.data[2050 len 2219], 32, arg2.length, arg2[all]
    require create.new_address
    create contract with 0 wei
                    code: code.data[4269 len 1825], Array(len=arg3.length + arg4.length + 160, data=arg3.length, arg3[all], arg4.length, arg4[all], arg5.length, arg5[all]), arg3.length + 128
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x9f8f60f3 with:
         gas gas_remaining - 50 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x2bffc7ed with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all]), address(create.new_address)
    require ext_call.success
    return address(create.new_address)
}



}
