contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_c8d0fd23;

function owner() {
    return owner
}

function sub_c8d0fd23(?) {
    require calldata.size - 4 >= 32
    return sub_c8d0fd23[address(arg1)].field_256, 
           sub_c8d0fd23[address(arg1)].field_512,
           sub_c8d0fd23[address(arg1)].field_1024,
           sub_c8d0fd23[address(arg1)].field_1280,
           sub_c8d0fd23[address(arg1)].field_768
}

function sub_d875ef30(?) {
    require calldata.size - 4 >= 64
    return bool(sub_c8d0fd23[address(arg1)][6][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function sub_10668fc8(?) {
    require calldata.size - 4 >= 32
    if sub_c8d0fd23[address(arg1)].field_1280 > 0:
        return 1
    else:
        return 0
}

function sub_3813b091(?) {
    require calldata.size - 4 >= 64
    require sub_c8d0fd23[address(arg1)].field_512 + 1
    if sha3(block.timestamp, block.difficulty, arg2) % sub_c8d0fd23[address(arg1)].field_512 + 1 <= sub_c8d0fd23[address(arg1)].field_256:
        return sub_c8d0fd23[address(arg1)].field_256
    return (sha3(block.timestamp, block.difficulty, arg2) % sub_c8d0fd23[address(arg1)].field_512 + 1)
}

function sub_34207926(?) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract creator can call this method'
    if sub_c8d0fd23[address(arg1)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The airDrop activity is in progress'
    sub_c8d0fd23[address(arg1)].field_0 = arg3
    sub_c8d0fd23[address(arg1)].field_8 = 0
    sub_c8d0fd23[address(arg1)].field_256 = arg4
    sub_c8d0fd23[address(arg1)].field_288 = 0
    sub_c8d0fd23[address(arg1)].field_512 = arg5
    sub_c8d0fd23[address(arg1)].field_544 = 0
    sub_c8d0fd23[address(arg1)].field_768 = arg2
    sub_c8d0fd23[address(arg1)].field_1024 = arg6
    sub_c8d0fd23[address(arg1)].field_1280 = arg6
}

function sub_3d411567(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract creator can call this method'
    if sub_c8d0fd23[address(arg1)].field_1280 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The airDrop activity not start or is ended'
    if sub_c8d0fd23[address(arg1)][6][address(arg2)].field_0:
        revert with 0, 'The addres has already touched'
    sub_c8d0fd23[address(arg1)][6][address(arg2)].field_0 = 1
    if arg3 <= sub_c8d0fd23[address(arg1)].field_1280:
        sub_c8d0fd23[address(arg1)].field_1280 -= arg3
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_c8d0fd23[address(arg1)].field_768, address(arg2), arg3 * 10^sub_c8d0fd23[address(arg1)].field_0
    else:
        sub_c8d0fd23[address(arg1)].field_1280 = 0
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_c8d0fd23[address(arg1)].field_768, address(arg2), sub_c8d0fd23[address(arg1)].field_1280 * 10^sub_c8d0fd23[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
